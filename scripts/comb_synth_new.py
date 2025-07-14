"""
Author: Bhargav D V, Research Scholar, IIITB, under guidance of Prof. Madhav Rao. 
This script is used to generate area, delay, power metrics for given combinational design  for nangate 45nm technology
Status=checked
"""



#import packages
import re
import os
#import packages

#---------------------------------------declare global variables here--------------------------------
#this holds path to liberty file
LIBERTY_FILE='/home/sharan_math/gabor/NANGATE_45nm_TT/NANGATE_45nm_TT.lib'
LIBERTY_FILE1='/home/sharan_math/gabor/NANGATE_45nm_TT/NANGATE_45nm_TT.lib'
#LIBERTY_FILE='/home/bhargavdv/Documents/Projects/Synthesizer/custom_library_130nm.lib'

#this holds name of design to be synthesized
DESIGN='/home/sharan_math/gabor/Design/new_design/conv.sv'

#this holds path to opensta root folder
OPENSTA='/home/sharan_math/OpenSTA'

#this is used to either flatten netlist or maintain modularity
FLATTEN='#'

MODULE=''

#additional parameter
EVOLUTION=''
#this holds yosys TCL script template
YOSYS_SCRIPT="""
#---------------- yosys commands -------------------
#import yosys environment
yosys -import

#read verilog design file
read_verilog ../{}/{}.v
#read_verilog ../adderCells/adderModules.v




#read liberty file for required technology
read_liberty -lib {}

#top level module name
hierarchy -check -top {}
{}flatten

#proc
yosys "proc"

#technology mapping
techmap
extract_fa
techmap -map ../lib/cells_adder.v
#optimize 
opt

#Extract process blocks
yosys "proc"


#Identify and extract FSM
fsm


#Optimize the design
opt
memory

#ABC tool mapping
dfflibmap -liberty {}
abc -liberty {}

#clean the unused cells
clean

#write netlist file
write_verilog -noattr ../{}/{}_netlist.v

#store the area result in a file
tee -q -o ../{}/{}_result.txt stat -liberty {}






#exit
exit


#---------------- yosys commands -------------------

""".format(EVOLUTION,DESIGN,LIBERTY_FILE,DESIGN,FLATTEN,LIBERTY_FILE,LIBERTY_FILE,EVOLUTION,DESIGN,
           EVOLUTION,DESIGN,LIBERTY_FILE) 
    
OPENSTA_SCRIPT="""
#----------------- opensta commands ----------------------
#----------estimating power in opensta-----------
#import the library file
read_liberty {}

#read the design file
read_verilog ../{}/{}_netlist.v



#identify the top module name
link_design {}

create_clock -period 10 -name clock [get_ports clock]
#output load
set_load -pin_load 6.80092 [lsearch -inline -all -not -exact [all_outputs] [get_ports clock]]

set_driving_cell -lib_cell BUF_X1 [lsearch -inline -all -not -exact [all_inputs] [get_ports clock]]

#switching factor for truly random data
set_power_activity -input_ports [lsearch -inline -all -not -exact [all_inputs] [get_ports clock]] -activity 0.25


#input output delay constraint
set_input_delay 0 -clock clock [lsearch -inline -all -not -exact [all_inputs] [get_ports clock]]
set_output_delay 0 -clock clock [lsearch -inline -all -not -exact [all_outputs] [get_ports clock]]

#estimate power
report_power >> ../{}/{}_result.txt

#----------estimating power in opensta-----------


#----------------estimating critical path delay -------------------


report_checks -path_delay max -path_group {{clock}} >> ../{}/{}_result.txt
#----------------estimating critical path delay -------------------

#exit
exit

#----------------- opensta commands ----------------------
""".format(LIBERTY_FILE,EVOLUTION,DESIGN,MODULE,EVOLUTION,DESIGN,EVOLUTION,DESIGN)
#---------------------------------------declare global variables here--------------------------------



