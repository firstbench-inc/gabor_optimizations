module convolution_block #(`include 45conv_param.svh)
(
  input logic [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
  input logic [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
  input logic[(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
  input logic [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
  input logic [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
  input logic [(coeff_int_mult6 + coeff_dec_mult6 -1):0] coeff6,
  input logic[(coeff_int_mult7 + coeff_dec_mult7 -1):0] coeff7,
  input logic [(coeff_int_mult8 + coeff_dec_mult8 -1):0] coeff8,

  input logic pixel1,pixel2,pixel3,pixel4,pixel5,pixel6,pixel7,pixel8,pixel9,pixel10,pixel11,pixel12,pixel13,pixel14,pixel15,pixel16,pixel17,pixel18,pixel19,pixel20,pixel21,pixel22,pixel23,pixel24,pixel25,
  //output logic add_out_45_3,add_out_45_5
  output logic    [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0]  result3_1,
  output logic    [(coeff1_int_mult2 + coeff1_dec_mult2 + pixel_int_width + pixel_dec_width -1):0]  result3_2,
  output logic    [(coeff1_int_mult3 + coeff1_dec_mult3 + pixel_int_width + pixel_dec_width -1):0]  result3_3,


  output logic    [(coeff1_int_mult4 + coeff1_dec_mult4 + pixel_int_width + pixel_dec_width -1):0]  result5_1,
  output logic    [(coeff1_int_mult5 + coeff1_dec_mult5 + pixel_int_width + pixel_dec_width -1):0]  result5_2,
  output logic    [(coeff1_int_mult6 + coeff1_dec_mult6 + pixel_int_width + pixel_dec_width -1):0]  result5_3,
  output logic    [(coeff1_int_mult7 + coeff1_dec_mult7 + pixel_int_width + pixel_dec_width -1):0]  result5_4,
  output logic    [(coeff1_int_mult8 + coeff1_dec_mult8 + pixel_int_width + pixel_dec_width -1):0]  result5_5
  );




  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff1),.inb(pixel1+pixel25),.out(result5_1));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff2),.inb(pixel2+pixel24+pixel+pixel6+pixel20)),.out(result5_2);
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff3),.inb(pixel3+pixel23+pixel7+pixel19+pixel11+pixel15),.out(result5_3));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff4),.inb(pixel4+pixel5+pixel21+pixel22+pixel8+pixel16+pixel10+pixel18),.out(result5_4));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff5),.inb(pixel9+pixel13+pixel17),.out(result5_5));

  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff6),.inb(pixel1+pixel25),.out(result3_1));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff7),.inb(pixel1+pixel25),.out(result3_2));
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1) M1(.ina(coeff8),.inb(pixel1+pixel25),.out(result3_3));


  endmodule
