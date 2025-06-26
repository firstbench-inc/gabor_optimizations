module ram#(
  parameter  BRAM_width = 516,
  parameter  BRAM_height = 266256,
  parameter  kernel_size = 5


  )
  (
    input logic clk,
    input logic rst,
    output logic data_ready,
    output logic [18:0] pixel_addr,
    );
    logic [9:0] column_number;
    logic [18:0] row_number;


    typedef enum logic [1:0]{
      initializing = 2'b00,
      address = 2'b01,
      read = 2'b10
      }state_t;
      state_t state, next_state;
      
      alway_ff @(posedge clk or negedge rst) begin
        if(!rst) begin
          state <= initializing;
        end else begin
          state <= next_state;
        end
      end

      alway_comb begin
        state = next_state;
        case(state)
          initializing: begin
            // Initialization logic here
            data_ready = 0;
            pixel_addr = 0; 
            column_number = 0;
            next_state = address;
          end
          address: begin
            pixel_addr      <= (row_number*516 + column_number);  
            data_ready      <= 0;
            state           <= read;
          end            
          read: begin 
           column_number   <= (column_number == (image_width-1))? 0 : column_number + 1;
           row_number      <= (column_number == (image_width-1))? row_number + 1 : row_number;
           data_ready      <= 1;
           state           <= (row_number == (image_width))? initializing : address;
          end
        default: state = initializing;
      endcase
    end

 endmodule



