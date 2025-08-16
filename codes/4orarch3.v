
//==============================================================================
//
// Company:          IIIT-B
//
// Engineer:         Yash Prasad
//
// Create Date:      16.08.2025 19:04:13
//
// Design Name:      Gabor Filter 
//
// Module Name:      conv_unit
//
// Project Name:     Gabor Filter Optimization 
//
// Target Devices:   
//
// Tool Versions:   
//
// Description:
// This module implements a highly parameterized convolution unit designed for
// image processing applications. It processes a 5x5 pixel window and applies
// four different convolution kernels simultaneously to detect features at
// various orientations (45, 90, 135, and 180 degrees).
//
// The core functionality includes:
//  - Taking a 25-pixel input stream representing a 5x5 kernel window.
//  - Applying four distinct sets of hardcoded coefficients for each orientation.
//  - Performing fixed-point multiplication and accumulation for each kernel.
//  - Outputting the four resulting convolution sums.
//
// The design is structured with dedicated sub-modules for each directional
// convolution ('convolution_block_*') which optimize calculations by grouping
// pixels that share common coefficients before multiplication.
// A BRAM controller is instantiated to generate read addresses for the source
// image pixels.
//
// Parameters allow for extensive customization of data widths (pixel and
// coefficient), BRAM dimensions, and kernel size.
//
// Dependencies:
//  - convolution_block_45.v
//  - convolution_block_90.v
//  - convolution_block_135.v
//  - convolution_block_180.v
//  - fxp_mul.v
//  - BRAM_read_control.v
//
// Revision:
// Revision 1.00 - File Created
// Additional Comments:
//
//==============================================================================
module conv_unit
#(parameter  coeff1_int_mult1 = 2,
  parameter  coeff1_dec_mult1 = 15,
  parameter  coeff1_int_mult2 = 2,
  parameter  coeff1_dec_mult2 = 15,
  parameter  coeff1_int_mult3 = 2,
  parameter  coeff1_dec_mult3 = 15,
  parameter  coeff1_int_mult4 = 2,
  parameter  coeff1_dec_mult4 = 15,
  parameter  coeff1_int_mult5 = 2,
  parameter  coeff1_dec_mult5 = 15,
   
  parameter  coeff2_int_mult1 = 2,
  parameter  coeff2_dec_mult1 = 15,
  parameter  coeff2_int_mult2 = 2,
  parameter  coeff2_dec_mult2 = 15,
  parameter  coeff2_int_mult3 = 2,
  parameter  coeff2_dec_mult3 = 15,
  parameter  coeff2_int_mult4 = 2,
  parameter  coeff2_dec_mult4 = 15,
  parameter  coeff2_int_mult5 = 2,
  parameter  coeff2_dec_mult5 = 15,
   
  parameter  coeff3_int_mult1 = 2,
  parameter  coeff3_dec_mult1 = 15,
  parameter  coeff3_int_mult2 = 2,
  parameter  coeff3_dec_mult2 = 15,
  parameter  coeff3_int_mult3 = 2,
  parameter  coeff3_dec_mult3 = 15,
  parameter  coeff3_int_mult4 = 2,
  parameter  coeff3_dec_mult4 = 15,
  parameter  coeff3_int_mult5 = 2,
  parameter  coeff3_dec_mult5 = 15,
   
  parameter  coeff4_int_mult1 = 2,
  parameter  coeff4_dec_mult1 = 15,
  parameter  coeff4_int_mult2 = 2,
  parameter  coeff4_dec_mult2 = 15,
  parameter  coeff4_int_mult3 = 2,
  parameter  coeff4_dec_mult3 = 15,
 

  
  parameter  pixel_int_width = 9,
  parameter  pixel_dec_width = 0,

  parameter  round = 1,
  parameter  col_adder_width = 22,
  parameter  result_add_width = 34,
  parameter  BRAM_width = 516,
  parameter  BRAM_height = 266256,
  parameter  kernel_size = 5,
  parameter  sum_width = 12
 )
 
 (
    input clock,
    input reset,
    input  [pixel_int_width+pixel_dec_width-1:0]  pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8, pixel9, pixel10, pixel11,
                  pixel12, pixel13, pixel14, pixel15, pixel16, pixel17, pixel18, pixel19, pixel20, pixel21,
                  pixel22, pixel23, pixel24, pixel25,
    output [18:0] image_BRAM_addr,
    output reg  signed [result_add_width-1:0] add_out_45,
    output reg  signed [result_add_width-1:0] add_out_90,
    output reg  signed [result_add_width-1:0] add_out_135,
    output reg  signed [result_add_width-1:0] add_out_180,
    output      data_ready
);

reg   signed [result_add_width-1:0] add_out_45_1, add_out_45_2, add_out_45_3, add_out_45_4, add_out_45_5;

wire signed [30:0] result2temp1, result2temp2,result2temp3,result2temp4,result2temp5,result2temp6,result2temp7,result2temp8,result2temp9,result2temp10,
result2temp11,result2temp12,result2temp13;

