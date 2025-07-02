
// Fully completed conv.sv module with all angle mappings
module conv #(
  parameter  coeff1_int_mult1 = 2,
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
  parameter  sum_width = 12,
  parameter  kernel_size = 5
)
(
  input logic clk,
  input logic rst,
  input logic [pixel_int_width+pixel_dec_width-1:0]  pixel1, pixel2, pixel3, pixel4, pixel5, pixel6, pixel7, pixel8, pixel9, pixel10, pixel11,
  pixel12, pixel13, pixel14, pixel15, pixel16, pixel17, pixel18, pixel19, pixel20, pixel21,
  pixel22, pixel23, pixel24, pixel25,
  output logic signed [result_add_width-1:0] add_out_45_5,
  output logic signed [result_add_width-1:0] add_out_90, add_out_135, add_out_180,
  output logic data_ready,

  output [18:0] image_BRAM_addr
  );

  logic signed [30:0] result45temp1, result45temp2,result45temp3,result45temp4,result45temp5;
logic signed [30:0] result90temp1, result90temp2,result90temp3,result90temp4,result90temp5;

logic signed [30:0] result135temp1, result135temp2,result135temp3,result135temp4,result135temp5;

logic signed [30:0] result180temp1, result180temp2,result180temp3;

  logic  [(pixel_int_width + pixel_dec_width -1):0]  image_BRAM_dataout_ext;

  // Result signals for angle 45

  logic signed [(coeff1_int_mult4 + coeff1_dec_mult4 + sum_width -1):0] result5_1_45, result5_2_45, result5_3_45, result5_4_45, result5_5_45;

  // Coefficients for 45
  logic [17:0] coeff45_5[4:0];


  // Coefficients for 90, 135, 180

  logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + sum_width -1):0]
  result90_1, result90_2, result90_3, result90_4, result90_5;

  logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + sum_width -1):0]
  result135_1, result135_2, result135_3, result135_4, result135_5;

  logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + sum_width -1):0]
  result180_1, result180_2, result180_3;


  // Result signals for angle 90, 135, 180
  logic [17:0] coeff90 [4:0];
    logic [17:0] coeff135 [4:0];
    logic [17:0] coeff180 [2:0];

  // Reset and Coefficient Initialization
  always @(posedge clk ) 
      begin

        coeff45_5[0] = 18'b111000100011001000;
        coeff45_5[1] = 18'b111110000100100111;
        coeff45_5[2] = 18'b000101110110110001;
        coeff45_5[3] = 18'b001100100111100011;
        coeff45_5[4] = 18'b001111101001010000;


      // TODO: Fill proper coeffs for 90, 135, 180 here
      
  end

always @(posedge clk ) 
      begin

       
      coeff90[0] = 18'b111101111110111010;
      coeff90[1] = 18'b000010010010110000;
      coeff90[2] = 18'b000111101011010100;
      coeff90[3] = 18'b001011100111100111;
      coeff90[4] = 18'b001111001010110011;
  end

always @(posedge clk ) 
      begin

       
      coeff135[0] <= 18'b001100100111100011;
      coeff135[1] <= 18'b000101110110110001;
      coeff135[2] <= 18'b111110000100100111;
      coeff135[3] <= 18'b111000100011001000;
      coeff135[4] <= 18'b001111101001010000;

  end