#This function is used to produce dummy sequential module for given combinational design. This is because OpenSTA requires path  between two FFs to compute delay. Then, we subtract delay
#of the FFs and compute combinational circuit delay for maximum slack obtained. Default clock period used is 100ns
def generateSequentialModule():
    print('Generating dummy sequential module file....')
    #open input verilog file in read mode
    input_verilog_file=open('../{}/'.format(EVOLUTION)+DESIGN+'.v',mode='r',encoding='utf-8')
    verilog_code=input_verilog_file.read()
    input_verilog_file.close()

    #open sequential dummy module file for delay
    sequential_file=open('../{}/'.format(EVOLUTION)+DESIGN+'_sequential.v',mode='w',encoding='utf-8')

    # Find the module definition in the Verilog code
    module_pattern = re.compile(r'module\s+' + DESIGN + r'\s*\((.*?)\);', re.DOTALL)
    module_match = module_pattern.search(verilog_code)

    #variables 
    input_dict={}
    output_dict={}
    

    #if module declaration is top module then proceed
    if(module_match):
        module_content = module_match.group(1)
        # Regular expression pattern to extract width and variables if line starts with "input" or output

        #pattern1 for width mentioned pattern2 is for width 1
        pattern1 = r'^\s*(input|output)\s*\[(\d+):(\d+)\]\s*([\w\s,]+)'
        pattern2 = r'^\s*(input|output)\s*(?:\[(\d+):(\d+)\])?\s*([\w\s,]+)'
        #go through each line of module content to search for ports and widths information
        for line in module_content.split('\n'):

            #pattern1 processing code
            match = re.match(pattern1, line)
            if match:
                #extract port type and variables
                port_type = match.group(1)
                width_start = int(match.group(2))
                width_end = int(match.group(3))
                width = width_start - width_end + 1
                variables = [var.strip() for var in match.group(4).split(',')]

                #iterate through each variable and store related width and type
                for variable in variables:
                    #check if variable is not empty as we get it in regular expression processing
                    if(variable!=''):
                        if(port_type=='input'):
                            input_dict[variable]=width
                            
                        else:
                            output_dict[variable]=width


            #pattern2 processing code
            match = re.match(pattern2, line)
            if match:
                port_type = match.group(1)
                width = 1  # Default width is 1
                if match.group(2) is not None and match.group(3) is not None:
                    width_start = int(match.group(2))
                    width_end = int(match.group(3))
                    width = width_start - width_end + 1
                variables = [var.strip() for var in match.group(4).split(',')]
                #iterate through each variable and store related width and type
                for variable in variables:
                    #check if variable is not empty as we get it in regular expression processing
                    if(variable!=''):
                        if(port_type=='input'):
                            input_dict[variable]=width
                            
                        else:
                            output_dict[variable]=width

    #first copy down original code 
    verilog_code = verilog_code.replace("module {}(".format(DESIGN), "module sub_{}(".format(DESIGN))
    sequential_file.write('//original design\n')
    sequential_file.write(verilog_code)
    sequential_file.write('\n\n')


    sequential_file.write('module {}_sequential(\ninput clk,\n'.format(DESIGN))
    code=''
    #iterate and provide input and output variables
    for reg_var in input_dict.keys():
        code=code+'input [{}:0]{},\n'.format(str(input_dict[reg_var]-1),reg_var)
        #sequential_file.write(code)

    for wire_var in output_dict.keys():
        code=code+'output reg[{}:0]{}_reg,\n'.format(str(output_dict[wire_var]-1),wire_var)
        #sequential_file.write(code)
    code=code[:-2]
    sequential_file.write(code)
    sequential_file.write('\n);\n')

    #declare reg and wire for all inputs and outputs for always block
    for reg_var in input_dict.keys():
        code='reg [{}:0]{}_reg;\n'.format(str(input_dict[reg_var]-1),reg_var)
        sequential_file.write(code)

    for wire_var in output_dict.keys():
        code='wire [{}:0]{};\n'.format(str(output_dict[wire_var]-1),wire_var)
        sequential_file.write(code)

    
    #always block
    sequential_file.write('always@(posedge clk)\nbegin\n')
    for reg_var in input_dict.keys():
        code='{}_reg<={};\n'.format(reg_var,reg_var)
        sequential_file.write(code)

    for wire_var in output_dict.keys():
        code='{}_reg<={};\n'.format(wire_var,wire_var)
        sequential_file.write(code)

    sequential_file.write('end\n')

    #instantiate module
    sequential_file.write('sub_{} uut_design('.format(DESIGN))
    code=''
    for reg_var in input_dict.keys():
        code=code+'{}_reg,'.format(reg_var)
       

    for wire_var in output_dict.keys():
        code=code+'{},'.format(wire_var)
        
    
    #remove last ,
    code=code[:-1]
    sequential_file.write(code)

    sequential_file.write(');\nendmodule')
    sequential_file.close()


