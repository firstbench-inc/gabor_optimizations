
module convolution_block_90 #(`include "45conv_param.svh")
(
  input logic signed [(coeff_int_mult - 1 + coeff_dec_mult):0] coeff1,  // -8262
  input logic signed [(coeff_int_mult - 1 + coeff_dec_mult):0] coeff2,  //  9392
  input logic signed [(coeff_int_mult - 1 + coeff_dec_mult):0] coeff3,  // 31444
  input logic signed [(coeff_int_mult - 1 + coeff_dec_mult):0] coeff4,  // 47591
  input logic signed [(coeff_int_mult - 1 + coeff_dec_mult):0] coeff5,  // 62131

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

 output logic    [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0]  result1,
  output logic    [(coeff1_int_mult2 + coeff1_dec_mult2 + pixel_int_width + pixel_dec_width -1):0]  result2,
  output logic    [(coeff1_int_mult3 + coeff1_dec_mult3 + pixel_int_width + pixel_dec_width -1):0]  result3,


  output logic    [(coeff1_int_mult4 + coeff1_dec_mult4 + pixel_int_width + pixel_dec_width -1):0]  result4,
  output logic    [(coeff1_int_mult5 + coeff1_dec_mult5 + pixel_int_width + pixel_dec_width -1):0]  result5,
);

  // Result wires
    // Level 1: coeff1 = -8262
  fxp_mul #(coeff_int_mult, coeff_dec_mult, pixel_int_width, pixel_dec_width, 1) M1 (.ina(coeff1), .inb(pixel1 + pixel2 + pixel3 + pixel23 + pixel24 + pixel25), .out(result1));

  // Level 2: coeff2 = 9392
  fxp_mul #(coeff_int_mult, coeff_dec_mult, pixel_int_width, pixel_dec_width, 1) M2 (.ina(coeff2), .inb(pixel4 + pixel5 + pixel21 + pixel22), .out(result2));

  // Level 3: coeff3 = 31444
  fxp_mul #(coeff_int_mult, coeff_dec_mult, pixel_int_width, pixel_dec_width, 1) M3 (.ina(coeff3), .inb(pixel6 + pixel7 + pixel19 + pixel20), .out(result3));

  // Level 4: coeff4 = 47591
  fxp_mul #(coeff_int_mult, coeff_dec_mult, pixel_int_width, pixel_dec_width, 1) M4 (.ina(coeff4), .inb(pixel8 + pixel9 + pixel17 + pixel18), .out(result4));

  // Level 5: coeff5 = 62131
  fxp_mul #(coeff_int_mult, coeff_dec_mult, pixel_int_width, pixel_dec_width, 1) M5 (.in:a(coeff5), .inb(pixel10 + pixel11 + pixel12 + pixel13 + pixel14 + pixel15 + pixel16), .out(result5));

 
endmodule

