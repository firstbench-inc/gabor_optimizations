
// Fully completed conv.sv module with all angle mappings
module conv #(`include "45conv_param.svh")
(
  input logic clk,
  input logic rst,
  input logic [pixel_int_width+pixel_dec_width-1:0]  pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8, pixel9, pixel10, pixel11,
  pixel12, pixel13, pixel14, pixel15, pixel16, pixel17, pixel18, pixel19, pixel20, pixel21,
  pixel22, pixel23, pixel24, pixel25,
  output logic signed [result_add_width-1:0] add_out_45_5, add_out_45_3,
  output logic signed [result_add_width-1:0] add_out_90, add_out_135, add_out_180,
  output logic data_ready,
  output [18:0] image_BRAM_addr
  );

  logic  [(pixel_int_width + pixel_dec_width -1):0]  image_BRAM_dataout_ext;

  // Result signals for angle 45
  logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0] result3_1_45, result3_2_45, result3_3_45;
  logic signed [(coeff1_int_mult4 + coeff1_dec_mult4 + pixel_int_width + pixel_dec_width -1):0] result5_1_45, result5_2_45, result5_3_45, result5_4_45, result5_5_45;

  // Coefficients for 45
  logic [17:0] coeff45_5[4:0];
  logic [17:0] coeff45_3[2:0];

  // Coefficients for 90, 135, 180

  logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0]
  result90_1, result90_2, result90_3, result90_4, result90_5;

  logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0]
  result135_1, result135_2, result135_3, result135_4, result135_5;

  logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0]
  result180_1, result180_2, result180_3;


  // Result signals for angle 90, 135, 180
  logic [17:0] coeff90 [4:0];
    logic [17:0] coeff135 [4:0];
    logic [17:0] coeff180 [2:0];

  // Reset and Coefficient Initialization
  always_ff @(posedge clk or negedge rst) begin 
    if (!rst) begin
      coeff45_3[0] <= 18'd0; coeff45_3[1] <= 18'd0; coeff45_3[2] <= 18'd0;
      coeff45_5[0] <= 18'd0; coeff45_5[1] <= 18'd0; coeff45_5[2] <= 18'd0; coeff45_5[3] <= 18'd0; coeff45_5[4] <= 18'd0;
      for (int i = 0; i < 13; i++) begin
        coeff90[i] <= 18'd0;
        coeff135[i] <= 18'd0;
        coeff180[i] <= 18'd0;
      end
    end else begin
      coeff45_5[0] <= 18'b111101111110111011;
      coeff45_5[1] <= 18'b000010010010101111;
      coeff45_5[2] <= 18'b000111101011010011;
      coeff45_5[3] <= 18'b001011100111100111;
      coeff45_5[4] <= 18'b001111000000001010;
      coeff45_3[0] <= 18'b111111101101010000;
      coeff45_3[1] <= 18'b000111101011010011;
      coeff45_3[2] <= 18'b001101001010000010; 
      coeff90[0] <= 18b'111101111110111010;
      coeff90[1] <= 18b'000010010010110000;
      coeff90[2] <= 18b'000111101011010100;
      coeff90[3] <= 18b'001011100111100111;
      coeff90[4] <= 18b'001111001010110011;
      coeff135[0] <= 18b'001100100111100100;
      coeff135[1] <= 18b'000101110110110000;
      coeff135[2] <= 18b'111110000100100110;
      coeff135[3] <= 18b'111000100011000111;
      coeff135[4] <= 18b'001111101001010000;
      coeff180[0] <= 18b'111111010110011000;
      coeff180[1] <= 18b'001010000101110000;
      coeff180[2] <= 18b'001111011010101101;
     


      // TODO: Fill proper coeffs for 90, 135, 180 here
    end
  end

  // Instantiating convolution blocks
  convolution_block #(`include "45conv_param.svh")CB_45 (
    .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5), .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8),
    .pixel9(pixel9), .pixel10(pixel10), .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
    .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20), .pixel21(pixel21), .pixel22(pixel22),
    .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
    .coeff1(coeff45_5[0]), .coeff2(coeff45_5[1]), .coeff3(coeff45_5[2]), .coeff4(coeff45_5[3]), .coeff5(coeff45_5[4]),
    .coeff6(coeff45_3[0]), .coeff7(coeff45_3[1]), .coeff8(coeff45_3[2]),
    .result5_1(result5_1_45), .result5_2(result5_2_45), .result5_3(result5_3_45), .result5_4(result5_4_45), .result5_5(result5_5_45),
    .result3_1(result3_1_45), .result3_2(result3_2_45), .result3_3(result3_3_45)
    );


    convolution_block_90 #(`include "45conv_param.svh") CB_90 (
      .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
      .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
      .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
      .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
      .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
      .coeff1(coeff90[0]), .coeff2(coeff90[1]), .coeff3(coeff90[2]), .coeff4(coeff90[3]), .coeff5(coeff90[4]),
      .result1(result90_1), .result2(result90_2), .result3(result90_3), .result4(result90_4), .result5(result90_5)
      );


      convolution_block_135 #(`include "45conv_param.svh") CB_135 (
        .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
        .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
        .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
        .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
        .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
        .coeff1(coeff135[0]), .coeff2(coeff135[1]), .coeff3(coeff135[2]), .coeff4(coeff135[3]), .coeff5(coeff135[4]),
        .result1(result135_1), .result2(result135_2), .result3(result135_3), .result4(result135_4), .result5(result135_5)
        );


        convolution_block_180 #(`include "45conv_param.svh") CB_180 (
          .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
          .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
          .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
          .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
          .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
          .coeff1(coeff180[0]), .coeff2(coeff180[1]), .coeff3(coeff180[2]),
          .result1(result180_1), .result2(result180_2), .result3(result180_3)
          );
          ram #(`include "45conv_param.svh") image_BRAM (
            .clk(clk),
            .rst(rst),
            .pixel_addr(image_BRAM_addr),
            .data_ready(data_ready)    
            );

            // Output Adder
            always_ff @(posedge clk or negedge rst) begin
              if (!rst) begin
                add_out_45_3 <= 0;
                add_out_45_5 <= 0;
                add_out_90   <= 0;
                add_out_135  <= 0;
                add_out_180  <= 0;
              end else begin
                add_out_45_5 <= result5_1_45 + result5_2_45 + result5_3_45 + result5_4_45 + result5_5_45;
                add_out_45_3 <= result3_1_45 + result3_2_45 + result3_3_45;

                add_out_90   <= result90_1 + result90_2 + result90_3 + result90_4 + result90_5;
                add_out_135  <= result135_1 + result135_2 + result135_3 + result135_4 + result135_5;
                add_out_180  <= result180_1 + result180_2 + result180_3;
              end
            end

            //  function automatic signed [result_add_width-1:0] sum(input logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0] arr [12:0]);
            //     sum = 0;
            //   for (int i = 0; i < 13; i++) sum += arr[i];
            //endfunction

            endmodule

