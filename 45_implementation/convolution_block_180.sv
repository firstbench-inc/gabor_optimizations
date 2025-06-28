
module convolution_block_180 #(
  parameter  coeff_int_mult1 = 2,
  parameter  coeff_dec_mult1 = 15,
  parameter  coeff_int_mult2 = 2,
  parameter  coeff_dec_mult2 = 15,
  parameter  coeff_int_mult3 = 2,
  parameter  coeff_dec_mult3 = 15,
  
  parameter  pixel_int_width = 9,
  parameter  pixel_dec_width = 0,
  parameter  round = 1,
  parameter  col_adder_width = 22,
  parameter  result_add_width = 26,
  parameter  BRAM_width = 516,
  parameter  BRAM_height = 266256,
  parameter  kernel_size = 5
)
(
    input logic [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
    input logic [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
    input logic [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
    
    input logic signed [pixel_int_width + pixel_dec_width - 1:0] pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8, pixel9,
                 pixel10, pixel11, pixel12, pixel13, pixel14, pixel15, pixel16, pixel17,
                 pixel18, pixel19, pixel20, pixel21, pixel22, pixel23, pixel24, pixel25,

    output logic [(coeff_int_mult1 + coeff_dec_mult1 + pixel_int_width + pixel_dec_width -1):0] result1,
    output logic [(coeff_int_mult2 + coeff_dec_mult2 + pixel_int_width + pixel_dec_width -1):0] result2,
    output logic [(coeff_int_mult3 + coeff_dec_mult3 + pixel_int_width + pixel_dec_width -1):0] result3
    );

    // Clustered multiplications using unique coefficients
    fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1)
        M_cluster0 (.ina(coeff1), .inb(pixel1 + pixel5 + pixel6 + pixel10 + pixel11 + pixel15 + pixel16 + pixel20 + pixel21 + pixel25 ), .out(result1));

    fxp_mul #(coeff_int_mult2, coeff_dec_mult2, pixel_int_width, pixel_dec_width, 1)
        M_cluster1 (.ina(coeff2), .inb(pixel2 + pixel4 + pixel7 + pixel9 + pixel12 + pixel14 + pixel17 + pixel19 + pixel22 + pixel24), .out(result2));

    fxp_mul #(coeff_int_mult3, coeff_dec_mult3, pixel_int_width, pixel_dec_width, 1)
        M_cluster2 (.ina(coeff3), .inb(pixel3 + pixel8 + pixel13 + pixel18 + pixel23), .out(result3));

          
endmodule