#This function generates TCL scripts for yosys and OpenSTA to evaluate area, delay and power. This also executes scripts accordingly
def runTclScripts():
    print('Generating and running TCL scripts of yosys and OpenSTA.....')
    #yosys script
    output_dir1 = f'/home/sharan_math/gabor/new/{EVOLUTION}/{INSTANCE}'
    print("out dir",output_dir1)
    os.makedirs(output_dir1, exist_ok=True)
    yosys_file=open('/home/sharan_math/gabor/new/{}/yosys_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)),mode='w',encoding='utf-8')
    yosys_file.write(YOSYS_SCRIPT)
    yosys_file.close()

    

    #opensta script
    print('Generating opensta script.....')
    output_dir = f'../{EVOLUTION}'
    os.makedirs(output_dir, exist_ok=True)
    opensta_file=open('/home/sharan_math/gabor/new/{}/opensta_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)),mode='w',encoding='utf-8')
    opensta_file.write(OPENSTA_SCRIPT)
    opensta_file.close()

    #executing scripts
    print('executing yosys script')
    status=os.system('yosys -c /home/sharan_math/gabor/new/{}/yosys_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)))
    #os.system('yosys -c ../{}/yosys_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)))
    print('executing opensta script')
    status=os.system('sta /home/sharan_math/gabor/new/{}/opensta_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)))
    #os.system('sta ../{}/opensta_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)))
        
    print('Done generating report')


#This function is used to extract report area, delay, power values from report generated by yosys and OpenSTA.
def extractReports():
    print('Extracting results.......')
    report_file=open('/home/sharan_math/gabor/new/{}/conv_result.txt'.format(EVOLUTION),mode='r')
    
    report=report_file.read()

    report_file.close()
    # Extract chip area
    #so if verilog code contains multiple modules then top module is taken otherwise module is taken in report for chip area value
    matches = re.findall(r"Chip area for (top module|module) '\\{}': (\d+\.\d+)".format(MODULE), report)
    if matches:
        # Extract the area value from the last match
        chip_area = float(matches[-1][1])
    #chip_area = float(area_match.group(2)) if area_match else None

    # Extract total power
    #power_match = re.search(r"Combinational\s+(\d+\.\d+e-\d+)\s+(\d+\.\d+e-\d+)\s+(\d+\.\d+e-\d+)\s+(\d+\.\d+e-\d+)", report)
    #print(power_match)
    #total_power=float(power_match.group(3))
    # Find the power table
    # Find the power table
    combinational_power_match = re.search(r"Total\s+\S+\s+\S+\s+\S+\s+(\S+)\s+100\.0%", report)
    total_power = float(combinational_power_match.group(1)) if combinational_power_match else None
    #total_power = sum(float(group) for group in power_match.groups()) if power_match else None

    # Extract data arrival time
    arrival_time_match = re.search(r"(\d+\.\d+)\s+data arrival time", report)
    data_arrival_time = float(arrival_time_match.group(1)) if arrival_time_match else 0


    # Find the delay table
    delay_table_match = re.search(r"Delay\s+Time\s+Description\n-+\n(.+?)\n-+", report, re.DOTALL)
    if not delay_table_match:
        return None

    delay_table = delay_table_match.group(1)
    
    # Extract first non-zero delay
    delay_values = re.findall(r"(\d+\.\d+)", delay_table)
    fourth_row_first_column = float(delay_values[6]) if delay_values else None
    
    
    print('------{}-------'.format(DESIGN))
    if(FLATTEN==''):
        print('Flattened netlist..')
    else:
        print('Not flattened netlist.....')
    print('area={} um^2, power={} W, delay={} ns'.format(str(chip_area),str(total_power),str(data_arrival_time)))
    return [chip_area,data_arrival_time-fourth_row_first_column,total_power]


#This is function is used to remove TCL scripts and netlist generated temporarily for evaluating parameters.
def deleteFiles():
    print('Deleting files.....')
    os.system('rm ../{}/yosys_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)))
    os.system('rm ../{}/opensta_script_{}.tcl'.format(EVOLUTION,str(INSTANCE)))
    os.system('rm ../{}/{}_sequential.v'.format(EVOLUTION,DESIGN))
    os.system('rm ../{}/{}_result.txt'.format(EVOLUTION,DESIGN))
    os.system('rm ../{}/{}_netlist.v'.format(EVOLUTION,DESIGN))
    os.system('rm ../{}/{}_sequential_netlist.v'.format(EVOLUTION,DESIGN))


#This is main function to execute framework
def runSynthesis(design,evolutionPath,instance,module):
    print('============COMBINATIONAL SYNTHESIZER==============')
    global DESIGN
    global EVOLUTION
    global OPENSTA_SCRIPT
    global YOSYS_SCRIPT
    global INSTANCE
    global MODULE
    


    DESIGN=design
    EVOLUTION=evolutionPath
    INSTANCE=instance
    MODULE=module
    
    YOSYS_SCRIPT="""
#---------------- yosys commands -------------------
yosys -import

# Read SystemVerilog design files
read_verilog -sv /home/sharan_math/gabor/Design/new_design/conv.sv


# Read liberty file
read_liberty -lib /home/sharan_math/gabor/NANGATE_45nm_TT/NANGATE_45nm_TT.lib

# Set top module
hierarchy -check -top conv
flatten

# Process and map
yosys "proc"
techmap
extract_fa
techmap -map /home/sharan_math/gabor/NANGATE_45nm_TT/cells_adder.v
opt

yosys "proc"
fsm
opt
memory

# ABC mapping
dfflibmap -liberty /home/sharan_math/gabor/NANGATE_45nm_TT/NANGATE_45nm_TT.lib
abc -liberty /home/sharan_math/gabor/NANGATE_45nm_TT/NANGATE_45nm_TT.lib

# Clean and write results
clean
write_verilog -noattr /home/sharan_math/gabor/evolution/conv_netlist.v
tee -q -o /home/sharan_math/gabor/new/evolution/new_config1/config1/conv_result.txt stat -liberty /home/sharan_math/gabor/NANGATE_45nm_TT/NANGATE_45nm_TT.lib

exit

#---------------- yosys commands -------------------

"""
    
    OPENSTA_SCRIPT="""
#----------------- opensta commands ----------------------
#----------estimating power in opensta-----------
#import the library file
read_liberty /home/sharan_math/gabor/NANGATE_45nm_TT/NANGATE_45nm_TT.lib
read_verilog /home/sharan_math/gabor/evolution/conv_netlist.v






#identify the top module name
link_design conv

create_clock -period 10 -name clock [get_ports clk]
#output load
set_load -pin_load 6.80092 [lsearch -inline -all -not -exact [all_outputs] [get_ports clk]]

set_driving_cell -lib_cell BUF_X1 [lsearch -inline -all -not -exact [all_inputs] [get_ports clk]]

#switching factor for truly random data
set_power_activity -input_ports [lsearch -inline -all -not -exact [all_inputs] [get_ports clk]] -activity 0.25


#input output delay constraint
set_input_delay 0 -clock clock [lsearch -inline -all -not -exact [all_inputs] [get_ports clk]]
set_output_delay 0 -clock clock [lsearch -inline -all -not -exact [all_outputs] [get_ports clk]]

#estimate power
report_power >> /home/sharan_math/gabor/new/evolution/new_config1/config1/conv_result.txt

#----------estimating power in opensta-----------


#----------------estimating critical path delay -------------------


report_checks -path_delay max -path_group {{clock}} >> /home/sharan_math/gabor/new/evolution/new_config1/config1/conv_result.txt
#----------------estimating critical path delay -------------------

#exit
exit

#----------------- opensta commands ----------------------
"""
    
    
    #generateSequentialModule()
    runTclScripts()
    [area,delay,power]=extractReports()
    # deleteFiles()
    return [area,delay,power]
