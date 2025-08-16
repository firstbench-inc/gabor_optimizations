


//normal testbench
module tb_parallel_design;

    // Inputs
    reg clk;
    reg rst;
    

    // Output
    wire [33:0] add_out_45, add_out_90, add_out_135, add_out_180;
    reg [9:0]   pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8,
                 pixel9, pixel10, pixel11, pixel12, pixel13, pixel14, pixel15,
                 pixel16, pixel17, pixel18, pixel19, pixel20, pixel21, pixel22,
                 pixel23, pixel24, pixel25;
    wire [18:0]  image_addr;
    wire        data_ready, overf;
    integer     f1, f2, f3, f4, f5, f6,f11, f12, f13, f14, f15, f16, f21, f22, f23, f24, f25, f26;
    wire [29:0] div_output_45, div_output_90, div_output_135, div_output_180;
    wire [19:0] result;
    reg [9:0]   x;
    reg [18:0]   count;
    reg [7:0] dbg_output_45;
reg [7:0] dbg_output_90;
reg [7:0] dbg_output_135;
reg [7:0] dbg_output_180;

    parameter multmax_45 = 15;
    parameter multmax_90 = 15;  //8,13,12,14,1,11,10,9,7,6,5,15
    parameter multmax_135 = 15;
    parameter multmax_180 = 15;
    parameter   mult1_frac_width1 = 15;
    parameter   mult1_frac_width2 = 15;
    parameter   mult1_frac_width3 = 15;
    parameter   mult1_frac_width4 = 15;
    parameter   mult1_frac_width5 = 15;
    parameter   mult1_frac_width6 = 15;
    parameter   mult1_frac_width7 = 15;
    parameter   mult1_frac_width8 = 15;
    parameter   mult1_frac_width9 = 15;
    parameter   mult1_frac_width10 = 15;
    parameter   mult1_frac_width11 = 15;
    parameter   mult1_frac_width12 = 15;
    parameter   mult1_frac_width13 = 15;

    parameter   mult2_frac_width1 = 2;
    parameter   mult2_frac_width2 = 6;
    parameter   mult2_frac_width3 = 11;
    parameter   mult2_frac_width4 = 4;
    parameter   mult2_frac_width5 = 6;
    parameter   mult2_frac_width6 = 13;
    parameter   mult2_frac_width7 = 5;
    parameter   mult2_frac_width8 =15;
    parameter   mult2_frac_width9 = 1;
    parameter   mult2_frac_width10 = 14;
    parameter   mult2_frac_width11 = 3;
    parameter   mult2_frac_width12 = 5;
    parameter   mult2_frac_width13 = 8;
    
    parameter   mult3_frac_width1 = 15;
    parameter   mult3_frac_width2 = 15;
    parameter   mult3_frac_width3 = 15;
    parameter   mult3_frac_width4 = 15;
    parameter   mult3_frac_width5 = 15;
    parameter   mult3_frac_width6 = 15;
    parameter   mult3_frac_width7 = 15;
    parameter   mult3_frac_width8 = 15;
    parameter   mult3_frac_width9 = 15;
    parameter   mult3_frac_width10 = 15;
    parameter   mult3_frac_width11 = 15;
    parameter   mult3_frac_width12 = 15;
    parameter   mult3_frac_width13 = 15;
    
    parameter   mult4_frac_width1 = 15;
    parameter   mult4_frac_width2 = 15;
    parameter   mult4_frac_width3 = 15;
    parameter   mult4_frac_width4 = 15;
    parameter   mult4_frac_width5 = 15;
    parameter   mult4_frac_width6 = 15;
    parameter   mult4_frac_width7 = 15;
    parameter   mult4_frac_width8 = 15;
    parameter   mult4_frac_width9 = 15;
    parameter   mult4_frac_width10 = 15;
    parameter   mult4_frac_width11 = 15;
    parameter   mult4_frac_width12 = 15;
    parameter   mult4_frac_width13 = 15;

    parameter path1="../evolution/gabor_45/fil_image45";
    parameter path2="../evolution/gabor_45/fil_image90";
    parameter path3="../evolution/gabor_45/fil_image135";
    parameter path4="../evolution/gabor_45/fil_image180";


    // Instantiate the Unit Under Test (UUT)
    conv_unit    Mult( clk,
          rst,
          pixel1,
          pixel2, 
          pixel3,
          pixel4,
          pixel5,
          pixel6,
          pixel7,
          pixel8,
          pixel9,
          pixel10,
          pixel11,
          pixel12,
          pixel13,
          pixel14,
          pixel15,
          pixel16,
          pixel17,
          pixel18,
          pixel19,
          pixel20,
          pixel21,
          pixel22,
          pixel23,
          pixel24,
          pixel25,
          
          image_addr,
          add_out_45,
          add_out_90,
          add_out_135,
          add_out_180,
          data_ready
        );
    // Clock generation
    reg    [7:0]   imagepixel [266255:0];
    //with 3×3, 5×5, or 13×13 filters, you may pad the memory so that edge cases don't need special logic. 516 adds 4 extra pixels per row
    integer i, j;
    reg  [18:0]  image_addr1, image_addr2, image_addr3, image_addr4, image_addr5;
    
    always @ (image_addr)
     begin
        image_addr1     <= image_addr;
        image_addr2     <= image_addr + 516;
        image_addr3     <= image_addr + 1032;
        image_addr4     <= image_addr + 1548;
        image_addr5     <= image_addr + 2064;        
     end 
    initial
    begin
        for (i=0; i<=266256; i=i+1)
            imagepixel[i] = 8'b00000000;
          $readmemb("../dataset/image516.txt", imagepixel); //Assuming name of txt is data.txt
    end  
    
    always @ (negedge clk)
    begin
     pixel1 = {2'b00, imagepixel[image_addr1+0]};
     pixel2 = {2'b00, imagepixel[image_addr1+1]};
     pixel3 = {2'b00, imagepixel[image_addr1+2]};
     pixel4 = {2'b00, imagepixel[image_addr1+3]};
     pixel5 = {2'b00, imagepixel[image_addr1+4]};
     pixel6 = {2'b00, imagepixel[image_addr2]};
     pixel7 = {2'b00, imagepixel[image_addr2+1]};
     pixel8 = {2'b00, imagepixel[image_addr2+2]};
     pixel9 = {2'b00, imagepixel[image_addr2+3]};
     pixel10 = {2'b00, imagepixel[image_addr2+4]};
     pixel11 = {2'b00, imagepixel[image_addr3]};
     pixel12 = {2'b00, imagepixel[image_addr3+1]};
     pixel13 = {2'b00, imagepixel[image_addr3+2]};
     pixel14 = {2'b00, imagepixel[image_addr3+3]};
     pixel15 = {2'b00, imagepixel[image_addr3+4]};
     pixel16 = {2'b00, imagepixel[image_addr4]};
     pixel17 = {2'b00, imagepixel[image_addr4+1]};
     pixel18 = {2'b00, imagepixel[image_addr4+2]};
     pixel19 = {2'b00, imagepixel[image_addr4+3]};
     pixel20 = {2'b00, imagepixel[image_addr4+4]};
     pixel21 = {2'b00, imagepixel[image_addr5]};
     pixel22 = {2'b00, imagepixel[image_addr5+1]};
     pixel23 = {2'b00, imagepixel[image_addr5+2]};
     pixel24 = {2'b00, imagepixel[image_addr5+3]};
     pixel25 = {2'b00, imagepixel[image_addr5+4]};
    end
    
    always #5 clk = ~clk; // 50 MHz clock
    
    assign div_output_45 = add_out_45>>multmax_45;
    assign div_output_90 = add_out_90>>15;
    assign div_output_135 = add_out_135>>multmax_135;
    assign div_output_180 = add_out_180>>multmax_180;
    
    initial
     begin
        argument=$value$plusargs("filename1=%s", filename1);
        argument=$value$plusargs("filename2=%s", filename2);
        argument=$value$plusargs("filename3=%s", filename3);
        argument=$value$plusargs("filename4=%s", filename4);
        
        
        
        f1 = $fopen(filename1,"w");
        f2 = $fopen(filename2,"w");
        f3 = $fopen(filename3,"w");
        f4 = $fopen(filename4,"w");

        count = 0;
        clk = 0;
        // Reset the system
        rst = 1;
        #100;
        rst = 0;
        #20;
        $display("Memory contents:");
            for ( j = 0; j < 12000; j = j + 1) 
            begin
                $fwrite(f11, "%b\n", imagepixel[j]);
            end
        x = 5;
        rst = 1;
        #20;
         x = -5;
        rst = 0;
     end
        
   always   @ (posedge data_ready)
    begin
    #5
        count = count + 1;
        dbg_output_45  = div_output_45[7:0];
    dbg_output_90  = div_output_90[7:0];
    dbg_output_135 = div_output_135[7:0];
    dbg_output_180 = div_output_180[7:0];
    
        $fwrite(f1, "%b\n", div_output_45[7:0]);
        $fwrite(f2, "%b\n", div_output_90[7:0]);
        $fwrite(f3, "%b\n", div_output_135[7:0]);
        $fwrite(f4, "%b\n", div_output_180[7:0]);

   if(count==262144)
        begin
        $fclose(f1);
        $fclose(f2);
        $fclose(f3);
        $fclose(f4);

        
        $finish;
        end
    end
    // Allow simulation time
    initial begin
//        #75807559;
   //  $dumpfile("tb_parallel_design.vcd");
    $dumpvars(0, tb_parallel_design); // 0 means top-level module (tb_parallel_design)

    end



endmodule
