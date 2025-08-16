
module conv_unit
#(
  parameter coeff1_int_mult1 = 2,
  parameter coeff1_dec_mult1 = 10,
  parameter coeff1_int_mult2 = 2,
  parameter coeff1_dec_mult2 = 14,
  parameter coeff1_int_mult3 = 2,
  parameter coeff1_dec_mult3 = 8,
  parameter coeff1_int_mult4 = 2,
  parameter coeff1_dec_mult4 = 9,
  parameter coeff1_int_mult5 = 2,
  parameter coeff1_dec_mult5 = 9,
    
  parameter coeff2_int_mult1 = 2,
  parameter coeff2_dec_mult1 = 9,
  parameter coeff2_int_mult2 = 2,
  parameter coeff2_dec_mult2 = 12,
  parameter coeff2_int_mult3 = 2,
  parameter coeff2_dec_mult3 = 10,
  parameter coeff2_int_mult4 = 2,
  parameter coeff2_dec_mult4 = 5,
  parameter coeff2_int_mult5 = 2,
  parameter coeff2_dec_mult5 = 5,
    
  parameter coeff3_int_mult1 = 2,
  parameter coeff3_dec_mult1 = 9,
  parameter coeff3_int_mult2 = 2,
  parameter coeff3_dec_mult2 = 12,
  parameter coeff3_int_mult3 = 2,
  parameter coeff3_dec_mult3 = 4,
  parameter coeff3_int_mult4 = 2,
  parameter coeff3_dec_mult4 = 5,
  parameter coeff3_int_mult5 = 2,
  parameter coeff3_dec_mult5 = 6,
    
  parameter coeff4_int_mult1 = 2,
  parameter coeff4_dec_mult1 = 9,
  parameter coeff4_int_mult2 = 2,
  parameter coeff4_dec_mult2 = 9,
  parameter coeff4_int_mult3 = 2,
  parameter coeff4_dec_mult3 = 15,
  
  parameter pixel_int_width = 9,
  parameter pixel_dec_width = 0,

  parameter round = 1,
  parameter col_adder_width = 22, // This might also be dynamically computed based on num of results added
  parameter result_add_width = 34, // This might also be dynamically computed
  parameter BRAM_width = 516,
  parameter BRAM_height = 266256,
  parameter kernel_size = 5
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
// Helper function for ceiling log base 2 to dynamically calculate bit widths
function integer clogb2;
    input integer value;
    begin
        value = value - 1;
        for (clogb2 = 0; value > 0; clogb2 = clogb2 + 1)
            value = value >> 1;
    end
endfunction


// --- Dynamic Sum Width Parameters for convolution_block_45 ---
localparam CB45_SUM1_WIDTH = pixel_int_width + clogb2(2); // pixel1 + pixel25 (2 terms)
localparam CB45_SUM2_WIDTH = pixel_int_width + clogb2(4); // pixel2 + pixel24 + pixel6 + pixel20 (4 terms)
localparam CB45_SUM3_WIDTH = pixel_int_width + clogb2(6); // pixel3 + pixel23 + pixel7 + pixel19 + pixel11 + pixel15 (6 terms)
localparam CB45_SUM4_WIDTH = pixel_int_width + clogb2(10); // pixel4 + pixel5 + pixel21 + pixel22 + pixel8 + pixel16 + pixel10 + pixel18 + pixel12 + pixel14 (10 terms)
localparam CB45_SUM5_WIDTH = pixel_int_width + clogb2(3); // pixel9 + pixel13 + pixel17 (3 terms)

// --- Dynamic Sum Width Parameters for convolution_block_90 ---
localparam CB90_GROUP1_SUM_WIDTH = pixel_int_width + clogb2(6); // pixel1 + pixel2 + pixel3 + pixel23 + pixel24 + pixel25 (6 terms)
localparam CB90_GROUP2_SUM_WIDTH = pixel_int_width + clogb2(4); // pixel4 + pixel5 + pixel21 + pixel22 (4 terms)
localparam CB90_GROUP3_SUM_WIDTH = pixel_int_width + clogb2(4); // pixel6 + pixel7 + pixel19 + pixel20 (4 terms)
localparam CB90_GROUP4_SUM_WIDTH = pixel_int_width + clogb2(6); // pixel8 + pixel9 +pixel10+pixel16+ pixel17 + pixel18 (6 terms)
localparam CB90_GROUP5_SUM_WIDTH = pixel_int_width + clogb2(5); // pixel11 + pixel12 + pixel13 + pixel14 + pixel15 (5 terms)