wire signed   [(coeff1_int_mult1 + coeff1_dec_mult1 + sum_width -1):0]  result1_1;
wire signed   [(coeff1_int_mult2 + coeff1_dec_mult2 + sum_width -1):0]  result1_2;
wire signed   [(coeff1_int_mult3 + coeff1_dec_mult3 + sum_width -1):0]  result1_3;
wire signed   [(coeff1_int_mult4 + coeff1_dec_mult4 + sum_width -1):0]  result1_4;
wire signed   [(coeff1_int_mult5 + coeff1_dec_mult5 + sum_width -1):0]  result1_5;
/*wire signed   [(coeff1_int_mult14 + coeff1_dec_mult14 + sum_width -1):0]  result1_14;
wire signed   [(coeff1_int_mult15 + coeff1_dec_mult15 + sum_width -1):0]  result1_15;
wire signed   [(coeff1_int_mult16 + coeff1_dec_mult16 + sum_width -1):0]  result1_16;
wire signed   [(coeff1_int_mult17 + coeff1_dec_mult17 + sum_width -1):0]  result1_17;
wire signed   [(coeff1_int_mult18 + coeff1_dec_mult18 + sum_width -1):0]  result1_18;
wire signed   [(coeff1_int_mult19 + coeff1_dec_mult19 + sum_width -1):0]  result1_19;
wire signed   [(coeff1_int_mult20 + coeff1_dec_mult20 + sum_width -1):0]  result1_20;
wire signed   [(coeff1_int_mult21 + coeff1_dec_mult21 + sum_width -1):0]  result1_21;
wire signed   [(coeff1_int_mult22 + coeff1_dec_mult22 + sum_width -1):0]  result1_22;
wire signed   [(coeff1_int_mult23 + coeff1_dec_mult23 + sum_width -1):0]  result1_23;
wire signed   [(coeff1_int_mult24 + coeff1_dec_mult24 + sum_width -1):0]  result1_24;
wire signed   [(coeff1_int_mult25 + coeff1_dec_mult25 + sum_width -1):0]  result1_25;*/

wire signed   [(coeff2_int_mult1 + coeff2_dec_mult1 + sum_width -1):0]  result2_1;
wire signed   [(coeff2_int_mult2 + coeff2_dec_mult2 + sum_width -1):0]  result2_2;
wire signed   [(coeff2_int_mult3 + coeff2_dec_mult3 + sum_width -1):0]  result2_3;
wire signed   [(coeff2_int_mult4 + coeff2_dec_mult4 + sum_width -1):0]  result2_4;
wire signed   [(coeff2_int_mult5 + coeff2_dec_mult5 + sum_width -1):0]  result2_5;

wire signed   [(coeff3_int_mult1 + coeff3_dec_mult1 + sum_width -1):0]  result3_1;
wire signed   [(coeff3_int_mult2 + coeff3_dec_mult2 + sum_width -1):0]  result3_2;
wire signed   [(coeff3_int_mult3 + coeff3_dec_mult3 + sum_width -1):0]  result3_3;
wire signed   [(coeff3_int_mult4 + coeff3_dec_mult4 + sum_width -1):0]  result3_4;
wire signed   [(coeff3_int_mult5 + coeff3_dec_mult5 + sum_width -1):0]  result3_5;

wire signed   [(coeff4_int_mult1 + coeff4_dec_mult1 + sum_width -1):0]  result4_1;
wire signed   [(coeff4_int_mult2 + coeff4_dec_mult2 + sum_width -1):0]  result4_2;
wire signed   [(coeff4_int_mult3 + coeff4_dec_mult3 + sum_width -1):0]  result4_3;

reg  signed   [col_adder_width-1:0]  add_col45_1, add_col45_2, add_col45_3, add_col45_4, add_col45_5;
reg  signed   [col_adder_width-1:0]  add_col90_1, add_col90_2, add_col90_3, add_col90_4, add_col90_5;
reg  signed   [col_adder_width-1:0]  add_col135_1, add_col135_2, add_col135_3, add_col135_4, add_col135_5;
reg  signed   [col_adder_width-1:0]  add_col180_1, add_col180_2, add_col180_3, add_col180_4, add_col180_5;

//wire    [18:0]  image_BRAM_addr;

wire    [(pixel_int_width + pixel_dec_width -1):0]  image_BRAM_dataout_ext;

reg     [1:0]   state;

reg    [17:0]  coeff_45  [4:0];
reg    [17:0]  coeff_90  [4:0];
reg    [17:0]  coeff_135 [4:0];
reg    [17:0]  coeff_180 [2:0];

always @ (posedge clock)
begin

  coeff_45[0] = 18'b111000100011001000;
  coeff_45[1] = 18'b111110000100100111;
  coeff_45[2] = 18'b000101110110110001;
  coeff_45[3] = 18'b001100100111100011;
  coeff_45[4] = 18'b001111101001010000;


end

always @ (posedge clock)
begin


  coeff_90[0] = 18'b111101111110111010;
  coeff_90[1] = 18'b000010010010110000;
  coeff_90[2] = 18'b000111101011010100;
  coeff_90[3] = 18'b001011100111100111;
  coeff_90[4] = 18'b001111001010110011;

end

always @ (posedge clock)
begin

  coeff_135[0] = 18'b001100100111100011;
  coeff_135[1] = 18'b000101110110110001;
  coeff_135[2] = 18'b111110000100100111;
  coeff_135[3] = 18'b111000100011001000;
  coeff_135[4] = 18'b001111101001010000;


end

always @ (posedge clock)
begin



  coeff_180[0] = 18'b111111010110011000;
  coeff_180[1] = 18'b001010000101110000;
  coeff_180[2] = 18'b001111011010101101;

