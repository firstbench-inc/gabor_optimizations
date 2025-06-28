module tb();

logic clk;
logic rst;
logic [29:0] div_output_45, div_output_90, div_output_135, div_output_180;
integer     f1, f2, f3, f4,f11;
logic [29:0] add_out_45;
logic [9:0]   pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8,
  pixel9, pixel10,pixel11, pixel12, pixel13, pixel14, pixel15,
  pixel16, pixel17, pixel18, pixel19, pixel20, pixel21, pixel22,
  pixel23, pixel24, pixel25;
logic [29:0] add_out_90, add_out_135, add_out_180;
logic data_ready;
logic [18:0] image_BRAM_addr;
logic x;


  logic [19:0] count;

  conv mc(clk, rst, 
    pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8,
    pixel9, pixel10,pixel11, pixel12, pixel13, pixel14, pixel15,
    pixel16, pixel17, pixel18, pixel19, pixel20, pixel21, pixel22,
    pixel23, pixel24, pixel25,
    add_out_45_5, add_out_90, add_out_135, add_out_180,
    data_ready, image_BRAM_addr


    );


  logic    [7:0]   imagepixel [266255:0];
  
  integer i,j;
 logic  [18:0]  image_addr1, image_addr2, image_addr3, image_addr4, image_addr5;
    
    always @ (image_BRAM_addr)
     begin
       //with 3×3, 5×5, or 13×13 filters, you may pad the memory so that edge cases don't need special logic. 516 adds 4 extra pixels per row
        image_addr1     <= image_BRAM_addr;
        image_addr2     <= image_BRAM_addr + 516;
        image_addr3     <= image_BRAM_addr + 1032;
        image_addr4     <= image_BRAM_addr + 1548;
        image_addr5     <= image_BRAM_addr + 2064;        
     end 
    initial
    begin
        for (i=0; i<=266256; i=i+1)
            imagepixel[i] = 8'b00000000;
        $readmemb("/home/sharan_math/gabor/COE_files/image_txt/image516.txt", imagepixel); //Assuming name of txt is data.txt
    end  

    always #5 clk =  ~clk;


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

    
    assign div_output_45 = add_out_45>>15;
    assign div_output_90 = add_out_90>>15;
    assign div_output_135 = add_out_135>>15;
    assign div_output_180 = add_out_180>>15;
    
  initial
  begin
    f1 = $fopen("/home/sharan_math/gabor/iverilog/fil_image45.txt", "w");
    f2 = $fopen("/home/sharan_math/gabor/iverilog/fil_image90.txt", "w");
    f3 = $fopen("/home/sharan_math/gabor/iverilog/fil_image135.txt", "w");
    f4 = $fopen("/home/sharan_math/gabor/iverilog/fil_image180.txt", "w");

     count = 0;
        clk = 0;
        // Reset the system
        rst = 0;
        #100;
        rst = 1;

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
     $dumpfile("tb.vcd");
    $dumpvars(0, tb); // 0 means top-level module (tb_parallel_design)

    end


endmodule