// --- Dynamic Sum Width Parameters for convolution_block_135 ---
localparam CB135_GROUP1_SUM_WIDTH = pixel_int_width + clogb2(10); // pixel1 + pixel2 + pixel6 + pixel8 + pixel18 + pixel20 + pixel24 + pixel25 + pixel12 +pixel14 (10 terms)
localparam CB135_GROUP2_SUM_WIDTH = pixel_int_width + clogb2(6); // pixel3 + pixel9 + pixel11 + pixel15 + pixel17 + pixel23 (6 terms)
localparam CB135_GROUP3_SUM_WIDTH = pixel_int_width + clogb2(4); // pixel4 + pixel10 + pixel16 + pixel22 (4 terms)
localparam CB135_GROUP4_SUM_WIDTH = pixel_int_width + clogb2(2); // pixel5 + pixel21 (2 terms)
localparam CB135_GROUP5_SUM_WIDTH = pixel_int_width + clogb2(3); // pixel13+pixel19+pixel7 (3 terms)

// --- Dynamic Sum Width Parameters for convolution_block_180 ---
localparam CB180_SUM1_WIDTH = pixel_int_width + clogb2(10); // pixel1 + pixel5 + pixel6 + pixel10 + pixel11 + pixel15 + pixel16 + pixel20 + pixel21 + pixel25 (10 terms)
localparam CB180_SUM2_WIDTH = pixel_int_width + clogb2(10); // pixel2 + pixel4 + pixel7 + pixel9 + pixel12 + pixel14 + pixel17 + pixel19 + pixel22 + pixel24 (10 terms)
localparam CB180_SUM3_WIDTH = pixel_int_width + clogb2(5); // pixel3 + pixel8 + pixel13 + pixel18 + pixel23 (5 terms)


// --- Result Wires from convolution blocks (outputs of fxp_mul) ---
wire signed [(coeff1_int_mult1 + coeff1_dec_mult1 + CB45_SUM1_WIDTH - 1):0] result1_1;
wire signed [(coeff1_int_mult2 + coeff1_dec_mult2 + CB45_SUM2_WIDTH - 1):0] result1_2;
wire signed [(coeff1_int_mult3 + coeff1_dec_mult3 + CB45_SUM3_WIDTH - 1):0] result1_3;
wire signed [(coeff1_int_mult4 + coeff1_dec_mult4 + CB45_SUM4_WIDTH - 1):0] result1_4;
wire signed [(coeff1_int_mult5 + coeff1_dec_mult5 + CB45_SUM5_WIDTH - 1):0] result1_5;

wire signed [(coeff2_int_mult1 + coeff2_dec_mult1 + CB90_GROUP1_SUM_WIDTH - 1):0] result2_1;
wire signed [(coeff2_int_mult2 + coeff2_dec_mult2 + CB90_GROUP2_SUM_WIDTH - 1):0] result2_2;
wire signed [(coeff2_int_mult3 + coeff2_dec_mult3 + CB90_GROUP3_SUM_WIDTH - 1):0] result2_3;
wire signed [(coeff2_int_mult4 + coeff2_dec_mult4 + CB90_GROUP4_SUM_WIDTH - 1):0] result2_4;
wire signed [(coeff2_int_mult5 + coeff2_dec_mult5 + CB90_GROUP5_SUM_WIDTH - 1):0] result2_5;

wire signed [(coeff3_int_mult1 + coeff3_dec_mult1 + CB135_GROUP1_SUM_WIDTH - 1):0] result3_1;
wire signed [(coeff3_int_mult2 + coeff3_dec_mult2 + CB135_GROUP2_SUM_WIDTH - 1):0] result3_2;
wire signed [(coeff3_int_mult3 + coeff3_dec_mult3 + CB135_GROUP3_SUM_WIDTH - 1):0] result3_3;
wire signed [(coeff3_int_mult4 + coeff3_dec_mult4 + CB135_GROUP4_SUM_WIDTH - 1):0] result3_4;
wire signed [(coeff3_int_mult5 + coeff3_dec_mult5 + CB135_GROUP5_SUM_WIDTH - 1):0] result3_5;

wire signed [(coeff4_int_mult1 + coeff4_dec_mult1 + CB180_SUM1_WIDTH - 1):0] result4_1;
wire signed [(coeff4_int_mult2 + coeff4_dec_mult2 + CB180_SUM2_WIDTH - 1):0] result4_2;
wire signed [(coeff4_int_mult3 + coeff4_dec_mult3 + CB180_SUM3_WIDTH - 1):0] result4_3;

