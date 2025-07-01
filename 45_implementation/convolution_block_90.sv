
module convolution_block_90 #(
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
  parameter  sum_width = 12,
  parameter  kernel_size = 5
)
(
  input logic signed [(coeff_int_mult1 - 1 + coeff_dec_mult1):0] coeff1,  // -8262
  input logic signed [(coeff_int_mult2 - 1 + coeff_dec_mult2):0] coeff2,  //  9392
  input logic signed [(coeff_int_mult3 - 1 + coeff_dec_mult3):0] coeff3,  // 31444
  input logic signed [(coeff_int_mult4 - 1 + coeff_dec_mult4):0] coeff4,  // 47591
  input logic signed [(coeff_int_mult5 - 1 + coeff_dec_mult5):0] coeff5,  // 62131

  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel1,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel2,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel3,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel4,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel5,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel6,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel7,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel8,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel9,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel10,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel11,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel12,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel13,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel14,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel15,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel16,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel17,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel18,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel19,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel20,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel21,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel22,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel23,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel24,
  input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel25,

 output logic    [(coeff_int_mult1 + coeff_dec_mult1 + sum_width -1):0]  result1,
  output logic    [(coeff_int_mult2 + coeff_dec_mult2 + sum_width -1):0]  result2,
  output logic    [(coeff_int_mult3 + coeff_dec_mult3 + sum_width -1):0]  result3,


  output logic    [(coeff_int_mult4 + coeff_dec_mult4 + sum_width -1):0]  result4,
  output logic    [(coeff_int_mult5 + coeff_dec_mult5 + sum_width -1):0]  result5
);
logic [sum_width - 1:0] group1_sum, group2_sum, group3_sum, group4_sum, group5_sum;
assign group1_sum = pixel1 + pixel2 + pixel3 + pixel23 + pixel24 + pixel25; // -8262
assign group2_sum = pixel4 + pixel5 + pixel21 + pixel22; // 9392
assign group3_sum = pixel6 + pixel7 + pixel19 + pixel20; // 31444
assign group4_sum = pixel8 + pixel9 + pixel17 + pixel18; // 47591
assign group5_sum = pixel10 + pixel11 + pixel12 + pixel13 + pixel14 + pixel15 + pixel16; // 62131
  // Result wires
    // Level 1: coeff1 = -8262
 
fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1)
    M1 (.ina(coeff1), .inb(group1_sum), .out(result1));

fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1)
    M2 (.ina(coeff2), .inb(group2_sum), .out(result2));

fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1)
    M3 (.ina(coeff3), .inb(group3_sum), .out(result3));

fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1)
    M4 (.ina(coeff4), .inb(group4_sum), .out(result4));

fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1)
    M5 (.ina(coeff5), .inb(group5_sum), .out(result5));
endmodule