end

        
convolution_block_45 #(coeff1_int_mult1, coeff1_dec_mult1, coeff1_int_mult2, coeff1_dec_mult2, coeff1_int_mult3, coeff1_dec_mult3,
                    coeff1_int_mult4, coeff1_dec_mult4, coeff1_int_mult5, coeff1_dec_mult5, sum_width,/*coeff1_int_mult14, coeff1_dec_mult14, coeff1_int_mult15, coeff1_dec_mult15,
                    coeff1_int_mult16, coeff1_dec_mult16, coeff1_int_mult17, coeff1_dec_mult17, coeff1_int_mult18, coeff1_dec_mult18,
                    coeff1_int_mult19, coeff1_dec_mult19, coeff1_int_mult20, coeff1_dec_mult20, coeff1_int_mult21, coeff1_dec_mult21,
                    coeff1_int_mult22, coeff1_dec_mult22, coeff1_int_mult23, coeff1_dec_mult23, coeff1_int_mult24, coeff1_dec_mult24,
                    coeff1_int_mult25, coeff1_dec_mult25,*/ pixel_int_width, pixel_dec_width)
                    
                    CB1 ( .coeff1(coeff_45[0][17:(17-(coeff1_int_mult1 + coeff1_dec_mult1-1))]), .coeff2(coeff_45[1][17:(17-(coeff1_int_mult2 + coeff1_dec_mult2-1))]), 
                          .coeff3(coeff_45[2][17:(17-(coeff1_int_mult3 + coeff1_dec_mult3-1))]), .coeff4(coeff_45[3][17:(17-(coeff1_int_mult4 + coeff1_dec_mult4-1))]), 
                          .coeff5(coeff_45[4][17:(17-(coeff1_int_mult5 + coeff1_dec_mult5-1))]),                           /*.coeff14(coeff_45[13][17:(17-(coeff1_int_mult14 + coeff1_dec_mult14-1))]), 
                          .coeff15(coeff_45[14][17:(17-(coeff1_int_mult15 + coeff1_dec_mult15-1))]), .coeff16(coeff_45[15][17:(17-(coeff1_int_mult16 + coeff1_dec_mult16-1))]), 
                          .coeff17(coeff_45[16][17:(17-(coeff1_int_mult17 + coeff1_dec_mult17-1))]), .coeff18(coeff_45[17][17:(17-(coeff1_int_mult18 + coeff1_dec_mult18-1))]), 
                          .coeff19(coeff_45[18][17:(17-(coeff1_int_mult19 + coeff1_dec_mult19-1))]), .coeff20(coeff_45[19][17:(17-(coeff1_int_mult20 + coeff1_dec_mult20-1))]), 
                          .coeff21(coeff_45[20][17:(17-(coeff1_int_mult21 + coeff1_dec_mult21-1))]), .coeff22(coeff_45[21][17:(17-(coeff1_int_mult22 + coeff1_dec_mult22-1))]),
                          .coeff23(coeff_45[22][17:(17-(coeff1_int_mult23 + coeff1_dec_mult23-1))]), .coeff24(coeff_45[23][17:(17-(coeff1_int_mult24 + coeff1_dec_mult24-1))]),
                          .coeff25(coeff_45[24][17:(17-(coeff1_int_mult25 + coeff1_dec_mult25-1))]),*/
                          
                          
                          .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5), .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), 
                          .pixel9(pixel9), .pixel10(pixel10), .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15), .pixel16(pixel16), 
                          .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20), .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
                          
                          .result1(result1_1), .result2(result1_2), .result3(result1_3), .result4(result1_4), .result5(result1_5) /*.result14(result1_14), .result15(result1_15), .result16(result1_16), .result17(result1_17), .result18(result1_18),
                          .result19(result1_19), .result20(result1_20), .result21(result1_21), .result22(result1_22), .result23(result1_23), .result24(result1_24),
                          .result25(result1_25)*/
                          );
                        