// --- Intermediate wires for addition results (padded to 31 bits, assuming 15 dec bits as common) ---
// These are padded to a common width (31 bits, given by original result2tempX wires) for final summation
// The padding (15 - coeffX_dec_multY) is based on the original structure.
// If result_add_width needs to be dynamic, it would need to compute the max width required
// by summing up to 5 terms, considering their integer and fractional parts.
wire signed [30:0] result2temp1, result2temp2, result2temp3, result2temp4, result2temp5;
wire signed [30:0] result45temp1, result45temp2, result45temp3, result45temp4, result45temp5;
wire signed [30:0] result135temp1, result135temp2, result135temp3, result135temp4, result135temp5;
wire signed [30:0] result180temp1, result180temp2, result180temp3;

reg signed [col_adder_width-1:0] add_col45_1, add_col45_2, add_col45_3, add_col45_4, add_col45_5; // Not used in provided snippet, kept for consistency
reg signed [col_adder_width-1:0] add_col90_1, add_col90_2, add_col90_3, add_col90_4, add_col90_5; // Not used in provided snippet, kept for consistency
reg signed [col_adder_width-1:0] add_col135_1, add_col135_2, add_col135_3, add_col135_4, add_col135_5; // Not used in provided snippet, kept for consistency
reg signed [col_adder_width-1:0] add_col180_1, add_col180_2, add_col180_3, add_col180_4, add_col180_5; // Not used in provided snippet, kept for consistency

wire [(pixel_int_width + pixel_dec_width -1):0] image_BRAM_dataout_ext; // Not driven in this module

reg [1:0] state; // Not used in provided snippet, kept for consistency

reg [17:0] coeff_45 [4:0];
reg [17:0] coeff_90 [4:0];
reg [17:0] coeff_135 [4:0];
reg [17:0] coeff_180 [2:0];

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

// --- Instance convolution_block_45 with dynamic sum widths ---
convolution_block_45 #(
  .coeff_int_mult1 (coeff1_int_mult1), .coeff_dec_mult1 (coeff1_dec_mult1),
  .coeff_int_mult2 (coeff1_int_mult2), .coeff_dec_mult2 (coeff1_dec_mult2),
  .coeff_int_mult3 (coeff1_int_mult3), .coeff_dec_mult3 (coeff1_dec_mult3),
  .coeff_int_mult4 (coeff1_int_mult4), .coeff_dec_mult4 (coeff1_dec_mult4),
  .coeff_int_mult5 (coeff1_int_mult5), .coeff_dec_mult5 (coeff1_dec_mult5),
  .sum1_width (CB45_SUM1_WIDTH),
  .sum2_width (CB45_SUM2_WIDTH),
  .sum3_width (CB45_SUM3_WIDTH),
  .sum4_width (CB45_SUM4_WIDTH),
  .sum5_width (CB45_SUM5_WIDTH),
  .pixel_int_width (pixel_int_width),
  .pixel_dec_width (pixel_dec_width)
)
CB1 (
  .coeff1(coeff_45[0][17:(17-(coeff1_int_mult1 + coeff1_dec_mult1-1))]),
  .coeff2(coeff_45[1][17:(17-(coeff1_int_mult2 + coeff1_dec_mult2-1))]),
  .coeff3(coeff_45[2][17:(17-(coeff1_int_mult3 + coeff1_dec_mult3-1))]),
  .coeff4(coeff_45[3][17:(17-(coeff1_int_mult4 + coeff1_dec_mult4-1))]),
  .coeff5(coeff_45[4][17:(17-(coeff1_int_mult5 + coeff1_dec_mult5-1))]),
  
  .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
  .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
  .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
  .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
  .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
  
  .result1(result1_1), .result2(result1_2), .result3(result1_3), .result4(result1_4), .result5(result1_5)
);
                              
