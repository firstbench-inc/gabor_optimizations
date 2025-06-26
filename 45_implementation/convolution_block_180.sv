
module convolution_block_180 #(`include "45conv_param.svh")
(
    input logic [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
    input logic [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
    input logic [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
    
    input logic pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8, pixel9,
                 pixel10, pixel11, pixel12, pixel13, pixel14, pixel15, pixel16, pixel17,
                 pixel18, pixel19, pixel20, pixel21, pixel22, pixel23, pixel24, pixel25,

    output logic [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0] result1,
    output logic [(coeff1_int_mult2 + coeff1_dec_mult2 + pixel_int_width + pixel_dec_width -1):0] result2,
    output logic [(coeff1_int_mult3 + coeff1_dec_mult3 + pixel_int_width + pixel_dec_width -1):0] result3,
    );

    // Clustered multiplications using unique coefficients
    fxp_mul #(coeff_int_mult1, coeff_dec_mult1, pixel_int_width, pixel_dec_width, 1)
        M_cluster0 (.ina(coeff1), .inb(pixel1 + pixel5 + pixel6 + pixel10 + pixel11 + pixel15 + pixel16 + pixel20 + pixel21 + pixel25 ), .out(result1));

    fxp_mul #(coeff_int_mult2, coeff_dec_mult2, pixel_int_width, pixel_dec_width, 1)
        M_cluster1 (.ina(coeff2), .inb(pixel2 + pixel4 + pixel7 + pixel9 + pixel12 + pixel14 + pixel17 + pixel19 + pixel22 + pixel24), .out(result2));

    fxp_mul #(coeff_int_mult3, coeff_dec_mult3, pixel_int_width, pixel_dec_width, 1)
        M_cluster2 (.ina(coeff3), .inb(pixel3 + pixel8 + pixel13 + pixel18 + pixel23), .out(result3));

          
endmodule