always @(posedge clk ) 
      begin

      coeff180[0] <= 18'b111111010110011000;
      coeff180[1] <= 18'b001010000101110000;
      coeff180[2] <= 18'b001111011010101101;
  end





  // Instantiating convolution blocks
  convolution_block_45 #(coeff1_int_mult1, coeff1_dec_mult1, coeff1_int_mult2, coeff1_dec_mult2, coeff1_int_mult3, coeff1_dec_mult3,
                    coeff1_int_mult4, coeff1_dec_mult4, coeff1_int_mult5, coeff1_dec_mult5,pixel_int_width, pixel_dec_width)
    CB_45 (
    .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5), .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8),
    .pixel9(pixel9), .pixel10(pixel10), .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
    .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20), .pixel21(pixel21), .pixel22(pixel22),
    .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
    .coeff1(coeff45_5[0][17:(17-(coeff1_int_mult1 + coeff1_dec_mult1-1))]), .coeff2(coeff45_5[1][17:(17-(coeff1_int_mult2 + coeff1_dec_mult2-1))]), .coeff3(coeff45_5[2][17:(17-(coeff1_int_mult3 + coeff1_dec_mult3-1))]), .coeff4(coeff45_5[3][17:(17-(coeff1_int_mult4 + coeff1_dec_mult4-1))]), .coeff5(coeff45_5[4][17:(17-(coeff1_int_mult5 + coeff1_dec_mult5-1))]),
    .result5_1(result5_1_45), .result5_2(result5_2_45), .result5_3(result5_3_45), .result5_4(result5_4_45), .result5_5(result5_5_45)
    );


    convolution_block_90 #(coeff2_int_mult1, coeff2_dec_mult1, coeff2_int_mult2, coeff2_dec_mult2, coeff2_int_mult3, coeff2_dec_mult3,
                    coeff2_int_mult4, coeff2_dec_mult4, coeff2_int_mult5, coeff2_dec_mult5,pixel_int_width, pixel_dec_width) CB_90 (
      .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
      .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
      .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
      .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
      .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
      .coeff1(coeff90[0][17:(17-(coeff2_int_mult1 + coeff2_dec_mult1-1))]), .coeff2(coeff90[1][17:(17-(coeff2_int_mult2 + coeff2_dec_mult2-1))]), .coeff3(coeff90[2][17:(17-(coeff2_int_mult3 + coeff2_dec_mult3-1))]), .coeff4(coeff90[3][17:(17-(coeff2_int_mult4 + coeff2_dec_mult4-1))]), .coeff5(coeff90[4][17:(17-(coeff2_int_mult5 + coeff2_dec_mult5-1))]),
      .result1(result90_1), .result2(result90_2), .result3(result90_3), .result4(result90_4), .result5(result90_5)
      );


      convolution_block_135 #(coeff3_int_mult1, coeff3_dec_mult1, coeff3_int_mult2, coeff3_dec_mult2, coeff3_int_mult3, coeff3_dec_mult3,
                    coeff3_int_mult4, coeff3_dec_mult4, coeff3_int_mult5, coeff3_dec_mult5,pixel_int_width, pixel_dec_width) CB_135 (
        .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
        .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
        .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
        .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
        .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
        .coeff1(coeff135[0][17:(17-(coeff3_int_mult1 + coeff3_dec_mult1-1))]), .coeff2(coeff135[1][17:(17-(coeff3_int_mult2 + coeff3_dec_mult2-1))]), .coeff3(coeff135[2][17:(17-(coeff3_int_mult3 + coeff3_dec_mult3-1))]), .coeff4(coeff135[3][17:(17-(coeff3_int_mult4 + coeff3_dec_mult4-1))]), .coeff5(coeff135[4][17:(17-(coeff3_int_mult5 + coeff3_dec_mult5-1))]),
        .result1(result135_1), .result2(result135_2), .result3(result135_3), .result4(result135_4), .result5(result135_5)
        );


        convolution_block_180 #(coeff4_int_mult1, coeff4_dec_mult1, coeff4_int_mult2, coeff4_dec_mult2, coeff4_int_mult3, coeff4_dec_mult3,pixel_int_width, pixel_dec_width) CB_180 (
          .pixel1(pixel1), .pixel2(pixel2), .pixel3(pixel3), .pixel4(pixel4), .pixel5(pixel5),
          .pixel6(pixel6), .pixel7(pixel7), .pixel8(pixel8), .pixel9(pixel9), .pixel10(pixel10),
          .pixel11(pixel11), .pixel12(pixel12), .pixel13(pixel13), .pixel14(pixel14), .pixel15(pixel15),
          .pixel16(pixel16), .pixel17(pixel17), .pixel18(pixel18), .pixel19(pixel19), .pixel20(pixel20),
          .pixel21(pixel21), .pixel22(pixel22), .pixel23(pixel23), .pixel24(pixel24), .pixel25(pixel25),
          .coeff1(coeff180[0][17:(17-(coeff4_int_mult1 + coeff4_dec_mult1-1))]), .coeff2(coeff180[1][17:(17-(coeff4_int_mult2 + coeff4_dec_mult2-1))]), .coeff3(coeff180[2][17:(17-(coeff4_int_mult3 + coeff4_dec_mult3-1))]),
          .result1(result180_1), .result2(result180_2), .result3(result180_3)
          );
          ram image_BRAM (
            .clk(clk),
            .rst(rst),
            .pixel_addr(image_BRAM_addr),
            .data_ready(data_ready)    
            );

            assign result90temp1 = {result90_1, {(15 - coeff2_dec_mult1){1'b0}}};
            assign result90temp2 = {result90_2, {(15 - coeff2_dec_mult2){1'b0}}};
            assign result90temp3 = {result90_3, {(15 - coeff2_dec_mult3){1'b0}}};
            assign result90temp4 = {result90_4, {(15 - coeff2_dec_mult4){1'b0}}};
            assign result90temp5 = {result90_5, {(15 - coeff2_dec_mult5){1'b0}}};

            assign result45temp1 = {result5_1_45, {(15 - coeff1_dec_mult1){1'b0}}};
            assign result45temp2 = {result5_2_45, {(15 - coeff1_dec_mult2){1'b0}}};
            assign result45temp3 = {result5_3_45, {(15 - coeff1_dec_mult3){1'b0}}};
            assign result45temp4 = {result5_4_45, {(15 - coeff1_dec_mult4){1'b0}}};
            assign result45temp5 = {result5_5_45, {(15 - coeff1_dec_mult5){1'b0}}};

            assign result180temp1 = {result180_1, {(15 - coeff4_dec_mult1){1'b0}}};
            assign result180temp2 = {result180_2, {(15 - coeff4_dec_mult2){1'b0}}};
            assign result180temp3 = {result180_3, {(15 - coeff4_dec_mult3){1'b0}}};

            assign result135temp1 = {result135_1, {(15 - coeff2_dec_mult1){1'b0}}};
            assign result135temp2 = {result135_2, {(15 - coeff3_dec_mult2){1'b0}}};
            assign result135temp3 = {result135_3, {(15 - coeff3_dec_mult3){1'b0}}};
            assign result135temp4 = {result135_4, {(15 - coeff3_dec_mult4){1'b0}}};
            assign result135temp5 = {result135_5, {(15 - coeff3_dec_mult5){1'b0}}};

            

            // Output Adder
            always_ff @(posedge clk or posedge rst) begin
              if (rst) begin
                
                add_out_45_5 <= 0;
                add_out_90   <= 0;
                add_out_135  <= 0;
                add_out_180  <= 0;
              end else begin
                add_out_45_5 <=result45temp1 +result45temp2 +result45temp3 +result45temp4 +result45temp5;
                add_out_90   <= result90temp1 + result90temp2 + result90temp3 + result90temp4 + result90temp5;
                add_out_135  <= result135temp1 + result135temp2 + result135temp3 + result135temp4 + result135temp5;
                add_out_180  <= result180temp1 + result180temp2 + result180temp3;
              end
            end

            //  function automatic signed [result_add_width-1:0] sum(input logic signed [(coeff1_int_mult1 + coeff1_dec_mult1 + pixel_int_width + pixel_dec_width -1):0] arr [12:0]);
            //     sum = 0;
            //   for (int i = 0; i < 13; i++) sum += arr[i];
            //endfunction

            endmodule