// --- Instance convolution_block_90 with dynamic sum widths ---
convolution_block_90 #(
  .coeff_int_mult1 (coeff2_int_mult1), .coeff_dec_mult1 (coeff2_dec_mult1),
  .coeff_int_mult2 (coeff2_int_mult2), .coeff_dec_mult2 (coeff2_dec_mult2),
  .coeff_int_mult3 (coeff2_int_mult3), .coeff_dec_mult3 (coeff2_dec_mult3),
  .coeff_int_mult4 (coeff2_int_mult4), .coeff_dec_mult4 (coeff2_dec_mult4),
  .coeff_int_mult5 (coeff2_int_mult5), .coeff_dec_mult5 (coeff2_dec_mult5),
  .group1_sum_width (CB90_GROUP1_SUM_WIDTH),
  .group2_sum_width (CB90_GROUP2_SUM_WIDTH),
  .group3_sum_width (CB90_GROUP3_SUM_WIDTH),
  .group4_sum_width (CB90_GROUP4_SUM_WIDTH),
  .group5_sum_width (CB90_GROUP5_SUM_WIDTH),
  .pixel_int_width (pixel_int_width), .pixel_dec_width (pixel_dec_width)
)
CB2 (
  .coeff1(coeff_90[0][17:(17-(coeff2_int_mult1 + coeff2_dec_mult1-1))]),
  .coeff2(coeff_90[1][17:(17-(coeff2_int_mult2 + coeff2_dec_mult2-1))]),
  .coeff3(coeff_90[2][17:(17-(coeff2_int_mult3 + coeff2_dec_mult3-1))]),
  .coeff4(coeff_90[3][17:(17-(coeff2_int_mult4 + coeff2_dec_mult4-1))]),
  .coeff5(coeff_90[4][17:(17-(coeff2_int_mult5 + coeff2_dec_mult5-1))]),
  
  .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
  .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
  .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
  .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
  .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
  
  .result1(result2_1), .result2(result2_2), .result3(result2_3), .result4(result2_4), .result5(result2_5)
);
                              
// --- Instance convolution_block_135 with dynamic sum widths ---
convolution_block_135 #(
  .coeff_int_mult1 (coeff3_int_mult1), .coeff_dec_mult1 (coeff3_dec_mult1),
  .coeff_int_mult2 (coeff3_int_mult2), .coeff_dec_mult2 (coeff3_dec_mult2),
  .coeff_int_mult3 (coeff3_int_mult3), .coeff_dec_mult3 (coeff3_dec_mult3),
  .coeff_int_mult4 (coeff3_int_mult4), .coeff_dec_mult4 (coeff3_dec_mult4),
  .coeff_int_mult5 (coeff3_int_mult5), .coeff_dec_mult5 (coeff3_dec_mult5),
  .group1_sum_width (CB135_GROUP1_SUM_WIDTH),
  .group2_sum_width (CB135_GROUP2_SUM_WIDTH),
  .group3_sum_width (CB135_GROUP3_SUM_WIDTH),
  .group4_sum_width (CB135_GROUP4_SUM_WIDTH),
  .group5_sum_width (CB135_GROUP5_SUM_WIDTH),
  .pixel_int_width (pixel_int_width), .pixel_dec_width (pixel_dec_width)
)
CB3 (
  .coeff1(coeff_135[0][17:(17-(coeff3_int_mult1 + coeff3_dec_mult1-1))]),
  .coeff2(coeff_135[1][17:(17-(coeff3_int_mult2 + coeff3_dec_mult2-1))]),
  .coeff3(coeff_135[2][17:(17-(coeff3_int_mult3 + coeff3_dec_mult3-1))]),
  .coeff4(coeff_135[3][17:(17-(coeff3_int_mult4 + coeff3_dec_mult4-1))]),
  .coeff5(coeff_135[4][17:(17-(coeff3_int_mult5 + coeff3_dec_mult5-1))]),
  
  .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
  .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
  .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
  .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
  .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
  
  .result1(result3_1), .result2(result3_2), .result3(result3_3), .result4(result3_4), .result5(result3_5)
);
                              
// --- Instance convolution_block_180 with dynamic sum widths ---
convolution_block_180 #(
  .coeff_int_mult1 (coeff4_int_mult1), .coeff_dec_mult1 (coeff4_dec_mult1),
  .coeff_int_mult2 (coeff4_int_mult2), .coeff_dec_mult2 (coeff4_dec_mult2),
  .coeff_int_mult3 (coeff4_int_mult3), .coeff_dec_mult3 (coeff4_dec_mult3),
  .sum1_width (CB180_SUM1_WIDTH),
  .sum2_width (CB180_SUM2_WIDTH),
  .sum3_width (CB180_SUM3_WIDTH),
  .pixel_int_width (pixel_int_width), .pixel_dec_width (pixel_dec_width)
)
CB4 (
  .coeff1(coeff_180[0][17:(17-(coeff4_int_mult1 + coeff4_dec_mult1-1))]),
  .coeff2(coeff_180[1][17:(17-(coeff4_int_mult2 + coeff4_dec_mult2-1))]),
  .coeff3(coeff_180[2][17:(17-(coeff4_int_mult3 + coeff4_dec_mult3-1))]),
  
  .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
  .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
  .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
  .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
  .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
  
  .result1(result4_1), .result2(result4_2), .result3(result4_3)
);
                                      