convolution_block_90 #(coeff2_int_mult1, coeff2_dec_mult1, coeff2_int_mult2, coeff2_dec_mult2, coeff2_int_mult3, coeff2_dec_mult3,
                    coeff2_int_mult4, coeff2_dec_mult4, coeff2_int_mult5, coeff2_dec_mult5,sum_width,/* coeff2_int_mult14, coeff2_dec_mult14, coeff2_int_mult15, coeff2_dec_mult15,
                    coeff2_int_mult16, coeff2_dec_mult16, coeff2_int_mult17, coeff2_dec_mult17, coeff2_int_mult18, coeff2_dec_mult18,
                    coeff2_int_mult19, coeff2_dec_mult19, coeff2_int_mult20, coeff2_dec_mult20, coeff2_int_mult21, coeff2_dec_mult21,
                    coeff2_int_mult22, coeff2_dec_mult22, coeff2_int_mult23, coeff2_dec_mult23, coeff2_int_mult24, coeff2_dec_mult24,
                    coeff2_int_mult25, coeff2_dec_mult25,*/ pixel_int_width, pixel_dec_width)
                    
                    CB2 ( .coeff1(coeff_90[0][17:(17-(coeff2_int_mult1 + coeff2_dec_mult1-1))]), .coeff2(coeff_90[1][17:(17-(coeff2_int_mult2 + coeff2_dec_mult2-1))]), 
                          .coeff3(coeff_90[2][17:(17-(coeff2_int_mult3 + coeff2_dec_mult3-1))]), .coeff4(coeff_90[3][17:(17-(coeff2_int_mult4 + coeff2_dec_mult4-1))]), 
                          .coeff5(coeff_90[4][17:(17-(coeff2_int_mult5 + coeff2_dec_mult5-1))]), /*.coeff14(coeff_90[13][17:(17-(coeff2_int_mult14 + coeff2_dec_mult14-1))]), 
                          .coeff15(coeff_90[14][17:(17-(coeff2_int_mult15 + coeff2_dec_mult15-1))]), .coeff16(coeff_90[15][17:(17-(coeff2_int_mult16 + coeff2_dec_mult16-1))]), 
                          .coeff17(coeff_90[16][17:(17-(coeff2_int_mult17 + coeff2_dec_mult17-1))]), .coeff18(coeff_90[17][17:(17-(coeff2_int_mult18 + coeff2_dec_mult18-1))]), 
                          .coeff19(coeff_90[18][17:(17-(coeff2_int_mult19 + coeff2_dec_mult19-1))]), .coeff20(coeff_90[19][17:(17-(coeff2_int_mult20 + coeff2_dec_mult20-1))]), 
                          .coeff21(coeff_90[20][17:(17-(coeff2_int_mult21 + coeff2_dec_mult21-1))]), .coeff22(coeff_90[21][17:(17-(coeff2_int_mult22 + coeff2_dec_mult22-1))]),
                          .coeff23(coeff_90[22][17:(17-(coeff2_int_mult23 + coeff2_dec_mult23-1))]), .coeff24(coeff_90[23][17:(17-(coeff2_int_mult24 + coeff2_dec_mult24-1))]),
                          .coeff25(coeff_90[24][17:(17-(coeff2_int_mult25 + coeff2_dec_mult25-1))]),*/
                          
                        .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5), .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), 
                        .pixel9(pixel9), .pixel10(pixel10), .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15), .pixel16(pixel16), 
                        .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20), .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
                                   
                          .result1(result2_1), .result2(result2_2), .result3(result2_3), .result4(result2_4), .result5(result2_5)/*, .result14(result2_14), .result15(result2_15), .result16(result2_16), .result17(result2_17), .result18(result2_18),
                          .result19(result2_19), .result20(result2_20), .result21(result2_21), .result22(result2_22), .result23(result2_23), .result24(result2_24),
                          .result25(result2_25*/
                          );
                        
convolution_block_135 #(coeff3_int_mult1, coeff3_dec_mult1, coeff3_int_mult2, coeff3_dec_mult2, coeff3_int_mult3, coeff3_dec_mult3,
                    coeff3_int_mult4, coeff3_dec_mult4, coeff3_int_mult5, coeff3_dec_mult5,sum_width, /*coeff3_int_mult14, coeff3_dec_mult14, coeff3_int_mult15, coeff3_dec_mult15,
                    coeff3_int_mult16, coeff3_dec_mult16, coeff3_int_mult17, coeff3_dec_mult17, coeff3_int_mult18, coeff3_dec_mult18,
                    coeff3_int_mult19, coeff3_dec_mult19, coeff3_int_mult20, coeff3_dec_mult20, coeff3_int_mult21, coeff3_dec_mult21,
                    coeff3_int_mult22, coeff3_dec_mult22, coeff3_int_mult23, coeff3_dec_mult23, coeff3_int_mult24, coeff3_dec_mult24,
                    coeff3_int_mult25, coeff3_dec_mult25,*/ pixel_int_width, pixel_dec_width)
                    
                    CB3 ( .coeff1(coeff_135[0][17:(17-(coeff3_int_mult1 + coeff3_dec_mult1-1))]), .coeff2(coeff_135[1][17:(17-(coeff3_int_mult2 + coeff3_dec_mult2-1))]), 
                          .coeff3(coeff_135[2][17:(17-(coeff3_int_mult3 + coeff3_dec_mult3-1))]), .coeff4(coeff_135[3][17:(17-(coeff3_int_mult4 + coeff3_dec_mult4-1))]), 
                          .coeff5(coeff_135[4][17:(17-(coeff3_int_mult5 + coeff3_dec_mult5-1))]),  /*.coeff14(coeff_135[13][17:(17-(coeff3_int_mult14 + coeff3_dec_mult14-1))]), 
                          .coeff15(coeff_135[14][17:(17-(coeff3_int_mult15 + coeff3_dec_mult15-1))]), .coeff16(coeff_135[15][17:(17-(coeff3_int_mult16 + coeff3_dec_mult16-1))]), 
                          .coeff17(coeff_135[16][17:(17-(coeff3_int_mult17 + coeff3_dec_mult17-1))]), .coeff18(coeff_135[17][17:(17-(coeff3_int_mult18 + coeff3_dec_mult18-1))]), 
                          .coeff19(coeff_135[18][17:(17-(coeff3_int_mult19 + coeff3_dec_mult19-1))]), .coeff20(coeff_135[19][17:(17-(coeff3_int_mult20 + coeff3_dec_mult20-1))]), 
                          .coeff21(coeff_135[20][17:(17-(coeff3_int_mult21 + coeff3_dec_mult21-1))]), .coeff22(coeff_135[21][17:(17-(coeff3_int_mult22 + coeff3_dec_mult22-1))]),
                          .coeff23(coeff_135[22][17:(17-(coeff3_int_mult23 + coeff3_dec_mult23-1))]), .coeff24(coeff_135[23][17:(17-(coeff3_int_mult24 + coeff3_dec_mult24-1))]),
                          .coeff25(coeff_135[24][17:(17-(coeff3_int_mult25 + coeff3_dec_mult25-1))]),*/
                          
                          .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5), .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), 
                          .pixel9(pixel9), .pixel10(pixel10), .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15), .pixel16(pixel16), 
                          .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20), .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
                          
                          
                          .result1(result3_1), .result2(result3_2), .result3(result3_3), .result4(result3_4), .result5(result3_5)/*, .result14(result3_14), .result15(result3_15), .result16(result3_16), .result17(result3_17), .result18(result3_18),
                          .result19(result3_19), .result20(result3_20), .result21(result3_21), .result22(result3_22), .result23(result3_23), .result24(result3_24),
                          .result25(result3_25)*/
                          );
                        
