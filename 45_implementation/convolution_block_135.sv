
module convolution_block_135_clustered #(include "45conv_param.svh")
(
  input logic [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
  input logic [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
  input logic [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
  input logic [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
  input logic [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,

  input logic pixel1, pixel2, pixel3, pixel4, pixel5,
               pixel6, pixel7, pixel8, pixel9, pixel10,
               pixel11, pixel12, pixel13, pixel14, pixel15,
               pixel16, pixel17, pixel18, pixel19, pixel20,
               pixel21, pixel22, pixel23, pixel24, pixel25,

  output logic [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0] result1,
  output logic [(coeff1_int_mult2 + coeff1_dec_mult2 + pixel_int_width + pixel_dec_width -1):0] result2,
  output logic [(coeff1_int_mult3 + coeff1_dec_mult3 + pixel_int_width + pixel_dec_width -1):0] result3,
  output logic [(coeff1_int_mult4 + coeff1_dec_mult4 + pixel_int_width + pixel_dec_width -1):0] result4,
  output logic [(coeff1_int_mult5 + coeff1_dec_mult5 + pixel_int_width + pixel_dec_width -1):0] result5
);

  logic [pixel_int_width + pixel_dec_width - 1 : 0] group1_sum, group2_sum, group3_sum, group4_sum, group5_sum;

  // Grouped pixel additions based on common coefficients (example for 135° clustered kernel)
  assign group1_sum = pixel1 + pixel3 + pixel7 + pixel9 + pixel17 + pixel19 + pixel23 + pixel25;
  assign group2_sum = pixel2 + pixel4 + pixel8 + pixel10 + pixel16 + pixel18 + pixel22 + pixel24;
  assign group3_sum = pixel5 + pixel11 + pixel15 + pixel21;
  assign group4_sum = pixel6 + pixel12 + pixel14 + pixel20;
  assign group5_sum = pixel13;

  // Multipliers using grouped pixels and corresponding coefficients
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M0 (.ina(coeff1), .inb(group1_sum), .out(result1));
  fxp_mul #(coeff_int_mult2, coeff_dec_mult2, pixel_int_width, pixel_dec_width, 1) M1 (.ina(coeff2), .inb(group2_sum), .out(result2));
  fxp_mul #(coeff_int_mult3, coeff_dec_mult3, pixel_int_width, pixel_dec_width, 1) M2 (.ina(coeff3), .inb(group3_sum), .out(result3));
  fxp_mul #(coeff_int_mult4, coeff_dec_mult4, pixel_int_width, pixel_dec_width, 1) M3 (.ina(coeff4), .inb(group4_sum), .out(result4));
  fxp_mul #(coeff_int_mult5, coeff_dec_mult5, pixel_int_width, pixel_dec_width, 1) M4 (.ina(coeff5), .inb(group5_sum), .out(result5));

endmodule