BRAM_read_control #(BRAM_width, BRAM_height, kernel_size)
controller_unit (.clock(clock), .reset(reset), .pixel_addr(image_BRAM_addr), .data_ready(data_ready));

// --- Pad results to a common width (31 bits) for final summation ---
// This part assumes that all inputs to the final adder stages are signed.
// The padding ensures all inputs to the final adder stages have the same fractional part (15 bits)
// and enough integer bits. The `result2tempX` wires are 31 bits wide.
// If the `result_add_width` should also be dynamic based on the max possible sum of the padded `resultX_Y` wires,
// that calculation would need to be added here.
assign result2temp1 = {result2_1, {(15 - coeff2_dec_mult1){1'b0}}};
assign result2temp2 = {result2_2, {(15 - coeff2_dec_mult2){1'b0}}};
assign result2temp3 = {result2_3, {(15 - coeff2_dec_mult3){1'b0}}};
assign result2temp4 = {result2_4, {(15 - coeff2_dec_mult4){1'b0}}};
assign result2temp5 = {result2_5, {(15 - coeff2_dec_mult5){1'b0}}};

assign result45temp1 = {result1_1, {(15 - coeff1_dec_mult1){1'b0}}};
assign result45temp2 = {result1_2, {(15 - coeff1_dec_mult2){1'b0}}};
assign result45temp3 = {result1_3, {(15 - coeff1_dec_mult3){1'b0}}};
assign result45temp4 = {result1_4, {(15 - coeff1_dec_mult4){1'b0}}};
assign result45temp5 = {result1_5, {(15 - coeff1_dec_mult5){1'b0}}};

assign result135temp1 = {result3_1, {(15 - coeff3_dec_mult1){1'b0}}};
assign result135temp2 = {result3_2, {(15 - coeff3_dec_mult2){1'b0}}};
assign result135temp3 = {result3_3, {(15 - coeff3_dec_mult3){1'b0}}};
assign result135temp4 = {result3_4, {(15 - coeff3_dec_mult4){1'b0}}};
assign result135temp5 = {result3_5, {(15 - coeff3_dec_mult5){1'b0}}};

assign result180temp1 = {result4_1, {(15 - coeff4_dec_mult1){1'b0}}};
assign result180temp2 = {result4_2, {(15 - coeff4_dec_mult2){1'b0}}};
assign result180temp3 = {result4_3, {(15 - coeff4_dec_mult3){1'b0}}};

always @ (posedge clock or posedge reset)
  if (reset)
    begin
      add_out_45  <= 0;
      add_out_90  <= 0;
      add_out_135  <= 0;
      add_out_180  <= 0;
    end
  else
    begin
      add_out_45  <= (result45temp1 + result45temp2 + result45temp3 + result45temp4 + result45temp5);
      add_out_90  <= (result2temp1 + result2temp2 + result2temp3 + result2temp4 + result2temp5);
      add_out_135 <= (result135temp1 + result135temp2 + result135temp3 + result135temp4 + result135temp5);
      add_out_180 <= (result180temp1+result180temp2+result180temp3);
    end
endmodule


module convolution_block_45
#(
  parameter coeff_int_mult1 = 2, parameter coeff_dec_mult1 = 15,
  parameter coeff_int_mult2 = 2, parameter coeff_dec_mult2 = 15,
  parameter coeff_int_mult3 = 2, parameter coeff_dec_mult3 = 15,
  parameter coeff_int_mult4 = 2, parameter coeff_dec_mult4 = 15,
  parameter coeff_int_mult5 = 2, parameter coeff_dec_mult5 = 15,
  
  // Dynamically calculated sum widths
  parameter sum1_width = 10, // Originally based on sum_width=12, now dynamic
  parameter sum2_width = 11,
  parameter sum3_width = 12,
  parameter sum4_width = 13,
  parameter sum5_width = 11,
  
  parameter pixel_int_width = 9,
  parameter pixel_dec_width = 0
)
(
  input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
  input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
  input [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
  input [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
  input [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
  
  input [(pixel_int_width + pixel_dec_width -1):0] pixel1, pixel2, pixel3, pixel4, pixel5,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel6, pixel7, pixel8, pixel9, pixel10,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel11, pixel12, pixel13, pixel14, pixel15,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel16, pixel17, pixel18, pixel19, pixel20,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel21, pixel22, pixel23, pixel24, pixel25,
    
  output signed [(coeff_int_mult1 + coeff_dec_mult1 + sum1_width - 1):0] result1,
  output signed [(coeff_int_mult2 + coeff_dec_mult2 + sum2_width - 1):0] result2,
  output signed [(coeff_int_mult3 + coeff_dec_mult3 + sum3_width - 1):0] result3,
  output signed [(coeff_int_mult4 + coeff_dec_mult4 + sum4_width - 1):0] result4,
  output signed [(coeff_int_mult5 + coeff_dec_mult5 + sum5_width - 1):0] result5
);

  wire signed [sum1_width - 1:0] sum1;
  wire signed [sum2_width - 1:0] sum2;
  wire signed [sum3_width - 1:0] sum3;
  wire signed [sum4_width - 1:0] sum4;
  wire signed [sum5_width - 1:0] sum5;

  assign sum1 = pixel1 + pixel25;
  assign sum2 = pixel2 + pixel24 + pixel6 + pixel20;
  assign sum3 = pixel3 + pixel23 + pixel7 + pixel19 + pixel11 + pixel15;
  assign sum4 = pixel4 + pixel5 + pixel21 + pixel22 + pixel8 + pixel16 + pixel10 + pixel18 + pixel12 + pixel14;
  assign sum5 = pixel9 + pixel13 + pixel17;
  
  // Use the specific sum_width for each fxp_mul instance
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum1_width) M1 (.ina(coeff1), .inb(sum1), .out(result1));
  fxp_mul #(coeff_int_mult2, coeff_dec_mult2, sum2_width) M2 (.ina(coeff2), .inb(sum2), .out(result2));
  fxp_mul #(coeff_int_mult3, coeff_dec_mult3, sum3_width) M3 (.ina(coeff3), .inb(sum3), .out(result3));
  fxp_mul #(coeff_int_mult4, coeff_dec_mult4, sum4_width) M4 (.ina(coeff4), .inb(sum4), .out(result4));
  fxp_mul #(coeff_int_mult5, coeff_dec_mult5, sum5_width) M5 (.ina(coeff5), .inb(sum5), .out(result5));

endmodule

module convolution_block_90
#(
  parameter coeff_int_mult1 = 2, parameter coeff_dec_mult1 = 15,
  parameter coeff_int_mult2 = 2, parameter coeff_dec_mult2 = 15,
  parameter coeff_int_mult3 = 2, parameter coeff_dec_mult3 = 15,
  parameter coeff_int_mult4 = 2, parameter coeff_dec_mult4 = 15,
  parameter coeff_int_mult5 = 2, parameter coeff_dec_mult5 = 15,
  
  // Dynamically calculated sum widths
  parameter group1_sum_width = 12,
  parameter group2_sum_width = 11,
  parameter group3_sum_width = 11,
  parameter group4_sum_width = 12,
  parameter group5_sum_width = 12,
  
  parameter pixel_int_width = 9,
  parameter pixel_dec_width = 0
)
(
  input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
  input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
  input [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
  input [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
  input [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
  
  input [(pixel_int_width + pixel_dec_width -1):0] pixel1, pixel2, pixel3, pixel4, pixel5,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel6, pixel7, pixel8, pixel9, pixel10,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel11, pixel12, pixel13, pixel14, pixel15,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel16, pixel17, pixel18, pixel19, pixel20,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel21, pixel22, pixel23, pixel24, pixel25,
    
  output signed [(coeff_int_mult1 + coeff_dec_mult1 + group1_sum_width - 1):0] result1,
  output signed [(coeff_int_mult2 + coeff_dec_mult2 + group2_sum_width - 1):0] result2,
  output signed [(coeff_int_mult3 + coeff_dec_mult3 + group3_sum_width - 1):0] result3,
  output signed [(coeff_int_mult4 + coeff_dec_mult4 + group4_sum_width - 1):0] result4,
  output signed [(coeff_int_mult5 + coeff_dec_mult5 + group5_sum_width - 1):0] result5
);
  
  wire signed [group1_sum_width - 1:0] group1_sum;
  wire signed [group2_sum_width - 1:0] group2_sum;
  wire signed [group3_sum_width - 1:0] group3_sum;
  wire signed [group4_sum_width - 1:0] group4_sum;
  wire signed [group5_sum_width - 1:0] group5_sum;

  assign group1_sum = pixel1 + pixel2 + pixel3 + pixel23 + pixel24 + pixel25;
  assign group2_sum = pixel4 + pixel5 + pixel21 + pixel22;
  assign group3_sum = pixel6 + pixel7 + pixel19 + pixel20;
  assign group4_sum = pixel8 + pixel9 +pixel10+pixel16+ pixel17 + pixel18;
  assign group5_sum = pixel11 + pixel12 + pixel13 + pixel14 + pixel15;
  
  // Use the specific sum_width for each fxp_mul instance
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, group1_sum_width) M1 (.ina(coeff1), .inb(group1_sum), .out(result1));
  fxp_mul #(coeff_int_mult2, coeff_dec_mult2, group2_sum_width) M2 (.ina(coeff2), .inb(group2_sum), .out(result2));
  fxp_mul #(coeff_int_mult3, coeff_dec_mult3, group3_sum_width) M3 (.ina(coeff3), .inb(group3_sum), .out(result3));
  fxp_mul #(coeff_int_mult4, coeff_dec_mult4, group4_sum_width) M4 (.ina(coeff4), .inb(group4_sum), .out(result4));
  fxp_mul #(coeff_int_mult5, coeff_dec_mult5, group5_sum_width) M5 (.ina(coeff5), .inb(group5_sum), .out(result5));

endmodule

module convolution_block_135
#(
  parameter coeff_int_mult1 = 2, parameter coeff_dec_mult1 = 15,
  parameter coeff_int_mult2 = 2, parameter coeff_dec_mult2 = 15,
  parameter coeff_int_mult3 = 2, parameter coeff_dec_mult3 = 15,
  parameter coeff_int_mult4 = 2, parameter coeff_dec_mult4 = 15,
  parameter coeff_int_mult5 = 2, parameter coeff_dec_mult5 = 15,
  
  // Dynamically calculated sum widths
  parameter group1_sum_width = 13,
  parameter group2_sum_width = 12,
  parameter group3_sum_width = 11,
  parameter group4_sum_width = 10,
  parameter group5_sum_width = 11,
  
  parameter pixel_int_width = 9,
  parameter pixel_dec_width = 0
)
(
  input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
  input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
  input [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
  input [(coeff_int_mult4 + coeff_dec_mult4 -1):0] coeff4,
  input [(coeff_int_mult5 + coeff_dec_mult5 -1):0] coeff5,
  
  input [(pixel_int_width + pixel_dec_width -1):0] pixel1, pixel2, pixel3, pixel4, pixel5,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel6, pixel7, pixel8, pixel9, pixel10,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel11, pixel12, pixel13, pixel14, pixel15,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel16, pixel17, pixel18, pixel19, pixel20,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel21, pixel22, pixel23, pixel24, pixel25,
    
  output signed [(coeff_int_mult1 + coeff_dec_mult1 + group1_sum_width - 1):0] result1,
  output signed [(coeff_int_mult2 + coeff_dec_mult2 + group2_sum_width - 1):0] result2,
  output signed [(coeff_int_mult3 + coeff_dec_mult3 + group3_sum_width - 1):0] result3,
  output signed [(coeff_int_mult4 + coeff_dec_mult4 + group4_sum_width - 1):0] result4,
  output signed [(coeff_int_mult5 + coeff_dec_mult5 + group5_sum_width - 1):0] result5
);
  
  wire signed [group1_sum_width - 1 : 0] group1_sum;
  wire signed [group2_sum_width - 1 : 0] group2_sum;
  wire signed [group3_sum_width - 1 : 0] group3_sum;
  wire signed [group4_sum_width - 1 : 0] group4_sum;
  wire signed [group5_sum_width - 1 : 0] group5_sum;

  // Grouped pixel additions based on common coefficients (example for 135° clustered kernel)
  assign group1_sum = pixel1 + pixel2 + pixel6 + pixel8 + pixel18 + pixel20 + pixel24 + pixel25 + pixel12 +pixel14 ;
  assign group2_sum = pixel3 + pixel9 + pixel11 + pixel15 + pixel17 + pixel23 ;
  assign group3_sum = pixel4 + pixel10 + pixel16 + pixel22;
  assign group4_sum = pixel5 + pixel21;
  assign group5_sum = pixel13+pixel19+pixel7;

  // Multipliers using grouped pixels and corresponding coefficients
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, group1_sum_width) M0 (.ina(coeff1), .inb(group1_sum), .out(result1));
  fxp_mul #(coeff_int_mult2, coeff_dec_mult2, group2_sum_width) M1 (.ina(coeff2), .inb(group2_sum), .out(result2));
  fxp_mul #(coeff_int_mult3, coeff_dec_mult3, group3_sum_width) M2 (.ina(coeff3), .inb(group3_sum), .out(result3));
  fxp_mul #(coeff_int_mult4, coeff_dec_mult4, group4_sum_width) M3 (.ina(coeff4), .inb(group4_sum), .out(result4));
  fxp_mul #(coeff_int_mult5, coeff_dec_mult5, group5_sum_width) M4 (.ina(coeff5), .inb(group5_sum), .out(result5));

endmodule

module convolution_block_180
#(
  parameter coeff_int_mult1 = 2, parameter coeff_dec_mult1 = 15,
  parameter coeff_int_mult2 = 2, parameter coeff_dec_mult2 = 15,
  parameter coeff_int_mult3 = 2, parameter coeff_dec_mult3 = 15,
  
  // Dynamically calculated sum widths
  parameter sum1_width = 13,
  parameter sum2_width = 13,
  parameter sum3_width = 12,
  
  parameter pixel_int_width = 9,
  parameter pixel_dec_width = 0
)
(
  input [(coeff_int_mult1 + coeff_dec_mult1 -1):0] coeff1,
  input [(coeff_int_mult2 + coeff_dec_mult2 -1):0] coeff2,
  input [(coeff_int_mult3 + coeff_dec_mult3 -1):0] coeff3,
  
  input [(pixel_int_width + pixel_dec_width -1):0] pixel1, pixel2, pixel3, pixel4, pixel5,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel6, pixel7, pixel8, pixel9, pixel10,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel11, pixel12, pixel13, pixel14, pixel15,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel16, pixel17, pixel18, pixel19, pixel20,
  input [(pixel_int_width + pixel_dec_width -1):0] pixel21, pixel22, pixel23, pixel24, pixel25,
    
  output signed [(coeff_int_mult1 + coeff_dec_mult1 + sum1_width - 1):0] result1,
  output signed [(coeff_int_mult2 + coeff_dec_mult2 + sum2_width - 1):0] result2,
  output signed [(coeff_int_mult3 + coeff_dec_mult3 + sum3_width - 1):0] result3
);
  
  wire signed [sum1_width - 1:0] sum1;
  wire signed [sum2_width - 1:0] sum2;
  wire signed [sum3_width - 1:0] sum3;
      
  assign sum1 = pixel1 + pixel5 + pixel6 + pixel10 + pixel11 + pixel15 + pixel16 + pixel20 + pixel21 + pixel25;
  assign sum2 = pixel2 + pixel4 + pixel7 + pixel9 + pixel12 + pixel14 + pixel17 + pixel19 + pixel22 + pixel24;
  assign sum3 = pixel3 + pixel8 + pixel13 + pixel18 + pixel23;
    
  // Clustered multiplications using unique coefficients
  fxp_mul #(coeff_int_mult1, coeff_dec_mult1, sum1_width) M_cluster0 (.ina(coeff1), .inb(sum1), .out(result1));
  fxp_mul #(coeff_int_mult2, coeff_dec_mult2, sum2_width) M_cluster1 (.ina(coeff2), .inb(sum2), .out(result2));
  fxp_mul #(coeff_int_mult3, coeff_dec_mult3, sum3_width) M_cluster2 (.ina(coeff3), .inb(sum3), .out(result3));

endmodule

module fxp_mul # (
  parameter IN_IWA = 2,
  parameter IN_FWA = 15,
  parameter IN_B_WIDTH = 12 // This parameter now represents the width of the 'inb' input
)(
  input  wire [IN_IWA+IN_FWA-1:0] ina,
  input  wire [IN_B_WIDTH-1:0] inb,
  output wire [IN_IWA + IN_FWA + IN_B_WIDTH - 1:0] out // Output width adjusted based on IN_B_WIDTH
);

assign out = ($signed(ina) * $signed(inb));

endmodule

module BRAM_read_control
# (
  parameter BRAM_width = 516,
  parameter BRAM_height = 266256,
  parameter kernel_size = 5
)
(
  input  clock,
  input  reset,
  output reg  [18:0]  pixel_addr,
  output reg          data_ready
);

reg [3:0] state;
reg [9:0] column_number;
reg [18:0] row_number;
parameter image_width = 512;
      
always @ (posedge clock or posedge reset)
  if (reset)
    begin
      pixel_addr     <= 0;
      row_number     <= 0;
      column_number  <= 0;
      state          <= 0;
    end
  else
    begin
      case (state)
      0: begin
          pixel_addr  <= 0;
          row_number  <= 0;
          column_number  <= 0;
          state          <= 1;
        end
        
      1: begin
          pixel_addr  <= (row_number*516 + column_number); // 516 is BRAM_width
          data_ready  <= 0;
          state          <= 2;      
        end
        
      2: begin
          column_number  <= (column_number == (image_width-1))? 0 : column_number + 1;
          row_number     <= (column_number == (image_width-1))? row_number + 1 : row_number;
          data_ready     <= 1;
          state          <= (row_number == (image_width))? 0 : 1; // Corrected height check
        end

      default : state <= 0;      
      endcase
    end
endmodule