convolution_block_180 #(coeff4_int_mult1, coeff4_dec_mult1, coeff4_int_mult2, coeff4_dec_mult2, coeff4_int_mult3,coeff4_dec_mult3,sum_width, /*coeff4_int_mult14, coeff4_dec_mult14, coeff4_int_mult15, coeff4_dec_mult15,
                    coeff4_int_mult16, coeff4_dec_mult16, coeff4_int_mult17, coeff4_dec_mult17, coeff4_int_mult18, coeff4_dec_mult18,
                    coeff4_int_mult19, coeff4_dec_mult19, coeff4_int_mult20, coeff4_dec_mult20, coeff4_int_mult21, coeff4_dec_mult21,
                    coeff4_int_mult22, coeff4_dec_mult22, coeff4_int_mult23, coeff4_dec_mult23, coeff4_int_mult24, coeff4_dec_mult24,
                    coeff4_int_mult25, coeff4_dec_mult25,*/ pixel_int_width, pixel_dec_width)
                    
                    CB4 ( .coeff1(coeff_180[0][17:(17-(coeff4_int_mult1 + coeff4_dec_mult1-1))]), .coeff2(coeff_180[1][17:(17-(coeff4_int_mult2 + coeff4_dec_mult2-1))]), 
                          .coeff3(coeff_180[2][17:(17-(15+2-1))]),  /*.coeff14(coeff_180[13][17:(17-(coeff4_int_mult14 + coeff4_dec_mult14-1))]), 
                          .coeff15(coeff_180[14][17:(17-(coeff4_int_mult15 + coeff4_dec_mult15-1))]), .coeff16(coeff_180[15][17:(17-(coeff4_int_mult16 + coeff4_dec_mult16-1))]), 
                          .coeff17(coeff_180[16][17:(17-(coeff4_int_mult17 + coeff4_dec_mult17-1))]), .coeff18(coeff_180[17][17:(17-(coeff4_int_mult18 + coeff4_dec_mult18-1))]), 
                          .coeff19(coeff_180[18][17:(17-(coeff4_int_mult19 + coeff4_dec_mult19-1))]), .coeff20(coeff_180[19][17:(17-(coeff4_int_mult20 + coeff4_dec_mult20-1))]), 
                          .coeff21(coeff_180[20][17:(17-(coeff4_int_mult21 + coeff4_dec_mult21-1))]), .coeff22(coeff_180[21][17:(17-(coeff4_int_mult22 + coeff4_dec_mult22-1))]),
                          .coeff23(coeff_180[22][17:(17-(coeff4_int_mult23 + coeff4_dec_mult23-1))]), .coeff24(coeff_180[23][17:(17-(coeff4_int_mult24 + coeff4_dec_mult24-1))]),
                          .coeff25(coeff_180[24][17:(17-(coeff4_int_mult25 + coeff4_dec_mult25-1))]),*/
                          
                          .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5), .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), 
                          .pixel9(pixel9), .pixel10(pixel10), .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15), .pixel16(pixel16), 
                          .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20), .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
                          
                          
                          .result1(result4_1), .result2(result4_2), .result3(result4_3)/*, .result14(result4_14), .result15(result4_15), .result16(result4_16), .result17(result4_17), .result18(result4_18),
                          .result19(result4_19), .result20(result4_20), .result21(result4_21), .result22(result4_22), .result23(result4_23), .result24(result4_24),
                          .result25(result4_25)*/
                          );
                                        
                                  //      .done_mult1(done_mult1), .done_mult2(done_mult2), .done_mult3(done_mult3),.done_mult4(done_mult4), .done_mult5(done_mult5));
     BRAM_read_control     #( BRAM_width, BRAM_height, kernel_size)
                          
     controller_unit  (.clock(clock), .reset(reset), .pixel_addr(image_BRAM_addr),.data_ready(data_ready));

    assign result2temp1 = {result2_1, {(15 - coeff2_dec_mult1){1'b0}}};
    assign result2temp2 = {result2_2, {(15 - coeff2_dec_mult2){1'b0}}};
    assign result2temp3 = {result2_3, {(15 - coeff2_dec_mult3){1'b0}}};
    assign result2temp4 = {result2_4, {(15 - coeff2_dec_mult4){1'b0}}};
    assign result2temp5 = {result2_5, {(15 - coeff2_dec_mult5){1'b0}}};

    wire signed [30:0] result45temp1, result45temp2,result45temp3,result45temp4,result45temp5;
    assign result45temp1 = {result1_1, {(15 - coeff1_dec_mult1){1'b0}}};
    assign result45temp2 = {result1_2, {(15 - coeff1_dec_mult2){1'b0}}};
    assign result45temp3 = {result1_3, {(15 - coeff1_dec_mult3){1'b0}}};
    assign result45temp4 = {result1_4, {(15 - coeff1_dec_mult4){1'b0}}};
    assign result45temp5 = {result1_5, {(15 - coeff1_dec_mult5){1'b0}}};
    wire signed [30:0] result135temp1,result135temp2,result135temp3,result135temp4,result135temp5;

    assign result135temp1 = {result3_1, {(15 - coeff3_dec_mult1){1'b0}}};
    assign result135temp2 = {result3_2, {(15 - coeff3_dec_mult2){1'b0}}};
    assign result135temp3 = {result3_3, {(15 - coeff3_dec_mult3){1'b0}}};
    assign result135temp4 = {result3_4, {(15 - coeff3_dec_mult4){1'b0}}};
    assign result135temp5 = {result3_5, {(15 - coeff3_dec_mult5){1'b0}}};

    wire signed [30:0] result180temp1,result180temp2,result180temp3;

    assign result180temp1 = {result4_1, {(15 - coeff4_dec_mult1){1'b0}}};
    assign result180temp2 = {result4_2, {(15 - coeff4_dec_mult2){1'b0}}};
    assign result180temp3 = {result4_3, {(15 - coeff4_dec_mult3){1'b0}}};

       always @ (posedge clock or posedge reset)   //(posedge clk_half or posedge reset)
        if (reset)
          begin
            add_out_45     <= 0;
            add_out_90     <= 0;
            add_out_135     <= 0;
            add_out_180     <= 0;
          end

        else
          begin
            add_out_45    <= (result45temp1 + result45temp2 + result45temp3 + result45temp4 + result45temp5);
                              
            add_out_90    <= (result2temp1 + result2temp2 + result2temp3 + result2temp4 + result2temp5); 
                              
            add_out_135   <= (result135temp1 + result135temp2 + result135temp3 + result135temp4 + result135temp5);

            add_out_180   <= (result180temp1+result180temp2+result180temp3); //: add_out_180 ;
          end        
endmodule




module convolution_block_45
#(parameter  coeff_int_mult1 = 2,
  parameter  coeff_dec_mult1 = 15,
  parameter  coeff_int_mult2 = 2,
  parameter  coeff_dec_mult2 = 15,
  parameter  coeff_int_mult3 = 2,
  parameter  coeff_dec_mult3 = 15,
  parameter  coeff_int_mult4 = 2,
  parameter  coeff_dec_mult4 = 15,
  parameter  coeff_int_mult5 = 2,
  parameter  coeff_dec_mult5 = 15,   
  parameter  sum_width = 12,
    parameter  pixel_int_width = 9,
    parameter  pixel_dec_width = 0
 )
 (
    input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
    input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
    input [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
    input [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
    input [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
        input [(pixel_int_width + pixel_dec_width -1):0] pixel1,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel2,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel3,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel4,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel5,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel6,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel7,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel8,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel9,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel10,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel11,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel12,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel13,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel14,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel15,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel16,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel17,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel18,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel19,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel20,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel21,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel22,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel23,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel24,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel25,
     
    output  [(coeff_int_mult1 +  coeff_dec_mult1 + sum_width -1):0] result1,
    output  [(coeff_int_mult2 +  coeff_dec_mult2 + sum_width -1):0] result2,
    output  [(coeff_int_mult3 +  coeff_dec_mult3 + sum_width -1):0] result3,
    output  [(coeff_int_mult4 +  coeff_dec_mult4 + sum_width -1):0] result4,
    output  [(coeff_int_mult5 +  coeff_dec_mult5 + sum_width -1):0] result5
    );

    wire signed [sum_width - 1:0] sum1, sum2, sum3, sum4, sum5;

    assign sum1 = pixel1 + pixel25;
    assign sum2 = pixel2 + pixel24 + pixel6 + pixel20;
    assign sum3 = pixel3 + pixel23 + pixel7 + pixel19 + pixel11 + pixel15;
    assign sum4 = pixel4 + pixel5 + pixel21 + pixel22 + pixel8 + pixel16 + pixel10 + pixel18 + pixel12 + pixel14;
    assign sum5 = pixel9 + pixel13 + pixel17;
 
  
fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1) M1 (.ina(coeff1), .inb(pixel1 + pixel25), .out(result1));
fxp_mul #(coeff_int_mult2, coeff_dec_mult2, sum_width, 1) M2 (.ina(coeff2), .inb(sum2), .out(result2));
fxp_mul #(coeff_int_mult3, coeff_dec_mult3,  sum_width,1) M3 (.ina(coeff3), .inb(sum3), .out(result3));
fxp_mul #(coeff_int_mult4, coeff_dec_mult4,  sum_width,1) M4 (.ina(coeff4), .inb(sum4), .out(result4));
fxp_mul #(coeff_int_mult5, coeff_dec_mult5, sum_width, 1) M5 (.ina(coeff5), .inb(sum5), .out(result5));


endmodule
module convolution_block_90 
#(parameter  coeff_int_mult1 = 2,
  parameter  coeff_dec_mult1 = 15,
  parameter  coeff_int_mult2 = 2,
  parameter  coeff_dec_mult2 = 15,
  parameter  coeff_int_mult3 = 2,
  parameter  coeff_dec_mult3 = 15,
  parameter  coeff_int_mult4 = 2,
  parameter  coeff_dec_mult4 = 15,
  parameter  coeff_int_mult5 = 2,
  parameter  coeff_dec_mult5 = 15,     parameter  sum_width = 12,
    parameter  pixel_int_width = 9,
    parameter  pixel_dec_width = 0
 )
 (
    input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
    input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
    input [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
    input [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
    input [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
        input [(pixel_int_width + pixel_dec_width -1):0] pixel1,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel2,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel3,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel4,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel5,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel6,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel7,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel8,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel9,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel10,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel11,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel12,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel13,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel14,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel15,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel16,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel17,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel18,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel19,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel20,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel21,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel22,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel23,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel24,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel25,
     
    output  [(coeff_int_mult1 +  coeff_dec_mult1 + sum_width -1):0] result1,
    output  [(coeff_int_mult2 +  coeff_dec_mult2 + sum_width -1):0] result2,
    output  [(coeff_int_mult3 +  coeff_dec_mult3 + sum_width -1):0] result3,
    output  [(coeff_int_mult4 +  coeff_dec_mult4 + sum_width -1):0] result4,
    output  [(coeff_int_mult5 +  coeff_dec_mult5 + sum_width -1):0] result5
    );
 
  
wire signed [sum_width - 1:0] group1_sum, group2_sum, group3_sum, group4_sum, group5_sum;
assign group1_sum = pixel1 + pixel2 + pixel3 + pixel23 + pixel24 + pixel25; // -8262
assign group2_sum = pixel4 + pixel5 + pixel21 + pixel22; // 9392
assign group3_sum = pixel6 + pixel7 + pixel19 + pixel20; // 31444
assign group4_sum = pixel8 + pixel9 +pixel10+pixel16+ pixel17 + pixel18; // 47591
assign group5_sum =   pixel11 + pixel12 + pixel13 + pixel14 + pixel15; // 62131
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

module convolution_block_135 
#(parameter  coeff_int_mult1 = 2,
  parameter  coeff_dec_mult1 = 15,
  parameter  coeff_int_mult2 = 2,
  parameter  coeff_dec_mult2 = 15,
  parameter  coeff_int_mult3 = 2,
  parameter  coeff_dec_mult3 = 15,
  parameter  coeff_int_mult4 = 2,
  parameter  coeff_dec_mult4 = 15,
  parameter  coeff_int_mult5 = 2,
  parameter  coeff_dec_mult5 = 15,
     parameter  sum_width = 12,
    parameter  pixel_int_width = 9,
    parameter  pixel_dec_width = 0
 )
 (
    input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
    input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
    input [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
    input [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
    input [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
        input [(pixel_int_width + pixel_dec_width -1):0] pixel1,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel2,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel3,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel4,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel5,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel6,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel7,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel8,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel9,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel10,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel11,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel12,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel13,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel14,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel15,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel16,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel17,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel18,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel19,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel20,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel21,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel22,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel23,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel24,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel25,
     
    output  [(coeff_int_mult1 +  coeff_dec_mult1 + sum_width -1):0] result1,
    output  [(coeff_int_mult2 +  coeff_dec_mult2 + sum_width -1):0] result2,
    output  [(coeff_int_mult3 +  coeff_dec_mult3 + sum_width -1):0] result3,
    output  [(coeff_int_mult4 +  coeff_dec_mult4 + sum_width -1):0] result4,
    output  [(coeff_int_mult5 +  coeff_dec_mult5 + sum_width -1):0] result5
    );
 
  
wire signed [sum_width - 1 : 0] group1_sum, group2_sum, group3_sum, group4_sum, group5_sum;

  // Grouped pixel additions based on common coefficients (example for 135° clustered kernel)
  assign group1_sum = pixel1 + pixel2 + pixel6 + pixel8 + pixel18 + pixel20 + pixel24 + pixel25 + pixel12 +pixel14 ;
  assign group2_sum = pixel3 + pixel9 + pixel11 + pixel15 + pixel17 + pixel23 ;
  assign group3_sum = pixel4 + pixel10 + pixel16 + pixel22;
  assign group4_sum = pixel5 + pixel21;
  assign group5_sum = pixel13+pixel19+pixel7;

  // Multipliers using grouped pixels and corresponding coefficients
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1) M0 (.ina(coeff1), .inb( group1_sum ), .out(result1));
  fxp_mul #(coeff_int_mult2, coeff_dec_mult2, sum_width, 1) M1 (.ina(coeff2), .inb(group2_sum), .out(result2));
  fxp_mul #(coeff_int_mult3, coeff_dec_mult3, sum_width, 1) M2 (.ina(coeff3), .inb(group3_sum), .out(result3));
  fxp_mul #(coeff_int_mult4, coeff_dec_mult4, sum_width, 1) M3 (.ina(coeff4), .inb(group4_sum), .out(result4));
  fxp_mul #(coeff_int_mult5, coeff_dec_mult5, sum_width, 1) M4 (.ina(coeff5), .inb( group5_sum), .out(result5));


endmodule

module convolution_block_180
#(parameter  coeff_int_mult1 = 2,
  parameter  coeff_dec_mult1 = 15,
  parameter  coeff_int_mult2 = 2,
  parameter  coeff_dec_mult2 = 15,
  parameter  coeff_int_mult3 = 2,
  parameter  coeff_dec_mult3 = 15,
         parameter  sum_width = 12,
    parameter  pixel_int_width = 9,
    parameter  pixel_dec_width = 0
 )
 (
    input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
    input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
    input [(coeff_int_mult3+coeff_dec_mult3-1):0] coeff3,
            input [(pixel_int_width + pixel_dec_width -1):0] pixel1,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel2,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel3,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel4,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel5,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel6,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel7,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel8,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel9,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel10,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel11,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel12,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel13,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel14,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel15,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel16,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel17,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel18,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel19,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel20,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel21,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel22,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel23,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel24,
    input [(pixel_int_width + pixel_dec_width -1):0] pixel25,
     
    output  [(coeff_int_mult1 +  coeff_dec_mult1 + sum_width -1):0] result1,
    output  [(coeff_int_mult2 +  coeff_dec_mult2 + sum_width -1):0] result2,
    output  [(coeff_int_mult3 +  coeff_dec_mult3 + sum_width -1):0] result3
       );
 
 wire signed [sum_width - 1:0] sum1, sum2, sum3;
    
    
        // Initialize the results to zero
      assign  sum1 = pixel1 + pixel5 + pixel6 + pixel10 + pixel11 + pixel15 + pixel16 + pixel20 + pixel21 + pixel25;
        assign sum2 = pixel2 + pixel4 + pixel7 + pixel9 + pixel12 + pixel14 + pixel17 + pixel19 + pixel22 + pixel24;
        assign sum3 = pixel3 + pixel8 + pixel13 + pixel18 + pixel23;
        
      

    // Clustered multiplications using unique coefficients
    fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum_width, 1)
        M_cluster0 (.ina(coeff1), .inb(sum1 ), .out(result1));

    fxp_mul #(coeff_int_mult2, coeff_dec_mult2, sum_width, 1)
        M_cluster1 (.ina(coeff2), .inb(sum2), .out(result2));

    fxp_mul #(coeff_int_mult3, coeff_dec_mult3, sum_width, 1)
        M_cluster2 (.ina(coeff3), .inb(sum3), .out(result3));


endmodule



module fxp_mul # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter sum_width = 12,
    parameter ROUND= 1
     
)(
 //   input  clk,
 //   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [sum_width-1:0] inb,
    output wire [IN_IWA+ IN_FWA + sum_width - 1:0] out
);

                         //($signed(ina_temp) * $signed(inb_temp)) : 20'b0; 

/// WITH DPGM

assign out =  ($signed(ina) * $signed(inb));
// assign ina_temp = (|inb) ? (ina) : 'b0;
// assign inb_temp = (|inb) ? (inb) : 'b0;


// Multiplier uut(ina_temp,inb_temp,out_temp);
     
// assign out = (|inb) ? out_temp : 'b0;

endmodule

// module Multiplier#(parameter IN_IWA = 2,
//     parameter IN_FWA = 6,
//     parameter IN_IWB = 8,
//     parameter IN_FWB = 0)(
//     input  wire [IN_IWA+IN_FWA-1:0] ina,
//     input  wire [IN_IWA+IN_FWA-1:0] inb, 
//     output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
// );
// assign out =  ($signed(ina) * $signed(inb));
// endmodule


module BRAM_read_control
# (
      parameter  BRAM_width = 516,
      parameter  BRAM_height = 266256,
      parameter  kernel_size = 5
  )
    (   input             clock,
        input             reset,
/*        input [17:0]      coeff45_datain,
        input [17:0]      coeff90_datain,
        input [17:0]      coeff135_datain,
        input [17:0]      coeff180_datain,

        output reg  [4:0]   coeff1_BRAM_addr,
        output reg  [8:0]   pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8,
                            pixel9, pixel10, pixel11, pixel12, pixel13, pixel14, pixel15,
                            pixel16, pixel17, pixel18, pixzel19, pixel20, pixel21, pixel22,
                            pixel23, pixel24, pixel25,

        output reg  [17:0]  coeff1_1, coeff1_2, coeff1_3, coeff1_4, coeff1_5, coeff1_6, coeff1_7,
                            coeff1_8, coeff1_9, coeff1_10, coeff1_11, coeff1_12, coeff1_13, coeff1_14,
                            coeff1_15, coeff1_16, coeff1_17, coeff1_18, coeff1_19, coeff1_20, coeff1_21,
                            coeff1_22, coeff1_23, coeff1_24, coeff1_25,
        
        output reg  [17:0]  coeff2_1, coeff2_2, coeff2_3, coeff2_4, coeff2_5, coeff2_6, coeff2_7,
                            coeff2_8, coeff2_9, coeff2_10, coeff2_11, coeff2_12, coeff2_13, coeff2_14,
                            coeff2_15, coeff2_16, coeff2_17, coeff2_18, coeff2_19, coeff2_20, coeff2_21,
                            coeff2_22, coeff2_23, coeff2_24, coeff2_25,
                            
        output reg  [17:0]  coeff3_1, coeff3_2, coeff3_3, coeff3_4, coeff3_5, coeff3_6, coeff3_7,
                            coeff3_8, coeff3_9, coeff3_10, coeff3_11, coeff3_12, coeff3_13, coeff3_14,
                            coeff3_15, coeff3_16, coeff3_17, coeff3_18, coeff3_19, coeff3_20, coeff3_21,
                            coeff3_22, coeff3_23, coeff3_24, coeff3_25,
                            
        output reg  [17:0]  coeff4_1, coeff4_2, coeff4_3, coeff4_4, coeff4_5, coeff4_6, coeff4_7,
                            coeff4_8, coeff4_9, coeff4_10, coeff4_11, coeff4_12, coeff4_13, coeff4_14,
                            coeff4_15, coeff4_16, coeff4_17, coeff4_18, coeff4_19, coeff4_20, coeff4_21,
                            coeff4_22, coeff4_23, coeff4_24, coeff4_25,    */                
                                                                                               
        output reg  [18:0]  pixel_addr, 
        output reg          data_ready
    );

reg     [3:0]   state;

reg [9:0]   column_number;
reg [18:0]  row_number;
parameter   image_width = 512;
     
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
