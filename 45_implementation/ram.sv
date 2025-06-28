module ram #(
  parameter  BRAM_width = 516,
  parameter  BRAM_height = 266256,
  parameter  kernel_size = 5
  

  )
  (
    input logic clk,
    input logic rst,
    output logic data_ready,
    output logic [18:0] pixel_addr
    );
    logic [9:0] column_number;
    logic [18:0] row_number;
    parameter  image_width = 512;

    always @ (posedge clock or posedge reset)
    if (reset)
     begin
         pixel_addr         <= 0;
         row_number         <= 0;
         column_number      <= 0;
         state              <= 0;
     end
    else
     begin 
        case (state)
        0: begin
                pixel_addr      <= 0;
                row_number      <= 0;
                column_number   <= 0;
                state           <= 1;
           end
           
        1: begin
                pixel_addr      <= (row_number*516 + column_number);  
                data_ready      <= 0;
                state           <= 2;      
           end
           
        2: begin
                column_number   <= (column_number == (image_width-1))? 0 : column_number + 1;
                row_number      <= (column_number == (image_width-1))? row_number + 1 : row_number;
                data_ready      <= 1;
                state           <= (row_number == (image_width))? 0 : 1;
           end

           
        default : state     <= 0;     
        endcase 
      end


 endmodule



