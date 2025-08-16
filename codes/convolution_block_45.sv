module convolution_block_45 #(  
  parameter  coeff_int_mult1 = 2,
  parameter  coeff_dec_mult1 = 15,
  parameter  coeff_int_mult2 = 2,
  parameter  coeff_dec_mult2 = 15,
  parameter  coeff_int_mult3 = 2,
  parameter  coeff_dec_mult3 = 15,
  parameter  coeff_int_mult4 = 2,
  parameter  coeff_dec_mult4 = 15,
  parameter  coeff_int_mult5 = 2,
  parameter  coeff_dec_mult5 = 15,
  
  parameter  pixel_int_width = 9,
  parameter  pixel_dec_width = 0,
  parameter  round = 1,
  parameter  col_adder_width = 22,
  parameter  result_add_width = 26,
  parameter  BRAM_width = 516,
  parameter  BRAM_height = 266256,
  parameter  kernel_size = 5,
  parameter  sum_width = 12
)
(
  input logic [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
  input logic [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
  input logic[(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
  input logic [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
  input logic [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
  

  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel1,pixel2,pixel3,pixel4,pixel5,pixel6,pixel7,pixel8,pixel9,pixel10,pixel11,pixel12,pixel13,pixel14,pixel15,pixel16,pixel17,pixel18,pixel19,pixel20,pixel21,pixel22,pixel23,pixel24,pixel25,
  


  output logic    [(coeff_int_mult1 + coeff_dec_mult1 + sum_width -1):0]  result5_1,
  output logic    [(coeff_int_mult2 + coeff_dec_mult2 + sum_width -1):0]  result5_2,
  output logic    [(coeff_int_mult3 + coeff_dec_mult3 + sum_width -1):0]  result5_3,
  output logic    [(coeff_int_mult4 + coeff_dec_mult4 + sum_width -1):0]  result5_4,
  output logic    [(coeff_int_mult5 + coeff_dec_mult5 + sum_width -1):0]  result5_5
  );
  logic [sum_width - 1:0] sum1, sum2, sum3, sum4, sum5;

  always_comb begin 
     sum1 = pixel1 + pixel25;
     sum2 = pixel2 + pixel24 + pixel6 + pixel20;
     sum3 = pixel3 + pixel23 + pixel7 + pixel19 + pixel11 + pixel15;
     sum4 = pixel4 + pixel5 + pixel21 + pixel22 + pixel8 + pixel16 + pixel10 + pixel18+pixel12+pixel14;
     sum5 = pixel9 + pixel13 + pixel17;
end




  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1) M1(.ina(coeff1),.inb(sum1),.out(result5_1));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1) M2(.ina(coeff2),.inb(sum2),.out(result5_2));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1) M3(.ina(coeff3),.inb(sum3),.out(result5_3));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1) M4(.ina(coeff4),.inb(sum4),.out(result5_4));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1) M5(.ina(coeff5),.inb(sum5),.out(result5_5));

  endmodule

  module fxp_mul # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    //parameter IN_IWB = 8,
   // parameter IN_FWB = 0,
    parameter sum_width = 12,
    parameter ROUND= 1
)(
  input  logic [IN_IWA+IN_FWA-1:0] ina,
    input  logic [sum_width-1:0] inb,
    output logic [IN_IWA+IN_FWA+ sum_width - 1:0] out
);

assign out =  ($signed(ina) * $signed(inb)); 

endmodule


