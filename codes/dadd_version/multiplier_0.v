module multiplier10x7 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier10x7bit uut(inb, ina, out);

endmodule


module multiplier12x17 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier17x12bit uut(ina, inb, out);

endmodule


module multiplier11x6 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier11x6bit uut(inb, ina, out);

endmodule


module multiplier11x8 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier11x8bit uut(inb, ina, out);

endmodule


module multiplier11x11 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier11x11bit uut(ina, inb, out);

endmodule


module multiplier12x7 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier12x7bit uut(inb, ina, out);

endmodule


module multiplier12x10 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier12x10bit uut(inb, ina, out);

endmodule


module multiplier10x12 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier12x10bit uut(ina, inb, out);

endmodule


module multiplier12x11 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier12x11bit uut(inb, ina, out);

endmodule


module multiplier11x12 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier12x11bit uut(ina, inb, out);

endmodule


module multiplier13x11 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier13x11bit uut(inb, ina, out);

endmodule


module multiplier11x14 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier14x11bit uut(ina, inb, out);

endmodule


module multiplier12x14 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier14x12bit uut(ina, inb, out);

endmodule

module multiplier11x16 # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
//   input  clk,
//   input  reset,
    input  wire [IN_IWA+IN_FWA-1:0] ina,
    input  wire [IN_IWB+IN_FWB-1:0] inb,
    output wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

wire  [IN_IWA+IN_FWA-1:0] ina_temp;
wire  [IN_IWB+IN_FWB-1:0] inb_temp;
wire [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out_temp;
localparam WRI = IN_IWA + IN_IWB;
localparam WRF = IN_FWA + IN_FWB;

/// Without PGM
signedDaddaTreeMultiplier16x11bit uut(ina, inb, out);

endmodule


module signedDaddaTreeMultiplier10x7bit(input [9:0] A, input [6:0]B, output [16:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	NandGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[0], B[1], P_1_0);
	AndGate uut11(A[1], B[1], P_1_1);
	AndGate uut12(A[2], B[1], P_1_2);
	AndGate uut13(A[3], B[1], P_1_3);
	AndGate uut14(A[4], B[1], P_1_4);
	AndGate uut15(A[5], B[1], P_1_5);
	AndGate uut16(A[6], B[1], P_1_6);
	AndGate uut17(A[7], B[1], P_1_7);
	AndGate uut18(A[8], B[1], P_1_8);
	NandGate uut19(A[9], B[1], P_1_9);
	AndGate uut20(A[0], B[2], P_2_0);
	AndGate uut21(A[1], B[2], P_2_1);
	AndGate uut22(A[2], B[2], P_2_2);
	AndGate uut23(A[3], B[2], P_2_3);
	AndGate uut24(A[4], B[2], P_2_4);
	AndGate uut25(A[5], B[2], P_2_5);
	AndGate uut26(A[6], B[2], P_2_6);
	AndGate uut27(A[7], B[2], P_2_7);
	AndGate uut28(A[8], B[2], P_2_8);
	NandGate uut29(A[9], B[2], P_2_9);
	AndGate uut30(A[0], B[3], P_3_0);
	AndGate uut31(A[1], B[3], P_3_1);
	AndGate uut32(A[2], B[3], P_3_2);
	AndGate uut33(A[3], B[3], P_3_3);
	AndGate uut34(A[4], B[3], P_3_4);
	AndGate uut35(A[5], B[3], P_3_5);
	AndGate uut36(A[6], B[3], P_3_6);
	AndGate uut37(A[7], B[3], P_3_7);
	AndGate uut38(A[8], B[3], P_3_8);
	NandGate uut39(A[9], B[3], P_3_9);
	AndGate uut40(A[0], B[4], P_4_0);
	AndGate uut41(A[1], B[4], P_4_1);
	AndGate uut42(A[2], B[4], P_4_2);
	AndGate uut43(A[3], B[4], P_4_3);
	AndGate uut44(A[4], B[4], P_4_4);
	AndGate uut45(A[5], B[4], P_4_5);
	AndGate uut46(A[6], B[4], P_4_6);
	AndGate uut47(A[7], B[4], P_4_7);
	AndGate uut48(A[8], B[4], P_4_8);
	NandGate uut49(A[9], B[4], P_4_9);
	AndGate uut50(A[0], B[5], P_5_0);
	AndGate uut51(A[1], B[5], P_5_1);
	AndGate uut52(A[2], B[5], P_5_2);
	AndGate uut53(A[3], B[5], P_5_3);
	AndGate uut54(A[4], B[5], P_5_4);
	AndGate uut55(A[5], B[5], P_5_5);
	AndGate uut56(A[6], B[5], P_5_6);
	AndGate uut57(A[7], B[5], P_5_7);
	AndGate uut58(A[8], B[5], P_5_8);
	NandGate uut59(A[9], B[5], P_5_9);
	AndGate uut60(A[0], B[6], P_6_0);
	AndGate uut61(A[1], B[6], P_6_1);
	AndGate uut62(A[2], B[6], P_6_2);
	AndGate uut63(A[3], B[6], P_6_3);
	AndGate uut64(A[4], B[6], P_6_4);
	AndGate uut65(A[5], B[6], P_6_5);
	AndGate uut66(A[6], B[6], P_6_6);
	AndGate uut67(A[7], B[6], P_6_7);
	AndGate uut68(A[8], B[6], P_6_8);
	NandGate uut69(A[9], B[6], P_6_9);
	assign P_7_0 = P_6_0;
	assign P_7_1 = P_6_1;
	assign P_7_2 = P_6_2;
	assign P_7_3 = P_6_3;
	assign P_7_4 = P_6_4;
	assign P_7_5 = P_6_5;
	assign P_7_6 = P_6_6;
	assign P_7_7 = P_6_7;
	assign P_7_8 = P_6_8;
	assign P_7_9 = P_6_9;
	assign P_8_0 = P_7_0;
	assign P_8_1 = P_7_1;
	assign P_8_2 = P_7_2;
	assign P_8_3 = P_7_3;
	assign P_8_4 = P_7_4;
	assign P_8_5 = P_7_5;
	assign P_8_6 = P_7_6;
	assign P_8_7 = P_7_7;
	assign P_8_8 = P_7_8;
	NandGate uut70(A[0], B[6], P_9_0);
	NandGate uut71(A[1], B[6], P_9_1);
	NandGate uut72(A[2], B[6], P_9_2);
	NandGate uut73(A[3], B[6], P_9_3);
	NandGate uut74(A[4], B[6], P_9_4);
	NandGate uut75(A[5], B[6], P_9_5);
	NandGate uut76(A[6], B[6], P_9_6);
	NandGate uut77(A[7], B[6], P_9_7);
	HalfAdder uut78(P_0_6,P_1_5,s0,c0);
	FullAdder uut79(P_0_7,P_1_6,P_2_5,s1,c1);
	HalfAdder uut80(P_3_4,P_4_3,s2,c2);
	FullAdder uut81(P_0_8,P_1_7,P_2_6,s3,c3);
	FullAdder uut82(P_3_5,P_4_4,P_5_3,s4,c4);
	HalfAdder uut83(P_6_2,P_7_1,s5,c5);
	FullAdder uut84(P_0_9,P_1_8,P_2_7,s6,c6);
	FullAdder uut85(P_3_6,P_4_5,P_5_4,s7,c7);
	FullAdder uut86(P_6_3,P_7_2,P_8_1,s8,c8);
	HalfAdder uut87(P_9_0,c3,s9,c9);
	FullAdder uut88(1'b1,P_1_9,P_2_8,s10,c10);
	FullAdder uut89(P_3_7,P_4_6,P_5_5,s11,c11);
	FullAdder uut90(P_6_4,P_7_3,P_8_2,s12,c12);
	FullAdder uut91(P_9_1,c6,c7,s13,c13);
	FullAdder uut92(P_2_9,P_3_8,P_4_7,s14,c14);
	FullAdder uut93(P_5_6,P_6_5,P_7_4,s15,c15);
	FullAdder uut94(P_8_3,P_9_2,c10,s16,c16);
	FullAdder uut95(P_3_9,P_4_8,P_5_7,s17,c17);
	FullAdder uut96(P_6_6,P_7_5,P_8_4,s18,c18);
	FullAdder uut97(P_4_9,P_5_8,P_6_7,s19,c19);

	HalfAdder uut98(P_0_4,P_1_3,s20,c20);
	FullAdder uut99(P_0_5,P_1_4,P_2_3,s21,c21);
	HalfAdder uut100(P_3_2,P_4_1,s22,c22);
	FullAdder uut101(P_2_4,P_3_3,P_4_2,s23,c23);
	FullAdder uut102(P_5_1,P_6_0,s0,s24,c24);
	FullAdder uut103(P_5_2,P_6_1,P_7_0,s25,c25);
	FullAdder uut104(c0,s1,s2,s26,c26);
	FullAdder uut105(P_8_0,c1,c2,s27,c27);
	FullAdder uut106(s3,s4,s5,s28,c28);
	FullAdder uut107(c4,c5,s6,s29,c29);
	FullAdder uut108(s7,s8,s9,s30,c30);
	FullAdder uut109(c8,c9,s10,s31,c31);
	FullAdder uut110(s11,s12,s13,s32,c32);
	FullAdder uut111(c11,c12,c13,s33,c33);
	FullAdder uut112(s14,s15,s16,s34,c34);
	FullAdder uut113(P_9_3,c14,c15,s35,c35);
	FullAdder uut114(c16,s17,s18,s36,c36);
	FullAdder uut115(P_7_6,P_8_5,P_9_4,s37,c37);
	FullAdder uut116(c17,c18,s19,s38,c38);
	FullAdder uut117(P_5_9,P_6_8,P_7_7,s39,c39);
	FullAdder uut118(P_8_6,P_9_5,c19,s40,c40);
	FullAdder uut119(P_6_9,P_7_8,P_8_7,s41,c41);

	HalfAdder uut120(P_0_3,P_1_2,s42,c42);
	FullAdder uut121(P_2_2,P_3_1,P_4_0,s43,c43);
	FullAdder uut122(P_5_0,c20,s21,s44,c44);
	FullAdder uut123(c21,c22,s23,s45,c45);
	FullAdder uut124(c23,c24,s25,s46,c46);
	FullAdder uut125(c25,c26,s27,s47,c47);
	FullAdder uut126(c27,c28,s29,s48,c48);
	FullAdder uut127(c29,c30,s31,s49,c49);
	FullAdder uut128(c31,c32,s33,s50,c50);
	FullAdder uut129(c33,c34,s35,s51,c51);
	FullAdder uut130(c35,c36,s37,s52,c52);
	FullAdder uut131(c37,c38,s39,s53,c53);
	FullAdder uut132(P_9_6,c39,c40,s54,c54);
	FullAdder uut133(P_7_9,P_8_8,P_9_7,s55,c55);

	HalfAdder uut134(P_0_2,P_1_1,s56,c56);
	FullAdder uut135(P_2_1,P_3_0,s42,s57,c57);
	FullAdder uut136(s20,c42,s43,s58,c58);
	FullAdder uut137(s22,c43,s44,s59,c59);
	FullAdder uut138(s24,c44,s45,s60,c60);
	FullAdder uut139(s26,c45,s46,s61,c61);
	FullAdder uut140(s28,c46,s47,s62,c62);
	FullAdder uut141(s30,c47,s48,s63,c63);
	FullAdder uut142(s32,c48,s49,s64,c64);
	FullAdder uut143(s34,c49,s50,s65,c65);
	FullAdder uut144(s36,c50,s51,s66,c66);
	FullAdder uut145(s38,c51,s52,s67,c67);
	FullAdder uut146(s40,c52,s53,s68,c68);
	FullAdder uut147(s41,c53,s54,s69,c69);
	FullAdder uut148(c41,c54,s55,s70,c70);

	wire [15:0] operandA;
	assign operandA = {c69,c68,c67,c66,c65,c64,c63,c62,c61,c60,c59,c58,c57,c56,P_2_0,P_0_1};
	wire [15:0] operandB;
	assign operandB = {s70,s69,s68,s67,s66,s65,s64,s63,s62,s61,s60,s59,s58,s57,s56,P_1_0};
	wire [16:0] Sum;
	unsignedBrentKungAdder16bit uut149(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
endmodule
/* Top Module unsignedBrentKungAdder16bit */
module unsignedBrentKungAdder16bit(input [15:0]A, input [15:0]B, output [16:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);

	/* First processing stage */

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut16(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut17(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut18(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut19(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut20(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut21(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut22(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut23(P015,G015, G014,P014,P115,G115);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut24(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut25(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut26(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut27(P115,G115, G113,P113,P215,G215);

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut28(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut29(P215,G215, G211,P211,P315,G315);

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut30(P315,G315,G37, P415, G415);

	/* Second processing stage */

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;
	assign P52 = P42;
	assign G52 = G42;
	assign P53 = P43;
	assign G53 = G43;
	assign P54 = P44;
	assign G54 = G44;
	assign P55 = P45;
	assign G55 = G45;
	assign P56 = P46;
	assign G56 = G46;
	assign P57 = P47;
	assign G57 = G47;
	assign P58 = P48;
	assign G58 = G48;
	assign P59 = P49;
	assign G59 = G49;
	assign P510 = P410;
	assign G510 = G410;
	GrayCell uut31(P411,G411,G47, P511, G511);
	assign P512 = P412;
	assign G512 = G412;
	assign P513 = P413;
	assign G513 = G413;
	assign P514 = P414;
	assign G514 = G414;
	assign P515 = P415;
	assign G515 = G415;

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	GrayCell uut32(P55,G55,G53, P65, G65);
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	GrayCell uut33(P59,G59,G57, P69, G69);
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	GrayCell uut34(P513,G513,G511, P613, G613);
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	GrayCell uut35(P62,G62,G61, P72, G72);
	assign P73 = P63;
	assign G73 = G63;
	GrayCell uut36(P64,G64,G63, P74, G74);
	assign P75 = P65;
	assign G75 = G65;
	GrayCell uut37(P66,G66,G65, P76, G76);
	assign P77 = P67;
	assign G77 = G67;
	GrayCell uut38(P68,G68,G67, P78, G78);
	assign P79 = P69;
	assign G79 = G69;
	GrayCell uut39(P610,G610,G69, P710, G710);
	assign P711 = P611;
	assign G711 = G611;
	GrayCell uut40(P612,G612,G611, P712, G712);
	assign P713 = P613;
	assign G713 = G613;
	GrayCell uut41(P614,G614,G613, P714, G714);
	assign P715 = P615;
	assign G715 = G615;

	assign carry0 = G70;
	assign carry1 = G71;
	assign carry2 = G72;
	assign carry3 = G73;
	assign carry4 = G74;
	assign carry5 = G75;
	assign carry6 = G76;
	assign carry7 = G77;
	assign carry8 = G78;
	assign carry9 = G79;
	assign carry10 = G710;
	assign carry11 = G711;
	assign carry12 = G712;
	assign carry13 = G713;
	assign carry14 = G714;
	assign carry15 = G715;
	assign Sum[0] = P00;
	XorGate uut42(P01, carry0, Sum[1]);
	XorGate uut43(P02, carry1, Sum[2]);
	XorGate uut44(P03, carry2, Sum[3]);
	XorGate uut45(P04, carry3, Sum[4]);
	XorGate uut46(P05, carry4, Sum[5]);
	XorGate uut47(P06, carry5, Sum[6]);
	XorGate uut48(P07, carry6, Sum[7]);
	XorGate uut49(P08, carry7, Sum[8]);
	XorGate uut50(P09, carry8, Sum[9]);
	XorGate uut51(P010, carry9, Sum[10]);
	XorGate uut52(P011, carry10, Sum[11]);
	XorGate uut53(P012, carry11, Sum[12]);
	XorGate uut54(P013, carry12, Sum[13]);
	XorGate uut55(P014, carry13, Sum[14]);
	XorGate uut56(P015, carry14, Sum[15]);
	assign Sum[16] = carry15;
endmodule


module signedDaddaTreeMultiplier17x12bit(input [16:0] A, input [11:0]B, output [28:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11; 	wire P_0_12; 	wire P_0_13; 	wire P_0_14; 	wire P_0_15; 	wire P_0_16;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11; 	wire P_1_12; 	wire P_1_13; 	wire P_1_14; 	wire P_1_15; 	wire P_1_16;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11; 	wire P_2_12; 	wire P_2_13; 	wire P_2_14; 	wire P_2_15; 	wire P_2_16;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11; 	wire P_3_12; 	wire P_3_13; 	wire P_3_14; 	wire P_3_15; 	wire P_3_16;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11; 	wire P_4_12; 	wire P_4_13; 	wire P_4_14; 	wire P_4_15; 	wire P_4_16;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11; 	wire P_5_12; 	wire P_5_13; 	wire P_5_14; 	wire P_5_15; 	wire P_5_16;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11; 	wire P_6_12; 	wire P_6_13; 	wire P_6_14; 	wire P_6_15; 	wire P_6_16;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11; 	wire P_7_12; 	wire P_7_13; 	wire P_7_14; 	wire P_7_15; 	wire P_7_16;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11; 	wire P_8_12; 	wire P_8_13; 	wire P_8_14; 	wire P_8_15; 	wire P_8_16;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11; 	wire P_9_12; 	wire P_9_13; 	wire P_9_14; 	wire P_9_15; 	wire P_9_16;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11; 	wire P_10_12; 	wire P_10_13; 	wire P_10_14; 	wire P_10_15; 	wire P_10_16;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11; 	wire P_11_12; 	wire P_11_13; 	wire P_11_14; 	wire P_11_15; 	wire P_11_16;
	wire P_12_0; 	wire P_12_1; 	wire P_12_2; 	wire P_12_3; 	wire P_12_4; 	wire P_12_5; 	wire P_12_6; 	wire P_12_7; 	wire P_12_8; 	wire P_12_9; 	wire P_12_10; 	wire P_12_11; 	wire P_12_12; 	wire P_12_13; 	wire P_12_14; 	wire P_12_15; 	wire P_12_16;
	wire P_13_0; 	wire P_13_1; 	wire P_13_2; 	wire P_13_3; 	wire P_13_4; 	wire P_13_5; 	wire P_13_6; 	wire P_13_7; 	wire P_13_8; 	wire P_13_9; 	wire P_13_10; 	wire P_13_11; 	wire P_13_12; 	wire P_13_13; 	wire P_13_14; 	wire P_13_15; 	wire P_13_16;
	wire P_14_0; 	wire P_14_1; 	wire P_14_2; 	wire P_14_3; 	wire P_14_4; 	wire P_14_5; 	wire P_14_6; 	wire P_14_7; 	wire P_14_8; 	wire P_14_9; 	wire P_14_10; 	wire P_14_11; 	wire P_14_12; 	wire P_14_13; 	wire P_14_14; 	wire P_14_15; 	wire P_14_16;
	wire P_15_0; 	wire P_15_1; 	wire P_15_2; 	wire P_15_3; 	wire P_15_4; 	wire P_15_5; 	wire P_15_6; 	wire P_15_7; 	wire P_15_8; 	wire P_15_9; 	wire P_15_10; 	wire P_15_11; 	wire P_15_12; 	wire P_15_13; 	wire P_15_14; 	wire P_15_15; 	wire P_15_16;
	wire P_16_0; 	wire P_16_1; 	wire P_16_2; 	wire P_16_3; 	wire P_16_4; 	wire P_16_5; 	wire P_16_6; 	wire P_16_7; 	wire P_16_8; 	wire P_16_9; 	wire P_16_10; 	wire P_16_11; 	wire P_16_12; 	wire P_16_13; 	wire P_16_14; 	wire P_16_15; 	wire P_16_16;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;
	wire s104,c104;
	wire s105,c105;
	wire s106,c106;
	wire s107,c107;
	wire s108,c108;
	wire s109,c109;
	wire s110,c110;
	wire s111,c111;
	wire s112,c112;
	wire s113,c113;
	wire s114,c114;
	wire s115,c115;
	wire s116,c116;
	wire s117,c117;
	wire s118,c118;
	wire s119,c119;
	wire s120,c120;
	wire s121,c121;
	wire s122,c122;
	wire s123,c123;
	wire s124,c124;
	wire s125,c125;
	wire s126,c126;
	wire s127,c127;
	wire s128,c128;
	wire s129,c129;
	wire s130,c130;
	wire s131,c131;
	wire s132,c132;
	wire s133,c133;
	wire s134,c134;
	wire s135,c135;
	wire s136,c136;
	wire s137,c137;
	wire s138,c138;
	wire s139,c139;
	wire s140,c140;
	wire s141,c141;
	wire s142,c142;
	wire s143,c143;
	wire s144,c144;
	wire s145,c145;
	wire s146,c146;
	wire s147,c147;
	wire s148,c148;
	wire s149,c149;
	wire s150,c150;
	wire s151,c151;
	wire s152,c152;
	wire s153,c153;
	wire s154,c154;
	wire s155,c155;
	wire s156,c156;
	wire s157,c157;
	wire s158,c158;
	wire s159,c159;
	wire s160,c160;
	wire s161,c161;
	wire s162,c162;
	wire s163,c163;
	wire s164,c164;
	wire s165,c165;
	wire s166,c166;
	wire s167,c167;
	wire s168,c168;
	wire s169,c169;
	wire s170,c170;
	wire s171,c171;
	wire s172,c172;
	wire s173,c173;
	wire s174,c174;
	wire s175,c175;
	wire s176,c176;
	wire s177,c177;
	wire s178,c178;
	wire s179,c179;
	wire s180,c180;
	wire s181,c181;
	wire s182,c182;
	wire s183,c183;
	wire s184,c184;
	wire s185,c185;
	wire s186,c186;
	wire s187,c187;
	wire s188,c188;
	wire s189,c189;
	wire s190,c190;
	wire s191,c191;
	wire s192,c192;
	wire s193,c193;
	wire s194,c194;
	wire s195,c195;
	wire s196,c196;
	wire s197,c197;
	wire s198,c198;
	wire s199,c199;
	wire s200,c200;
	wire s201,c201;
	wire s202,c202;
	wire s203,c203;
	wire s204,c204;
	wire s205,c205;
	wire s206,c206;
	wire s207,c207;
	wire s208,c208;
	wire s209,c209;
	wire s210,c210;
	wire s211,c211;
	wire s212,c212;
	wire s213,c213;
	wire s214,c214;
	wire s215,c215;
	wire s216,c216;
	wire s217,c217;
	wire s218,c218;
	wire s219,c219;
	wire s220,c220;
	wire s221,c221;
	wire s222,c222;
	wire s223,c223;
	wire s224,c224;
	wire s225,c225;
	wire s226,c226;
	wire s227,c227;
	wire s228,c228;
	wire s229,c229;
	wire s230,c230;
	wire s231,c231;
	wire s232,c232;
	wire s233,c233;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[11], B[0], P_0_11);
	AndGate uut12(A[12], B[0], P_0_12);
	AndGate uut13(A[13], B[0], P_0_13);
	AndGate uut14(A[14], B[0], P_0_14);
	AndGate uut15(A[15], B[0], P_0_15);
	NandGate uut16(A[16], B[0], P_0_16);
	AndGate uut17(A[0], B[1], P_1_0);
	AndGate uut18(A[1], B[1], P_1_1);
	AndGate uut19(A[2], B[1], P_1_2);
	AndGate uut20(A[3], B[1], P_1_3);
	AndGate uut21(A[4], B[1], P_1_4);
	AndGate uut22(A[5], B[1], P_1_5);
	AndGate uut23(A[6], B[1], P_1_6);
	AndGate uut24(A[7], B[1], P_1_7);
	AndGate uut25(A[8], B[1], P_1_8);
	AndGate uut26(A[9], B[1], P_1_9);
	AndGate uut27(A[10], B[1], P_1_10);
	AndGate uut28(A[11], B[1], P_1_11);
	AndGate uut29(A[12], B[1], P_1_12);
	AndGate uut30(A[13], B[1], P_1_13);
	AndGate uut31(A[14], B[1], P_1_14);
	AndGate uut32(A[15], B[1], P_1_15);
	NandGate uut33(A[16], B[1], P_1_16);
	AndGate uut34(A[0], B[2], P_2_0);
	AndGate uut35(A[1], B[2], P_2_1);
	AndGate uut36(A[2], B[2], P_2_2);
	AndGate uut37(A[3], B[2], P_2_3);
	AndGate uut38(A[4], B[2], P_2_4);
	AndGate uut39(A[5], B[2], P_2_5);
	AndGate uut40(A[6], B[2], P_2_6);
	AndGate uut41(A[7], B[2], P_2_7);
	AndGate uut42(A[8], B[2], P_2_8);
	AndGate uut43(A[9], B[2], P_2_9);
	AndGate uut44(A[10], B[2], P_2_10);
	AndGate uut45(A[11], B[2], P_2_11);
	AndGate uut46(A[12], B[2], P_2_12);
	AndGate uut47(A[13], B[2], P_2_13);
	AndGate uut48(A[14], B[2], P_2_14);
	AndGate uut49(A[15], B[2], P_2_15);
	NandGate uut50(A[16], B[2], P_2_16);
	AndGate uut51(A[0], B[3], P_3_0);
	AndGate uut52(A[1], B[3], P_3_1);
	AndGate uut53(A[2], B[3], P_3_2);
	AndGate uut54(A[3], B[3], P_3_3);
	AndGate uut55(A[4], B[3], P_3_4);
	AndGate uut56(A[5], B[3], P_3_5);
	AndGate uut57(A[6], B[3], P_3_6);
	AndGate uut58(A[7], B[3], P_3_7);
	AndGate uut59(A[8], B[3], P_3_8);
	AndGate uut60(A[9], B[3], P_3_9);
	AndGate uut61(A[10], B[3], P_3_10);
	AndGate uut62(A[11], B[3], P_3_11);
	AndGate uut63(A[12], B[3], P_3_12);
	AndGate uut64(A[13], B[3], P_3_13);
	AndGate uut65(A[14], B[3], P_3_14);
	AndGate uut66(A[15], B[3], P_3_15);
	NandGate uut67(A[16], B[3], P_3_16);
	AndGate uut68(A[0], B[4], P_4_0);
	AndGate uut69(A[1], B[4], P_4_1);
	AndGate uut70(A[2], B[4], P_4_2);
	AndGate uut71(A[3], B[4], P_4_3);
	AndGate uut72(A[4], B[4], P_4_4);
	AndGate uut73(A[5], B[4], P_4_5);
	AndGate uut74(A[6], B[4], P_4_6);
	AndGate uut75(A[7], B[4], P_4_7);
	AndGate uut76(A[8], B[4], P_4_8);
	AndGate uut77(A[9], B[4], P_4_9);
	AndGate uut78(A[10], B[4], P_4_10);
	AndGate uut79(A[11], B[4], P_4_11);
	AndGate uut80(A[12], B[4], P_4_12);
	AndGate uut81(A[13], B[4], P_4_13);
	AndGate uut82(A[14], B[4], P_4_14);
	AndGate uut83(A[15], B[4], P_4_15);
	NandGate uut84(A[16], B[4], P_4_16);
	AndGate uut85(A[0], B[5], P_5_0);
	AndGate uut86(A[1], B[5], P_5_1);
	AndGate uut87(A[2], B[5], P_5_2);
	AndGate uut88(A[3], B[5], P_5_3);
	AndGate uut89(A[4], B[5], P_5_4);
	AndGate uut90(A[5], B[5], P_5_5);
	AndGate uut91(A[6], B[5], P_5_6);
	AndGate uut92(A[7], B[5], P_5_7);
	AndGate uut93(A[8], B[5], P_5_8);
	AndGate uut94(A[9], B[5], P_5_9);
	AndGate uut95(A[10], B[5], P_5_10);
	AndGate uut96(A[11], B[5], P_5_11);
	AndGate uut97(A[12], B[5], P_5_12);
	AndGate uut98(A[13], B[5], P_5_13);
	AndGate uut99(A[14], B[5], P_5_14);
	AndGate uut100(A[15], B[5], P_5_15);
	NandGate uut101(A[16], B[5], P_5_16);
	AndGate uut102(A[0], B[6], P_6_0);
	AndGate uut103(A[1], B[6], P_6_1);
	AndGate uut104(A[2], B[6], P_6_2);
	AndGate uut105(A[3], B[6], P_6_3);
	AndGate uut106(A[4], B[6], P_6_4);
	AndGate uut107(A[5], B[6], P_6_5);
	AndGate uut108(A[6], B[6], P_6_6);
	AndGate uut109(A[7], B[6], P_6_7);
	AndGate uut110(A[8], B[6], P_6_8);
	AndGate uut111(A[9], B[6], P_6_9);
	AndGate uut112(A[10], B[6], P_6_10);
	AndGate uut113(A[11], B[6], P_6_11);
	AndGate uut114(A[12], B[6], P_6_12);
	AndGate uut115(A[13], B[6], P_6_13);
	AndGate uut116(A[14], B[6], P_6_14);
	AndGate uut117(A[15], B[6], P_6_15);
	NandGate uut118(A[16], B[6], P_6_16);
	AndGate uut119(A[0], B[7], P_7_0);
	AndGate uut120(A[1], B[7], P_7_1);
	AndGate uut121(A[2], B[7], P_7_2);
	AndGate uut122(A[3], B[7], P_7_3);
	AndGate uut123(A[4], B[7], P_7_4);
	AndGate uut124(A[5], B[7], P_7_5);
	AndGate uut125(A[6], B[7], P_7_6);
	AndGate uut126(A[7], B[7], P_7_7);
	AndGate uut127(A[8], B[7], P_7_8);
	AndGate uut128(A[9], B[7], P_7_9);
	AndGate uut129(A[10], B[7], P_7_10);
	AndGate uut130(A[11], B[7], P_7_11);
	AndGate uut131(A[12], B[7], P_7_12);
	AndGate uut132(A[13], B[7], P_7_13);
	AndGate uut133(A[14], B[7], P_7_14);
	AndGate uut134(A[15], B[7], P_7_15);
	NandGate uut135(A[16], B[7], P_7_16);
	AndGate uut136(A[0], B[8], P_8_0);
	AndGate uut137(A[1], B[8], P_8_1);
	AndGate uut138(A[2], B[8], P_8_2);
	AndGate uut139(A[3], B[8], P_8_3);
	AndGate uut140(A[4], B[8], P_8_4);
	AndGate uut141(A[5], B[8], P_8_5);
	AndGate uut142(A[6], B[8], P_8_6);
	AndGate uut143(A[7], B[8], P_8_7);
	AndGate uut144(A[8], B[8], P_8_8);
	AndGate uut145(A[9], B[8], P_8_9);
	AndGate uut146(A[10], B[8], P_8_10);
	AndGate uut147(A[11], B[8], P_8_11);
	AndGate uut148(A[12], B[8], P_8_12);
	AndGate uut149(A[13], B[8], P_8_13);
	AndGate uut150(A[14], B[8], P_8_14);
	AndGate uut151(A[15], B[8], P_8_15);
	NandGate uut152(A[16], B[8], P_8_16);
	AndGate uut153(A[0], B[9], P_9_0);
	AndGate uut154(A[1], B[9], P_9_1);
	AndGate uut155(A[2], B[9], P_9_2);
	AndGate uut156(A[3], B[9], P_9_3);
	AndGate uut157(A[4], B[9], P_9_4);
	AndGate uut158(A[5], B[9], P_9_5);
	AndGate uut159(A[6], B[9], P_9_6);
	AndGate uut160(A[7], B[9], P_9_7);
	AndGate uut161(A[8], B[9], P_9_8);
	AndGate uut162(A[9], B[9], P_9_9);
	AndGate uut163(A[10], B[9], P_9_10);
	AndGate uut164(A[11], B[9], P_9_11);
	AndGate uut165(A[12], B[9], P_9_12);
	AndGate uut166(A[13], B[9], P_9_13);
	AndGate uut167(A[14], B[9], P_9_14);
	AndGate uut168(A[15], B[9], P_9_15);
	NandGate uut169(A[16], B[9], P_9_16);
	AndGate uut170(A[0], B[10], P_10_0);
	AndGate uut171(A[1], B[10], P_10_1);
	AndGate uut172(A[2], B[10], P_10_2);
	AndGate uut173(A[3], B[10], P_10_3);
	AndGate uut174(A[4], B[10], P_10_4);
	AndGate uut175(A[5], B[10], P_10_5);
	AndGate uut176(A[6], B[10], P_10_6);
	AndGate uut177(A[7], B[10], P_10_7);
	AndGate uut178(A[8], B[10], P_10_8);
	AndGate uut179(A[9], B[10], P_10_9);
	AndGate uut180(A[10], B[10], P_10_10);
	AndGate uut181(A[11], B[10], P_10_11);
	AndGate uut182(A[12], B[10], P_10_12);
	AndGate uut183(A[13], B[10], P_10_13);
	AndGate uut184(A[14], B[10], P_10_14);
	AndGate uut185(A[15], B[10], P_10_15);
	NandGate uut186(A[16], B[10], P_10_16);
	AndGate uut187(A[0], B[11], P_11_0);
	AndGate uut188(A[1], B[11], P_11_1);
	AndGate uut189(A[2], B[11], P_11_2);
	AndGate uut190(A[3], B[11], P_11_3);
	AndGate uut191(A[4], B[11], P_11_4);
	AndGate uut192(A[5], B[11], P_11_5);
	AndGate uut193(A[6], B[11], P_11_6);
	AndGate uut194(A[7], B[11], P_11_7);
	AndGate uut195(A[8], B[11], P_11_8);
	AndGate uut196(A[9], B[11], P_11_9);
	AndGate uut197(A[10], B[11], P_11_10);
	AndGate uut198(A[11], B[11], P_11_11);
	AndGate uut199(A[12], B[11], P_11_12);
	AndGate uut200(A[13], B[11], P_11_13);
	AndGate uut201(A[14], B[11], P_11_14);
	AndGate uut202(A[15], B[11], P_11_15);
	NandGate uut203(A[16], B[11], P_11_16);
	assign P_12_0 = P_11_0;
	assign P_12_1 = P_11_1;
	assign P_12_2 = P_11_2;
	assign P_12_3 = P_11_3;
	assign P_12_4 = P_11_4;
	assign P_12_5 = P_11_5;
	assign P_12_6 = P_11_6;
	assign P_12_7 = P_11_7;
	assign P_12_8 = P_11_8;
	assign P_12_9 = P_11_9;
	assign P_12_10 = P_11_10;
	assign P_12_11 = P_11_11;
	assign P_12_12 = P_11_12;
	assign P_12_13 = P_11_13;
	assign P_12_14 = P_11_14;
	assign P_12_15 = P_11_15;
	assign P_12_16 = P_11_16;
	assign P_13_0 = P_12_0;
	assign P_13_1 = P_12_1;
	assign P_13_2 = P_12_2;
	assign P_13_3 = P_12_3;
	assign P_13_4 = P_12_4;
	assign P_13_5 = P_12_5;
	assign P_13_6 = P_12_6;
	assign P_13_7 = P_12_7;
	assign P_13_8 = P_12_8;
	assign P_13_9 = P_12_9;
	assign P_13_10 = P_12_10;
	assign P_13_11 = P_12_11;
	assign P_13_12 = P_12_12;
	assign P_13_13 = P_12_13;
	assign P_13_14 = P_12_14;
	assign P_13_15 = P_12_15;
	assign P_14_0 = P_13_0;
	assign P_14_1 = P_13_1;
	assign P_14_2 = P_13_2;
	assign P_14_3 = P_13_3;
	assign P_14_4 = P_13_4;
	assign P_14_5 = P_13_5;
	assign P_14_6 = P_13_6;
	assign P_14_7 = P_13_7;
	assign P_14_8 = P_13_8;
	assign P_14_9 = P_13_9;
	assign P_14_10 = P_13_10;
	assign P_14_11 = P_13_11;
	assign P_14_12 = P_13_12;
	assign P_14_13 = P_13_13;
	assign P_14_14 = P_13_14;
	assign P_15_0 = P_14_0;
	assign P_15_1 = P_14_1;
	assign P_15_2 = P_14_2;
	assign P_15_3 = P_14_3;
	assign P_15_4 = P_14_4;
	assign P_15_5 = P_14_5;
	assign P_15_6 = P_14_6;
	assign P_15_7 = P_14_7;
	assign P_15_8 = P_14_8;
	assign P_15_9 = P_14_9;
	assign P_15_10 = P_14_10;
	assign P_15_11 = P_14_11;
	assign P_15_12 = P_14_12;
	assign P_15_13 = P_14_13;
	NandGate uut204(A[0], B[11], P_16_0);
	NandGate uut205(A[1], B[11], P_16_1);
	NandGate uut206(A[2], B[11], P_16_2);
	NandGate uut207(A[3], B[11], P_16_3);
	NandGate uut208(A[4], B[11], P_16_4);
	NandGate uut209(A[5], B[11], P_16_5);
	NandGate uut210(A[6], B[11], P_16_6);
	NandGate uut211(A[7], B[11], P_16_7);
	NandGate uut212(A[8], B[11], P_16_8);
	NandGate uut213(A[9], B[11], P_16_9);
	NandGate uut214(A[10], B[11], P_16_10);
	NandGate uut215(A[11], B[11], P_16_11);
	NandGate uut216(A[12], B[11], P_16_12);
	HalfAdder uut217(P_0_9,P_1_8,s0,c0);
	FullAdder uut218(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut219(P_3_7,P_4_6,s2,c2);
	FullAdder uut220(P_0_11,P_1_10,P_2_9,s3,c3);
	FullAdder uut221(P_3_8,P_4_7,P_5_6,s4,c4);
	HalfAdder uut222(P_6_5,P_7_4,s5,c5);
	FullAdder uut223(P_0_12,P_1_11,P_2_10,s6,c6);
	FullAdder uut224(P_3_9,P_4_8,P_5_7,s7,c7);
	FullAdder uut225(P_6_6,P_7_5,P_8_4,s8,c8);
	HalfAdder uut226(P_9_3,P_10_2,s9,c9);
	FullAdder uut227(P_0_13,P_1_12,P_2_11,s10,c10);
	FullAdder uut228(P_3_10,P_4_9,P_5_8,s11,c11);
	FullAdder uut229(P_6_7,P_7_6,P_8_5,s12,c12);
	FullAdder uut230(P_9_4,P_10_3,P_11_2,s13,c13);
	HalfAdder uut231(P_12_1,P_13_0,s14,c14);
	FullAdder uut232(P_0_14,P_1_13,P_2_12,s15,c15);
	FullAdder uut233(P_3_11,P_4_10,P_5_9,s16,c16);
	FullAdder uut234(P_6_8,P_7_7,P_8_6,s17,c17);
	FullAdder uut235(P_9_5,P_10_4,P_11_3,s18,c18);
	FullAdder uut236(P_12_2,P_13_1,P_14_0,s19,c19);
	HalfAdder uut237(c10,c11,s20,c20);
	FullAdder uut238(P_0_15,P_1_14,P_2_13,s21,c21);
	FullAdder uut239(P_3_12,P_4_11,P_5_10,s22,c22);
	FullAdder uut240(P_6_9,P_7_8,P_8_7,s23,c23);
	FullAdder uut241(P_9_6,P_10_5,P_11_4,s24,c24);
	FullAdder uut242(P_12_3,P_13_2,P_14_1,s25,c25);
	FullAdder uut243(P_15_0,c15,c16,s26,c26);
	HalfAdder uut244(c17,c18,s27,c27);
	FullAdder uut245(P_0_16,P_1_15,P_2_14,s28,c28);
	FullAdder uut246(P_3_13,P_4_12,P_5_11,s29,c29);
	FullAdder uut247(P_6_10,P_7_9,P_8_8,s30,c30);
	FullAdder uut248(P_9_7,P_10_6,P_11_5,s31,c31);
	FullAdder uut249(P_12_4,P_13_3,P_14_2,s32,c32);
	FullAdder uut250(P_15_1,P_16_0,c21,s33,c33);
	FullAdder uut251(c22,c23,c24,s34,c34);
	HalfAdder uut252(c25,c26,s35,c35);
	FullAdder uut253(1'b1,P_1_16,P_2_15,s36,c36);
	FullAdder uut254(P_3_14,P_4_13,P_5_12,s37,c37);
	FullAdder uut255(P_6_11,P_7_10,P_8_9,s38,c38);
	FullAdder uut256(P_9_8,P_10_7,P_11_6,s39,c39);
	FullAdder uut257(P_12_5,P_13_4,P_14_3,s40,c40);
	FullAdder uut258(P_15_2,P_16_1,c28,s41,c41);
	FullAdder uut259(c29,c30,c31,s42,c42);
	FullAdder uut260(c32,c33,c34,s43,c43);
	FullAdder uut261(P_2_16,P_3_15,P_4_14,s44,c44);
	FullAdder uut262(P_5_13,P_6_12,P_7_11,s45,c45);
	FullAdder uut263(P_8_10,P_9_9,P_10_8,s46,c46);
	FullAdder uut264(P_11_7,P_12_6,P_13_5,s47,c47);
	FullAdder uut265(P_14_4,P_15_3,P_16_2,s48,c48);
	FullAdder uut266(c36,c37,c38,s49,c49);
	FullAdder uut267(c39,c40,c41,s50,c50);
	FullAdder uut268(P_3_16,P_4_15,P_5_14,s51,c51);
	FullAdder uut269(P_6_13,P_7_12,P_8_11,s52,c52);
	FullAdder uut270(P_9_10,P_10_9,P_11_8,s53,c53);
	FullAdder uut271(P_12_7,P_13_6,P_14_5,s54,c54);
	FullAdder uut272(P_15_4,P_16_3,c44,s55,c55);
	FullAdder uut273(c45,c46,c47,s56,c56);
	FullAdder uut274(P_4_16,P_5_15,P_6_14,s57,c57);
	FullAdder uut275(P_7_13,P_8_12,P_9_11,s58,c58);
	FullAdder uut276(P_10_10,P_11_9,P_12_8,s59,c59);
	FullAdder uut277(P_13_7,P_14_6,P_15_5,s60,c60);
	FullAdder uut278(P_16_4,c51,c52,s61,c61);
	FullAdder uut279(P_5_16,P_6_15,P_7_14,s62,c62);
	FullAdder uut280(P_8_13,P_9_12,P_10_11,s63,c63);
	FullAdder uut281(P_11_10,P_12_9,P_13_8,s64,c64);
	FullAdder uut282(P_14_7,P_15_6,P_16_5,s65,c65);
	FullAdder uut283(P_6_16,P_7_15,P_8_14,s66,c66);
	FullAdder uut284(P_9_13,P_10_12,P_11_11,s67,c67);
	FullAdder uut285(P_12_10,P_13_9,P_14_8,s68,c68);
	FullAdder uut286(P_7_16,P_8_15,P_9_14,s69,c69);
	FullAdder uut287(P_10_13,P_11_12,P_12_11,s70,c70);
	FullAdder uut288(P_8_16,P_9_15,P_10_14,s71,c71);

	HalfAdder uut289(P_0_6,P_1_5,s72,c72);
	FullAdder uut290(P_0_7,P_1_6,P_2_5,s73,c73);
	HalfAdder uut291(P_3_4,P_4_3,s74,c74);
	FullAdder uut292(P_0_8,P_1_7,P_2_6,s75,c75);
	FullAdder uut293(P_3_5,P_4_4,P_5_3,s76,c76);
	HalfAdder uut294(P_6_2,P_7_1,s77,c77);
	FullAdder uut295(P_2_7,P_3_6,P_4_5,s78,c78);
	FullAdder uut296(P_5_4,P_6_3,P_7_2,s79,c79);
	FullAdder uut297(P_8_1,P_9_0,s0,s80,c80);
	FullAdder uut298(P_5_5,P_6_4,P_7_3,s81,c81);
	FullAdder uut299(P_8_2,P_9_1,P_10_0,s82,c82);
	FullAdder uut300(c0,s1,s2,s83,c83);
	FullAdder uut301(P_8_3,P_9_2,P_10_1,s84,c84);
	FullAdder uut302(P_11_0,c1,c2,s85,c85);
	FullAdder uut303(s3,s4,s5,s86,c86);
	FullAdder uut304(P_11_1,P_12_0,c3,s87,c87);
	FullAdder uut305(c4,c5,s6,s88,c88);
	FullAdder uut306(s7,s8,s9,s89,c89);
	FullAdder uut307(c6,c7,c8,s90,c90);
	FullAdder uut308(c9,s10,s11,s91,c91);
	FullAdder uut309(s12,s13,s14,s92,c92);
	FullAdder uut310(c12,c13,c14,s93,c93);
	FullAdder uut311(s15,s16,s17,s94,c94);
	FullAdder uut312(s18,s19,s20,s95,c95);
	FullAdder uut313(c19,c20,s21,s96,c96);
	FullAdder uut314(s22,s23,s24,s97,c97);
	FullAdder uut315(s25,s26,s27,s98,c98);
	FullAdder uut316(c27,s28,s29,s99,c99);
	FullAdder uut317(s30,s31,s32,s100,c100);
	FullAdder uut318(s33,s34,s35,s101,c101);
	FullAdder uut319(c35,s36,s37,s102,c102);
	FullAdder uut320(s38,s39,s40,s103,c103);
	FullAdder uut321(s41,s42,s43,s104,c104);
	FullAdder uut322(c42,c43,s44,s105,c105);
	FullAdder uut323(s45,s46,s47,s106,c106);
	FullAdder uut324(s48,s49,s50,s107,c107);
	FullAdder uut325(c48,c49,c50,s108,c108);
	FullAdder uut326(s51,s52,s53,s109,c109);
	FullAdder uut327(s54,s55,s56,s110,c110);
	FullAdder uut328(c53,c54,c55,s111,c111);
	FullAdder uut329(c56,s57,s58,s112,c112);
	FullAdder uut330(s59,s60,s61,s113,c113);
	FullAdder uut331(c57,c58,c59,s114,c114);
	FullAdder uut332(c60,c61,s62,s115,c115);
	FullAdder uut333(s63,s64,s65,s116,c116);
	FullAdder uut334(P_15_7,P_16_6,c62,s117,c117);
	FullAdder uut335(c63,c64,c65,s118,c118);
	FullAdder uut336(s66,s67,s68,s119,c119);
	FullAdder uut337(P_13_10,P_14_9,P_15_8,s120,c120);
	FullAdder uut338(P_16_7,c66,c67,s121,c121);
	FullAdder uut339(c68,s69,s70,s122,c122);
	FullAdder uut340(P_11_13,P_12_12,P_13_11,s123,c123);
	FullAdder uut341(P_14_10,P_15_9,P_16_8,s124,c124);
	FullAdder uut342(c69,c70,s71,s125,c125);
	FullAdder uut343(P_9_16,P_10_15,P_11_14,s126,c126);
	FullAdder uut344(P_12_13,P_13_12,P_14_11,s127,c127);
	FullAdder uut345(P_15_10,P_16_9,c71,s128,c128);
	FullAdder uut346(P_10_16,P_11_15,P_12_14,s129,c129);
	FullAdder uut347(P_13_13,P_14_12,P_15_11,s130,c130);
	FullAdder uut348(P_11_16,P_12_15,P_13_14,s131,c131);

	HalfAdder uut349(P_0_4,P_1_3,s132,c132);
	FullAdder uut350(P_0_5,P_1_4,P_2_3,s133,c133);
	HalfAdder uut351(P_3_2,P_4_1,s134,c134);
	FullAdder uut352(P_2_4,P_3_3,P_4_2,s135,c135);
	FullAdder uut353(P_5_1,P_6_0,s72,s136,c136);
	FullAdder uut354(P_5_2,P_6_1,P_7_0,s137,c137);
	FullAdder uut355(c72,s73,s74,s138,c138);
	FullAdder uut356(P_8_0,c73,c74,s139,c139);
	FullAdder uut357(s75,s76,s77,s140,c140);
	FullAdder uut358(c75,c76,c77,s141,c141);
	FullAdder uut359(s78,s79,s80,s142,c142);
	FullAdder uut360(c78,c79,c80,s143,c143);
	FullAdder uut361(s81,s82,s83,s144,c144);
	FullAdder uut362(c81,c82,c83,s145,c145);
	FullAdder uut363(s84,s85,s86,s146,c146);
	FullAdder uut364(c84,c85,c86,s147,c147);
	FullAdder uut365(s87,s88,s89,s148,c148);
	FullAdder uut366(c87,c88,c89,s149,c149);
	FullAdder uut367(s90,s91,s92,s150,c150);
	FullAdder uut368(c90,c91,c92,s151,c151);
	FullAdder uut369(s93,s94,s95,s152,c152);
	FullAdder uut370(c93,c94,c95,s153,c153);
	FullAdder uut371(s96,s97,s98,s154,c154);
	FullAdder uut372(c96,c97,c98,s155,c155);
	FullAdder uut373(s99,s100,s101,s156,c156);
	FullAdder uut374(c99,c100,c101,s157,c157);
	FullAdder uut375(s102,s103,s104,s158,c158);
	FullAdder uut376(c102,c103,c104,s159,c159);
	FullAdder uut377(s105,s106,s107,s160,c160);
	FullAdder uut378(c105,c106,c107,s161,c161);
	FullAdder uut379(s108,s109,s110,s162,c162);
	FullAdder uut380(c108,c109,c110,s163,c163);
	FullAdder uut381(s111,s112,s113,s164,c164);
	FullAdder uut382(c111,c112,c113,s165,c165);
	FullAdder uut383(s114,s115,s116,s166,c166);
	FullAdder uut384(c114,c115,c116,s167,c167);
	FullAdder uut385(s117,s118,s119,s168,c168);
	FullAdder uut386(c117,c118,c119,s169,c169);
	FullAdder uut387(s120,s121,s122,s170,c170);
	FullAdder uut388(c120,c121,c122,s171,c171);
	FullAdder uut389(s123,s124,s125,s172,c172);
	FullAdder uut390(c123,c124,c125,s173,c173);
	FullAdder uut391(s126,s127,s128,s174,c174);
	FullAdder uut392(P_16_10,c126,c127,s175,c175);
	FullAdder uut393(c128,s129,s130,s176,c176);
	FullAdder uut394(P_14_13,P_15_12,P_16_11,s177,c177);
	FullAdder uut395(c129,c130,s131,s178,c178);
	FullAdder uut396(P_12_16,P_13_15,P_14_14,s179,c179);
	FullAdder uut397(P_15_13,P_16_12,c131,s180,c180);

	HalfAdder uut398(P_0_3,P_1_2,s181,c181);
	FullAdder uut399(P_2_2,P_3_1,P_4_0,s182,c182);
	FullAdder uut400(P_5_0,c132,s133,s183,c183);
	FullAdder uut401(c133,c134,s135,s184,c184);
	FullAdder uut402(c135,c136,s137,s185,c185);
	FullAdder uut403(c137,c138,s139,s186,c186);
	FullAdder uut404(c139,c140,s141,s187,c187);
	FullAdder uut405(c141,c142,s143,s188,c188);
	FullAdder uut406(c143,c144,s145,s189,c189);
	FullAdder uut407(c145,c146,s147,s190,c190);
	FullAdder uut408(c147,c148,s149,s191,c191);
	FullAdder uut409(c149,c150,s151,s192,c192);
	FullAdder uut410(c151,c152,s153,s193,c193);
	FullAdder uut411(c153,c154,s155,s194,c194);
	FullAdder uut412(c155,c156,s157,s195,c195);
	FullAdder uut413(c157,c158,s159,s196,c196);
	FullAdder uut414(c159,c160,s161,s197,c197);
	FullAdder uut415(c161,c162,s163,s198,c198);
	FullAdder uut416(c163,c164,s165,s199,c199);
	FullAdder uut417(c165,c166,s167,s200,c200);
	FullAdder uut418(c167,c168,s169,s201,c201);
	FullAdder uut419(c169,c170,s171,s202,c202);
	FullAdder uut420(c171,c172,s173,s203,c203);
	FullAdder uut421(c173,c174,s175,s204,c204);
	FullAdder uut422(c175,c176,s177,s205,c205);
	FullAdder uut423(c177,c178,s179,s206,c206);

	HalfAdder uut424(P_0_2,P_1_1,s207,c207);
	FullAdder uut425(P_2_1,P_3_0,s181,s208,c208);
	FullAdder uut426(s132,c181,s182,s209,c209);
	FullAdder uut427(s134,c182,s183,s210,c210);
	FullAdder uut428(s136,c183,s184,s211,c211);
	FullAdder uut429(s138,c184,s185,s212,c212);
	FullAdder uut430(s140,c185,s186,s213,c213);
	FullAdder uut431(s142,c186,s187,s214,c214);
	FullAdder uut432(s144,c187,s188,s215,c215);
	FullAdder uut433(s146,c188,s189,s216,c216);
	FullAdder uut434(s148,c189,s190,s217,c217);
	FullAdder uut435(s150,c190,s191,s218,c218);
	FullAdder uut436(s152,c191,s192,s219,c219);
	FullAdder uut437(s154,c192,s193,s220,c220);
	FullAdder uut438(s156,c193,s194,s221,c221);
	FullAdder uut439(s158,c194,s195,s222,c222);
	FullAdder uut440(s160,c195,s196,s223,c223);
	FullAdder uut441(s162,c196,s197,s224,c224);
	FullAdder uut442(s164,c197,s198,s225,c225);
	FullAdder uut443(s166,c198,s199,s226,c226);
	FullAdder uut444(s168,c199,s200,s227,c227);
	FullAdder uut445(s170,c200,s201,s228,c228);
	FullAdder uut446(s172,c201,s202,s229,c229);
	FullAdder uut447(s174,c202,s203,s230,c230);
	FullAdder uut448(s176,c203,s204,s231,c231);
	FullAdder uut449(s178,c204,s205,s232,c232);
	FullAdder uut450(s180,c205,s206,s233,c233);

	wire [27:0] operandA;
	assign operandA = {c232,c231,c230,c229,c228,c227,c226,c225,c224,c223,c222,c221,c220,c219,c218,c217,c216,c215,c214,c213,c212,c211,c210,c209,c208,c207,P_2_0,P_0_1};
	wire [27:0] operandB;
	assign operandB = {s233,s232,s231,s230,s229,s228,s227,s226,s225,s224,s223,s222,s221,s220,s219,s218,s217,s216,s215,s214,s213,s212,s211,s210,s209,s208,s207,P_1_0};
	wire [28:0] Sum;
	unsignedBrentKungAdder28bit uut451(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = Sum[20];
	assign Product[22] = Sum[21];
	assign Product[23] = Sum[22];
	assign Product[24] = Sum[23];
	assign Product[25] = Sum[24];
	assign Product[26] = Sum[25];
	assign Product[27] = Sum[26];
	assign Product[28] = Sum[27];
endmodule
module unsignedBrentKungAdder28bit(input [27:0]A, input [27:0]B, output [28:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire carry21;
	wire carry22;
	wire carry23;
	wire carry24;
	wire carry25;
	wire carry26;
	wire carry27;
	wire carry28;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P020; wire G020;
	wire P021; wire G021;
	wire P022; wire G022;
	wire P023; wire G023;
	wire P024; wire G024;
	wire P025; wire G025;
	wire P026; wire G026;
	wire P027; wire G027;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P120; wire G120;
	wire P121; wire G121;
	wire P122; wire G122;
	wire P123; wire G123;
	wire P124; wire G124;
	wire P125; wire G125;
	wire P126; wire G126;
	wire P127; wire G127;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P220; wire G220;
	wire P221; wire G221;
	wire P222; wire G222;
	wire P223; wire G223;
	wire P224; wire G224;
	wire P225; wire G225;
	wire P226; wire G226;
	wire P227; wire G227;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P320; wire G320;
	wire P321; wire G321;
	wire P322; wire G322;
	wire P323; wire G323;
	wire P324; wire G324;
	wire P325; wire G325;
	wire P326; wire G326;
	wire P327; wire G327;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P420; wire G420;
	wire P421; wire G421;
	wire P422; wire G422;
	wire P423; wire G423;
	wire P424; wire G424;
	wire P425; wire G425;
	wire P426; wire G426;
	wire P427; wire G427;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	wire P520; wire G520;
	wire P521; wire G521;
	wire P522; wire G522;
	wire P523; wire G523;
	wire P524; wire G524;
	wire P525; wire G525;
	wire P526; wire G526;
	wire P527; wire G527;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);
	BitwisePG uut20(A[20], B[20], P020, G020);
	BitwisePG uut21(A[21], B[21], P021, G021);
	BitwisePG uut22(A[22], B[22], P022, G022);
	BitwisePG uut23(A[23], B[23], P023, G023);
	BitwisePG uut24(A[24], B[24], P024, G024);
	BitwisePG uut25(A[25], B[25], P025, G025);
	BitwisePG uut26(A[26], B[26], P026, G026);
	BitwisePG uut27(A[27], B[27], P027, G027);

	//first processing stage

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut28(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut29(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut30(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut31(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut32(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut33(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut34(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut35(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut36(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut37(P019,G019, G018,P018,P119,G119);

	assign P120 = P020;
	assign G120 = G020;

	BlackCell uut38(P021,G021, G020,P020,P121,G121);

	assign P122 = P022;
	assign G122 = G022;

	BlackCell uut39(P023,G023, G022,P022,P123,G123);

	assign P124 = P024;
	assign G124 = G024;

	BlackCell uut40(P025,G025, G024,P024,P125,G125);

	assign P126 = P026;
	assign G126 = G026;

	BlackCell uut41(P027,G027, G026,P026,P127,G127);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut42(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut43(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut44(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut45(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut46(P119,G119, G117,P117,P219,G219);

	assign P220 = P120;
	assign G220 = G120;

	assign P221 = P121;
	assign G221 = G121;

	assign P222 = P122;
	assign G222 = G122;

	BlackCell uut47(P123,G123, G121,P121,P223,G223);

	assign P224 = P124;
	assign G224 = G124;

	assign P225 = P125;
	assign G225 = G125;

	assign P226 = P126;
	assign G226 = G126;

	BlackCell uut48(P127,G127, G125,P125,P227,G227);

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut49(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut50(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P320 = P220;
	assign G320 = G220;

	assign P321 = P221;
	assign G321 = G221;

	assign P322 = P222;
	assign G322 = G222;

	BlackCell uut51(P223,G223, G219,P219,P323,G323);

	assign P324 = P224;
	assign G324 = G224;

	assign P325 = P225;
	assign G325 = G225;

	assign P326 = P226;
	assign G326 = G226;

	assign P327 = P227;
	assign G327 = G227;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut52(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P420 = P320;
	assign G420 = G320;

	assign P421 = P321;
	assign G421 = G321;

	assign P422 = P322;
	assign G422 = G322;

	assign P423 = P323;
	assign G423 = G323;

	assign P424 = P324;
	assign G424 = G324;

	assign P425 = P325;
	assign G425 = G325;

	assign P426 = P326;
	assign G426 = G326;

	assign P427 = P327;
	assign G427 = G327;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	assign P520 = P420;
	assign G520 = G420;

	assign P521 = P421;
	assign G521 = G421;

	assign P522 = P422;
	assign G522 = G422;

	assign P523 = P423;
	assign G523 = G423;

	assign P524 = P424;
	assign G524 = G424;

	assign P525 = P425;
	assign G525 = G425;

	assign P526 = P426;
	assign G526 = G426;

	assign P527 = P427;
	assign G527 = G427;

	//second processing stage

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;
	assign P620 = P520;
	assign G620 = G520;
	assign P621 = P521;
	assign G621 = G521;
	assign P622 = P522;
	assign G622 = G522;
	GrayCell uut53(P523,G523,G515, P623, G623);
	assign P624 = P524;
	assign G624 = G524;
	assign P625 = P525;
	assign G625 = G525;
	assign P626 = P526;
	assign G626 = G526;
	assign P627 = P527;
	assign G627 = G527;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut54(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut55(P619,G619,G615, P719, G719);
	assign P720 = P620;
	assign G720 = G620;
	assign P721 = P621;
	assign G721 = G621;
	assign P722 = P622;
	assign G722 = G622;
	assign P723 = P623;
	assign G723 = G623;
	assign P724 = P624;
	assign G724 = G624;
	assign P725 = P625;
	assign G725 = G625;
	assign P726 = P626;
	assign G726 = G626;
	GrayCell uut56(P627,G627,G623, P727, G727);

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut57(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut58(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut59(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut60(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;
	assign P820 = P720;
	assign G820 = G720;
	GrayCell uut61(P721,G721,G719, P821, G821);
	assign P822 = P722;
	assign G822 = G722;
	assign P823 = P723;
	assign G823 = G723;
	assign P824 = P724;
	assign G824 = G724;
	GrayCell uut62(P725,G725,G723, P825, G825);
	assign P826 = P726;
	assign G826 = G726;
	assign P827 = P727;
	assign G827 = G727;

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut63(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut64(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut65(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut66(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut67(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut68(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut69(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut70(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut71(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;
	GrayCell uut72(P820,G820,G819, P920, G920);
	assign P921 = P821;
	assign G921 = G821;
	GrayCell uut73(P822,G822,G821, P922, G922);
	assign P923 = P823;
	assign G923 = G823;
	GrayCell uut74(P824,G824,G823, P924, G924);
	assign P925 = P825;
	assign G925 = G825;
	GrayCell uut75(P826,G826,G825, P926, G926);
	assign P927 = P827;
	assign G927 = G827;

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign carry20 = G920;
	assign carry21 = G921;
	assign carry22 = G922;
	assign carry23 = G923;
	assign carry24 = G924;
	assign carry25 = G925;
	assign carry26 = G926;
	assign carry27 = G927;
	assign Sum[0] = P00;
	XorGate uut76(P01, carry0, Sum[1]);
	XorGate uut77(P02, carry1, Sum[2]);
	XorGate uut78(P03, carry2, Sum[3]);
	XorGate uut79(P04, carry3, Sum[4]);
	XorGate uut80(P05, carry4, Sum[5]);
	XorGate uut81(P06, carry5, Sum[6]);
	XorGate uut82(P07, carry6, Sum[7]);
	XorGate uut83(P08, carry7, Sum[8]);
	XorGate uut84(P09, carry8, Sum[9]);
	XorGate uut85(P010, carry9, Sum[10]);
	XorGate uut86(P011, carry10, Sum[11]);
	XorGate uut87(P012, carry11, Sum[12]);
	XorGate uut88(P013, carry12, Sum[13]);
	XorGate uut89(P014, carry13, Sum[14]);
	XorGate uut90(P015, carry14, Sum[15]);
	XorGate uut91(P016, carry15, Sum[16]);
	XorGate uut92(P017, carry16, Sum[17]);
	XorGate uut93(P018, carry17, Sum[18]);
	XorGate uut94(P019, carry18, Sum[19]);
	XorGate uut95(P020, carry19, Sum[20]);
	XorGate uut96(P021, carry20, Sum[21]);
	XorGate uut97(P022, carry21, Sum[22]);
	XorGate uut98(P023, carry22, Sum[23]);
	XorGate uut99(P024, carry23, Sum[24]);
	XorGate uut100(P025, carry24, Sum[25]);
	XorGate uut101(P026, carry25, Sum[26]);
	XorGate uut102(P027, carry26, Sum[27]);
	assign Sum[28] = carry27;
endmodule

module signedDaddaTreeMultiplier11x6bit(input [10:0] A, input [5:0]B, output [16:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	NandGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[0], B[1], P_1_0);
	AndGate uut12(A[1], B[1], P_1_1);
	AndGate uut13(A[2], B[1], P_1_2);
	AndGate uut14(A[3], B[1], P_1_3);
	AndGate uut15(A[4], B[1], P_1_4);
	AndGate uut16(A[5], B[1], P_1_5);
	AndGate uut17(A[6], B[1], P_1_6);
	AndGate uut18(A[7], B[1], P_1_7);
	AndGate uut19(A[8], B[1], P_1_8);
	AndGate uut20(A[9], B[1], P_1_9);
	NandGate uut21(A[10], B[1], P_1_10);
	AndGate uut22(A[0], B[2], P_2_0);
	AndGate uut23(A[1], B[2], P_2_1);
	AndGate uut24(A[2], B[2], P_2_2);
	AndGate uut25(A[3], B[2], P_2_3);
	AndGate uut26(A[4], B[2], P_2_4);
	AndGate uut27(A[5], B[2], P_2_5);
	AndGate uut28(A[6], B[2], P_2_6);
	AndGate uut29(A[7], B[2], P_2_7);
	AndGate uut30(A[8], B[2], P_2_8);
	AndGate uut31(A[9], B[2], P_2_9);
	NandGate uut32(A[10], B[2], P_2_10);
	AndGate uut33(A[0], B[3], P_3_0);
	AndGate uut34(A[1], B[3], P_3_1);
	AndGate uut35(A[2], B[3], P_3_2);
	AndGate uut36(A[3], B[3], P_3_3);
	AndGate uut37(A[4], B[3], P_3_4);
	AndGate uut38(A[5], B[3], P_3_5);
	AndGate uut39(A[6], B[3], P_3_6);
	AndGate uut40(A[7], B[3], P_3_7);
	AndGate uut41(A[8], B[3], P_3_8);
	AndGate uut42(A[9], B[3], P_3_9);
	NandGate uut43(A[10], B[3], P_3_10);
	AndGate uut44(A[0], B[4], P_4_0);
	AndGate uut45(A[1], B[4], P_4_1);
	AndGate uut46(A[2], B[4], P_4_2);
	AndGate uut47(A[3], B[4], P_4_3);
	AndGate uut48(A[4], B[4], P_4_4);
	AndGate uut49(A[5], B[4], P_4_5);
	AndGate uut50(A[6], B[4], P_4_6);
	AndGate uut51(A[7], B[4], P_4_7);
	AndGate uut52(A[8], B[4], P_4_8);
	AndGate uut53(A[9], B[4], P_4_9);
	NandGate uut54(A[10], B[4], P_4_10);
	AndGate uut55(A[0], B[5], P_5_0);
	AndGate uut56(A[1], B[5], P_5_1);
	AndGate uut57(A[2], B[5], P_5_2);
	AndGate uut58(A[3], B[5], P_5_3);
	AndGate uut59(A[4], B[5], P_5_4);
	AndGate uut60(A[5], B[5], P_5_5);
	AndGate uut61(A[6], B[5], P_5_6);
	AndGate uut62(A[7], B[5], P_5_7);
	AndGate uut63(A[8], B[5], P_5_8);
	AndGate uut64(A[9], B[5], P_5_9);
	NandGate uut65(A[10], B[5], P_5_10);
	assign P_6_0 = P_5_0;
	assign P_6_1 = P_5_1;
	assign P_6_2 = P_5_2;
	assign P_6_3 = P_5_3;
	assign P_6_4 = P_5_4;
	assign P_6_5 = P_5_5;
	assign P_6_6 = P_5_6;
	assign P_6_7 = P_5_7;
	assign P_6_8 = P_5_8;
	assign P_6_9 = P_5_9;
	assign P_6_10 = P_5_10;
	assign P_7_0 = P_6_0;
	assign P_7_1 = P_6_1;
	assign P_7_2 = P_6_2;
	assign P_7_3 = P_6_3;
	assign P_7_4 = P_6_4;
	assign P_7_5 = P_6_5;
	assign P_7_6 = P_6_6;
	assign P_7_7 = P_6_7;
	assign P_7_8 = P_6_8;
	assign P_7_9 = P_6_9;
	assign P_8_0 = P_7_0;
	assign P_8_1 = P_7_1;
	assign P_8_2 = P_7_2;
	assign P_8_3 = P_7_3;
	assign P_8_4 = P_7_4;
	assign P_8_5 = P_7_5;
	assign P_8_6 = P_7_6;
	assign P_8_7 = P_7_7;
	assign P_8_8 = P_7_8;
	assign P_9_0 = P_8_0;
	assign P_9_1 = P_8_1;
	assign P_9_2 = P_8_2;
	assign P_9_3 = P_8_3;
	assign P_9_4 = P_8_4;
	assign P_9_5 = P_8_5;
	assign P_9_6 = P_8_6;
	assign P_9_7 = P_8_7;
	NandGate uut66(A[0], B[5], P_10_0);
	NandGate uut67(A[1], B[5], P_10_1);
	NandGate uut68(A[2], B[5], P_10_2);
	NandGate uut69(A[3], B[5], P_10_3);
	NandGate uut70(A[4], B[5], P_10_4);
	NandGate uut71(A[5], B[5], P_10_5);
	NandGate uut72(A[6], B[5], P_10_6);
	HalfAdder uut73(P_0_4,P_1_3,s0,c0);
	FullAdder uut74(P_0_5,P_1_4,P_2_3,s1,c1);
	HalfAdder uut75(P_3_2,P_4_1,s2,c2);
	FullAdder uut76(P_0_6,P_1_5,P_2_4,s3,c3);
	FullAdder uut77(P_3_3,P_4_2,P_5_1,s4,c4);
	HalfAdder uut78(P_6_0,c1,s5,c5);
	FullAdder uut79(P_0_7,P_1_6,P_2_5,s6,c6);
	FullAdder uut80(P_3_4,P_4_3,P_5_2,s7,c7);
	FullAdder uut81(P_6_1,P_7_0,c3,s8,c8);
	HalfAdder uut82(c4,c5,s9,c9);
	FullAdder uut83(P_0_8,P_1_7,P_2_6,s10,c10);
	FullAdder uut84(P_3_5,P_4_4,P_5_3,s11,c11);
	FullAdder uut85(P_6_2,P_7_1,P_8_0,s12,c12);
	FullAdder uut86(c6,c7,c8,s13,c13);
	HalfAdder uut87(c9,s10,s14,c14);
	FullAdder uut88(P_0_9,P_1_8,P_2_7,s15,c15);
	FullAdder uut89(P_3_6,P_4_5,P_5_4,s16,c16);
	FullAdder uut90(P_6_3,P_7_2,P_8_1,s17,c17);
	FullAdder uut91(P_9_0,c10,c11,s18,c18);
	FullAdder uut92(c12,c13,c14,s19,c19);
	HalfAdder uut93(s15,s16,s20,c20);
	FullAdder uut94(P_0_10,P_1_9,P_2_8,s21,c21);
	FullAdder uut95(P_3_7,P_4_6,P_5_5,s22,c22);
	FullAdder uut96(P_6_4,P_7_3,P_8_2,s23,c23);
	FullAdder uut97(P_9_1,P_10_0,c15,s24,c24);
	FullAdder uut98(c16,c17,c18,s25,c25);
	FullAdder uut99(c19,c20,s21,s26,c26);
	HalfAdder uut100(s22,s23,s27,c27);
	FullAdder uut101(1'b1,P_1_10,P_2_9,s28,c28);
	FullAdder uut102(P_3_8,P_4_7,P_5_6,s29,c29);
	FullAdder uut103(P_6_5,P_7_4,P_8_3,s30,c30);
	FullAdder uut104(P_9_2,P_10_1,c21,s31,c31);
	FullAdder uut105(c22,c23,c24,s32,c32);
	FullAdder uut106(c25,c26,c27,s33,c33);
	FullAdder uut107(s28,s29,s30,s34,c34);
	FullAdder uut108(P_2_10,P_3_9,P_4_8,s35,c35);
	FullAdder uut109(P_5_7,P_6_6,P_7_5,s36,c36);
	FullAdder uut110(P_8_4,P_9_3,P_10_2,s37,c37);
	FullAdder uut111(c28,c29,c30,s38,c38);
	FullAdder uut112(c31,c32,c33,s39,c39);
	FullAdder uut113(c34,s35,s36,s40,c40);
	FullAdder uut114(P_3_10,P_4_9,P_5_8,s41,c41);
	FullAdder uut115(P_6_7,P_7_6,P_8_5,s42,c42);
	FullAdder uut116(P_9_4,P_10_3,c35,s43,c43);
	FullAdder uut117(c36,c37,c38,s44,c44);
	FullAdder uut118(c39,c40,s41,s45,c45);
	FullAdder uut119(P_4_10,P_5_9,P_6_8,s46,c46);
	FullAdder uut120(P_7_7,P_8_6,P_9_5,s47,c47);
	FullAdder uut121(P_10_4,c41,c42,s48,c48);
	FullAdder uut122(c43,c44,c45,s49,c49);
	FullAdder uut123(P_5_10,P_6_9,P_7_8,s50,c50);
	FullAdder uut124(P_8_7,P_9_6,P_10_5,s51,c51);
	FullAdder uut125(c46,c47,c48,s52,c52);
	FullAdder uut126(P_6_10,P_7_9,P_8_8,s53,c53);
	FullAdder uut127(P_9_7,P_10_6,c50,s54,c54);

	HalfAdder uut128(P_0_3,P_1_2,s55,c55);
	FullAdder uut129(P_2_2,P_3_1,P_4_0,s56,c56);
	FullAdder uut130(P_5_0,c0,s1,s57,c57);
	FullAdder uut131(c2,s3,s4,s58,c58);
	FullAdder uut132(s6,s7,s8,s59,c59);
	FullAdder uut133(s11,s12,s13,s60,c60);
	FullAdder uut134(s17,s18,s19,s61,c61);
	FullAdder uut135(s24,s25,s26,s62,c62);
	FullAdder uut136(s31,s32,s33,s63,c63);
	FullAdder uut137(s37,s38,s39,s64,c64);
	FullAdder uut138(s42,s43,s44,s65,c65);
	FullAdder uut139(s46,s47,s48,s66,c66);
	FullAdder uut140(c49,s50,s51,s67,c67);
	FullAdder uut141(c51,c52,s53,s68,c68);

	HalfAdder uut142(P_0_2,P_1_1,s69,c69);
	FullAdder uut143(P_2_1,P_3_0,s55,s70,c70);
	FullAdder uut144(s0,c55,s56,s71,c71);
	FullAdder uut145(s2,c56,s57,s72,c72);
	FullAdder uut146(s5,c57,s58,s73,c73);
	FullAdder uut147(s9,c58,s59,s74,c74);
	FullAdder uut148(s14,c59,s60,s75,c75);
	FullAdder uut149(s20,c60,s61,s76,c76);
	FullAdder uut150(s27,c61,s62,s77,c77);
	FullAdder uut151(s34,c62,s63,s78,c78);
	FullAdder uut152(s40,c63,s64,s79,c79);
	FullAdder uut153(s45,c64,s65,s80,c80);
	FullAdder uut154(s49,c65,s66,s81,c81);
	FullAdder uut155(s52,c66,s67,s82,c82);
	FullAdder uut156(s54,c67,s68,s83,c83);

	wire [15:0] operandA;
	assign operandA = {c82,c81,c80,c79,c78,c77,c76,c75,c74,c73,c72,c71,c70,c69,P_2_0,P_0_1};
	wire [15:0] operandB;
	assign operandB = {s83,s82,s81,s80,s79,s78,s77,s76,s75,s74,s73,s72,s71,s70,s69,P_1_0};
	wire [16:0] Sum;
	unsignedBrentKungAdder16bit uut157(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
endmodule
/* Top Module unsignedBrentKungAdder16bit */
module unsignedBrentKungAdder16bit(input [15:0]A, input [15:0]B, output [16:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);

	/* First processing stage */

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut16(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut17(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut18(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut19(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut20(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut21(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut22(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut23(P015,G015, G014,P014,P115,G115);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut24(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut25(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut26(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut27(P115,G115, G113,P113,P215,G215);

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut28(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut29(P215,G215, G211,P211,P315,G315);

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut30(P315,G315,G37, P415, G415);

	/* Second processing stage */

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;
	assign P52 = P42;
	assign G52 = G42;
	assign P53 = P43;
	assign G53 = G43;
	assign P54 = P44;
	assign G54 = G44;
	assign P55 = P45;
	assign G55 = G45;
	assign P56 = P46;
	assign G56 = G46;
	assign P57 = P47;
	assign G57 = G47;
	assign P58 = P48;
	assign G58 = G48;
	assign P59 = P49;
	assign G59 = G49;
	assign P510 = P410;
	assign G510 = G410;
	GrayCell uut31(P411,G411,G47, P511, G511);
	assign P512 = P412;
	assign G512 = G412;
	assign P513 = P413;
	assign G513 = G413;
	assign P514 = P414;
	assign G514 = G414;
	assign P515 = P415;
	assign G515 = G415;

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	GrayCell uut32(P55,G55,G53, P65, G65);
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	GrayCell uut33(P59,G59,G57, P69, G69);
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	GrayCell uut34(P513,G513,G511, P613, G613);
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	GrayCell uut35(P62,G62,G61, P72, G72);
	assign P73 = P63;
	assign G73 = G63;
	GrayCell uut36(P64,G64,G63, P74, G74);
	assign P75 = P65;
	assign G75 = G65;
	GrayCell uut37(P66,G66,G65, P76, G76);
	assign P77 = P67;
	assign G77 = G67;
	GrayCell uut38(P68,G68,G67, P78, G78);
	assign P79 = P69;
	assign G79 = G69;
	GrayCell uut39(P610,G610,G69, P710, G710);
	assign P711 = P611;
	assign G711 = G611;
	GrayCell uut40(P612,G612,G611, P712, G712);
	assign P713 = P613;
	assign G713 = G613;
	GrayCell uut41(P614,G614,G613, P714, G714);
	assign P715 = P615;
	assign G715 = G615;

	assign carry0 = G70;
	assign carry1 = G71;
	assign carry2 = G72;
	assign carry3 = G73;
	assign carry4 = G74;
	assign carry5 = G75;
	assign carry6 = G76;
	assign carry7 = G77;
	assign carry8 = G78;
	assign carry9 = G79;
	assign carry10 = G710;
	assign carry11 = G711;
	assign carry12 = G712;
	assign carry13 = G713;
	assign carry14 = G714;
	assign carry15 = G715;
	assign Sum[0] = P00;
	XorGate uut42(P01, carry0, Sum[1]);
	XorGate uut43(P02, carry1, Sum[2]);
	XorGate uut44(P03, carry2, Sum[3]);
	XorGate uut45(P04, carry3, Sum[4]);
	XorGate uut46(P05, carry4, Sum[5]);
	XorGate uut47(P06, carry5, Sum[6]);
	XorGate uut48(P07, carry6, Sum[7]);
	XorGate uut49(P08, carry7, Sum[8]);
	XorGate uut50(P09, carry8, Sum[9]);
	XorGate uut51(P010, carry9, Sum[10]);
	XorGate uut52(P011, carry10, Sum[11]);
	XorGate uut53(P012, carry11, Sum[12]);
	XorGate uut54(P013, carry12, Sum[13]);
	XorGate uut55(P014, carry13, Sum[14]);
	XorGate uut56(P015, carry14, Sum[15]);
	assign Sum[16] = carry15;
endmodule

module signedDaddaTreeMultiplier11x8bit(input [10:0] A, input [7:0]B, output [18:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	NandGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[0], B[1], P_1_0);
	AndGate uut12(A[1], B[1], P_1_1);
	AndGate uut13(A[2], B[1], P_1_2);
	AndGate uut14(A[3], B[1], P_1_3);
	AndGate uut15(A[4], B[1], P_1_4);
	AndGate uut16(A[5], B[1], P_1_5);
	AndGate uut17(A[6], B[1], P_1_6);
	AndGate uut18(A[7], B[1], P_1_7);
	AndGate uut19(A[8], B[1], P_1_8);
	AndGate uut20(A[9], B[1], P_1_9);
	NandGate uut21(A[10], B[1], P_1_10);
	AndGate uut22(A[0], B[2], P_2_0);
	AndGate uut23(A[1], B[2], P_2_1);
	AndGate uut24(A[2], B[2], P_2_2);
	AndGate uut25(A[3], B[2], P_2_3);
	AndGate uut26(A[4], B[2], P_2_4);
	AndGate uut27(A[5], B[2], P_2_5);
	AndGate uut28(A[6], B[2], P_2_6);
	AndGate uut29(A[7], B[2], P_2_7);
	AndGate uut30(A[8], B[2], P_2_8);
	AndGate uut31(A[9], B[2], P_2_9);
	NandGate uut32(A[10], B[2], P_2_10);
	AndGate uut33(A[0], B[3], P_3_0);
	AndGate uut34(A[1], B[3], P_3_1);
	AndGate uut35(A[2], B[3], P_3_2);
	AndGate uut36(A[3], B[3], P_3_3);
	AndGate uut37(A[4], B[3], P_3_4);
	AndGate uut38(A[5], B[3], P_3_5);
	AndGate uut39(A[6], B[3], P_3_6);
	AndGate uut40(A[7], B[3], P_3_7);
	AndGate uut41(A[8], B[3], P_3_8);
	AndGate uut42(A[9], B[3], P_3_9);
	NandGate uut43(A[10], B[3], P_3_10);
	AndGate uut44(A[0], B[4], P_4_0);
	AndGate uut45(A[1], B[4], P_4_1);
	AndGate uut46(A[2], B[4], P_4_2);
	AndGate uut47(A[3], B[4], P_4_3);
	AndGate uut48(A[4], B[4], P_4_4);
	AndGate uut49(A[5], B[4], P_4_5);
	AndGate uut50(A[6], B[4], P_4_6);
	AndGate uut51(A[7], B[4], P_4_7);
	AndGate uut52(A[8], B[4], P_4_8);
	AndGate uut53(A[9], B[4], P_4_9);
	NandGate uut54(A[10], B[4], P_4_10);
	AndGate uut55(A[0], B[5], P_5_0);
	AndGate uut56(A[1], B[5], P_5_1);
	AndGate uut57(A[2], B[5], P_5_2);
	AndGate uut58(A[3], B[5], P_5_3);
	AndGate uut59(A[4], B[5], P_5_4);
	AndGate uut60(A[5], B[5], P_5_5);
	AndGate uut61(A[6], B[5], P_5_6);
	AndGate uut62(A[7], B[5], P_5_7);
	AndGate uut63(A[8], B[5], P_5_8);
	AndGate uut64(A[9], B[5], P_5_9);
	NandGate uut65(A[10], B[5], P_5_10);
	AndGate uut66(A[0], B[6], P_6_0);
	AndGate uut67(A[1], B[6], P_6_1);
	AndGate uut68(A[2], B[6], P_6_2);
	AndGate uut69(A[3], B[6], P_6_3);
	AndGate uut70(A[4], B[6], P_6_4);
	AndGate uut71(A[5], B[6], P_6_5);
	AndGate uut72(A[6], B[6], P_6_6);
	AndGate uut73(A[7], B[6], P_6_7);
	AndGate uut74(A[8], B[6], P_6_8);
	AndGate uut75(A[9], B[6], P_6_9);
	NandGate uut76(A[10], B[6], P_6_10);
	AndGate uut77(A[0], B[7], P_7_0);
	AndGate uut78(A[1], B[7], P_7_1);
	AndGate uut79(A[2], B[7], P_7_2);
	AndGate uut80(A[3], B[7], P_7_3);
	AndGate uut81(A[4], B[7], P_7_4);
	AndGate uut82(A[5], B[7], P_7_5);
	AndGate uut83(A[6], B[7], P_7_6);
	AndGate uut84(A[7], B[7], P_7_7);
	AndGate uut85(A[8], B[7], P_7_8);
	AndGate uut86(A[9], B[7], P_7_9);
	NandGate uut87(A[10], B[7], P_7_10);
	assign P_8_0 = P_7_0;
	assign P_8_1 = P_7_1;
	assign P_8_2 = P_7_2;
	assign P_8_3 = P_7_3;
	assign P_8_4 = P_7_4;
	assign P_8_5 = P_7_5;
	assign P_8_6 = P_7_6;
	assign P_8_7 = P_7_7;
	assign P_8_8 = P_7_8;
	assign P_8_9 = P_7_9;
	assign P_8_10 = P_7_10;
	assign P_9_0 = P_8_0;
	assign P_9_1 = P_8_1;
	assign P_9_2 = P_8_2;
	assign P_9_3 = P_8_3;
	assign P_9_4 = P_8_4;
	assign P_9_5 = P_8_5;
	assign P_9_6 = P_8_6;
	assign P_9_7 = P_8_7;
	assign P_9_8 = P_8_8;
	assign P_9_9 = P_8_9;
	NandGate uut88(A[0], B[7], P_10_0);
	NandGate uut89(A[1], B[7], P_10_1);
	NandGate uut90(A[2], B[7], P_10_2);
	NandGate uut91(A[3], B[7], P_10_3);
	NandGate uut92(A[4], B[7], P_10_4);
	NandGate uut93(A[5], B[7], P_10_5);
	NandGate uut94(A[6], B[7], P_10_6);
	NandGate uut95(A[7], B[7], P_10_7);
	NandGate uut96(A[8], B[7], P_10_8);
	HalfAdder uut97(P_0_6,P_1_5,s0,c0);
	FullAdder uut98(P_0_7,P_1_6,P_2_5,s1,c1);
	HalfAdder uut99(P_3_4,P_4_3,s2,c2);
	FullAdder uut100(P_0_8,P_1_7,P_2_6,s3,c3);
	FullAdder uut101(P_3_5,P_4_4,P_5_3,s4,c4);
	HalfAdder uut102(P_6_2,P_7_1,s5,c5);
	FullAdder uut103(P_0_9,P_1_8,P_2_7,s6,c6);
	FullAdder uut104(P_3_6,P_4_5,P_5_4,s7,c7);
	FullAdder uut105(P_6_3,P_7_2,P_8_1,s8,c8);
	HalfAdder uut106(P_9_0,c3,s9,c9);
	FullAdder uut107(P_0_10,P_1_9,P_2_8,s10,c10);
	FullAdder uut108(P_3_7,P_4_6,P_5_5,s11,c11);
	FullAdder uut109(P_6_4,P_7_3,P_8_2,s12,c12);
	FullAdder uut110(P_9_1,P_10_0,c6,s13,c13);
	HalfAdder uut111(c7,c8,s14,c14);
	FullAdder uut112(1'b1,P_1_10,P_2_9,s15,c15);
	FullAdder uut113(P_3_8,P_4_7,P_5_6,s16,c16);
	FullAdder uut114(P_6_5,P_7_4,P_8_3,s17,c17);
	FullAdder uut115(P_9_2,P_10_1,c10,s18,c18);
	FullAdder uut116(c11,c12,c13,s19,c19);
	FullAdder uut117(P_2_10,P_3_9,P_4_8,s20,c20);
	FullAdder uut118(P_5_7,P_6_6,P_7_5,s21,c21);
	FullAdder uut119(P_8_4,P_9_3,P_10_2,s22,c22);
	FullAdder uut120(c15,c16,c17,s23,c23);
	FullAdder uut121(P_3_10,P_4_9,P_5_8,s24,c24);
	FullAdder uut122(P_6_7,P_7_6,P_8_5,s25,c25);
	FullAdder uut123(P_9_4,P_10_3,c20,s26,c26);
	FullAdder uut124(P_4_10,P_5_9,P_6_8,s27,c27);
	FullAdder uut125(P_7_7,P_8_6,P_9_5,s28,c28);
	FullAdder uut126(P_5_10,P_6_9,P_7_8,s29,c29);

	HalfAdder uut127(P_0_4,P_1_3,s30,c30);
	FullAdder uut128(P_0_5,P_1_4,P_2_3,s31,c31);
	HalfAdder uut129(P_3_2,P_4_1,s32,c32);
	FullAdder uut130(P_2_4,P_3_3,P_4_2,s33,c33);
	FullAdder uut131(P_5_1,P_6_0,s0,s34,c34);
	FullAdder uut132(P_5_2,P_6_1,P_7_0,s35,c35);
	FullAdder uut133(c0,s1,s2,s36,c36);
	FullAdder uut134(P_8_0,c1,c2,s37,c37);
	FullAdder uut135(s3,s4,s5,s38,c38);
	FullAdder uut136(c4,c5,s6,s39,c39);
	FullAdder uut137(s7,s8,s9,s40,c40);
	FullAdder uut138(c9,s10,s11,s41,c41);
	FullAdder uut139(s12,s13,s14,s42,c42);
	FullAdder uut140(c14,s15,s16,s43,c43);
	FullAdder uut141(s17,s18,s19,s44,c44);
	FullAdder uut142(c18,c19,s20,s45,c45);
	FullAdder uut143(s21,s22,s23,s46,c46);
	FullAdder uut144(c21,c22,c23,s47,c47);
	FullAdder uut145(s24,s25,s26,s48,c48);
	FullAdder uut146(P_10_4,c24,c25,s49,c49);
	FullAdder uut147(c26,s27,s28,s50,c50);
	FullAdder uut148(P_8_7,P_9_6,P_10_5,s51,c51);
	FullAdder uut149(c27,c28,s29,s52,c52);
	FullAdder uut150(P_6_10,P_7_9,P_8_8,s53,c53);
	FullAdder uut151(P_9_7,P_10_6,c29,s54,c54);
	FullAdder uut152(P_7_10,P_8_9,P_9_8,s55,c55);

	HalfAdder uut153(P_0_3,P_1_2,s56,c56);
	FullAdder uut154(P_2_2,P_3_1,P_4_0,s57,c57);
	FullAdder uut155(P_5_0,c30,s31,s58,c58);
	FullAdder uut156(c31,c32,s33,s59,c59);
	FullAdder uut157(c33,c34,s35,s60,c60);
	FullAdder uut158(c35,c36,s37,s61,c61);
	FullAdder uut159(c37,c38,s39,s62,c62);
	FullAdder uut160(c39,c40,s41,s63,c63);
	FullAdder uut161(c41,c42,s43,s64,c64);
	FullAdder uut162(c43,c44,s45,s65,c65);
	FullAdder uut163(c45,c46,s47,s66,c66);
	FullAdder uut164(c47,c48,s49,s67,c67);
	FullAdder uut165(c49,c50,s51,s68,c68);
	FullAdder uut166(c51,c52,s53,s69,c69);
	FullAdder uut167(P_10_7,c53,c54,s70,c70);
	FullAdder uut168(P_8_10,P_9_9,P_10_8,s71,c71);

	HalfAdder uut169(P_0_2,P_1_1,s72,c72);
	FullAdder uut170(P_2_1,P_3_0,s56,s73,c73);
	FullAdder uut171(s30,c56,s57,s74,c74);
	FullAdder uut172(s32,c57,s58,s75,c75);
	FullAdder uut173(s34,c58,s59,s76,c76);
	FullAdder uut174(s36,c59,s60,s77,c77);
	FullAdder uut175(s38,c60,s61,s78,c78);
	FullAdder uut176(s40,c61,s62,s79,c79);
	FullAdder uut177(s42,c62,s63,s80,c80);
	FullAdder uut178(s44,c63,s64,s81,c81);
	FullAdder uut179(s46,c64,s65,s82,c82);
	FullAdder uut180(s48,c65,s66,s83,c83);
	FullAdder uut181(s50,c66,s67,s84,c84);
	FullAdder uut182(s52,c67,s68,s85,c85);
	FullAdder uut183(s54,c68,s69,s86,c86);
	FullAdder uut184(s55,c69,s70,s87,c87);
	FullAdder uut185(c55,c70,s71,s88,c88);

	wire [17:0] operandA;
	assign operandA = {c87,c86,c85,c84,c83,c82,c81,c80,c79,c78,c77,c76,c75,c74,c73,c72,P_2_0,P_0_1};
	wire [17:0] operandB;
	assign operandB = {s88,s87,s86,s85,s84,s83,s82,s81,s80,s79,s78,s77,s76,s75,s74,s73,s72,P_1_0};
	wire [18:0] Sum;
	unsignedBrentKungAdder18bit uut186(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
endmodule
/* Top Module unsignedBrentKungAdder18bit */
module unsignedBrentKungAdder18bit(input [17:0]A, input [17:0]B, output [18:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);

	/* First processing stage */

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut18(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut19(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut20(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut21(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut22(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut23(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut24(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut25(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut26(P017,G017, G016,P016,P117,G117);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut27(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut28(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut29(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut30(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut31(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut32(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut33(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	/* Second processing stage */

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut34(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut35(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut36(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut37(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut38(P717,G717,G715, P817, G817);

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut39(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut40(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut41(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut42(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut43(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut44(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut45(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut46(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign Sum[0] = P00;
	XorGate uut47(P01, carry0, Sum[1]);
	XorGate uut48(P02, carry1, Sum[2]);
	XorGate uut49(P03, carry2, Sum[3]);
	XorGate uut50(P04, carry3, Sum[4]);
	XorGate uut51(P05, carry4, Sum[5]);
	XorGate uut52(P06, carry5, Sum[6]);
	XorGate uut53(P07, carry6, Sum[7]);
	XorGate uut54(P08, carry7, Sum[8]);
	XorGate uut55(P09, carry8, Sum[9]);
	XorGate uut56(P010, carry9, Sum[10]);
	XorGate uut57(P011, carry10, Sum[11]);
	XorGate uut58(P012, carry11, Sum[12]);
	XorGate uut59(P013, carry12, Sum[13]);
	XorGate uut60(P014, carry13, Sum[14]);
	XorGate uut61(P015, carry14, Sum[15]);
	XorGate uut62(P016, carry15, Sum[16]);
	XorGate uut63(P017, carry16, Sum[17]);
	assign Sum[18] = carry17;
endmodule

module signedDaddaTreeMultiplier11x11bit(input [10:0] A, input [10:0]B, output [21:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	NandGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[0], B[1], P_1_0);
	AndGate uut12(A[1], B[1], P_1_1);
	AndGate uut13(A[2], B[1], P_1_2);
	AndGate uut14(A[3], B[1], P_1_3);
	AndGate uut15(A[4], B[1], P_1_4);
	AndGate uut16(A[5], B[1], P_1_5);
	AndGate uut17(A[6], B[1], P_1_6);
	AndGate uut18(A[7], B[1], P_1_7);
	AndGate uut19(A[8], B[1], P_1_8);
	AndGate uut20(A[9], B[1], P_1_9);
	NandGate uut21(A[10], B[1], P_1_10);
	AndGate uut22(A[0], B[2], P_2_0);
	AndGate uut23(A[1], B[2], P_2_1);
	AndGate uut24(A[2], B[2], P_2_2);
	AndGate uut25(A[3], B[2], P_2_3);
	AndGate uut26(A[4], B[2], P_2_4);
	AndGate uut27(A[5], B[2], P_2_5);
	AndGate uut28(A[6], B[2], P_2_6);
	AndGate uut29(A[7], B[2], P_2_7);
	AndGate uut30(A[8], B[2], P_2_8);
	AndGate uut31(A[9], B[2], P_2_9);
	NandGate uut32(A[10], B[2], P_2_10);
	AndGate uut33(A[0], B[3], P_3_0);
	AndGate uut34(A[1], B[3], P_3_1);
	AndGate uut35(A[2], B[3], P_3_2);
	AndGate uut36(A[3], B[3], P_3_3);
	AndGate uut37(A[4], B[3], P_3_4);
	AndGate uut38(A[5], B[3], P_3_5);
	AndGate uut39(A[6], B[3], P_3_6);
	AndGate uut40(A[7], B[3], P_3_7);
	AndGate uut41(A[8], B[3], P_3_8);
	AndGate uut42(A[9], B[3], P_3_9);
	NandGate uut43(A[10], B[3], P_3_10);
	AndGate uut44(A[0], B[4], P_4_0);
	AndGate uut45(A[1], B[4], P_4_1);
	AndGate uut46(A[2], B[4], P_4_2);
	AndGate uut47(A[3], B[4], P_4_3);
	AndGate uut48(A[4], B[4], P_4_4);
	AndGate uut49(A[5], B[4], P_4_5);
	AndGate uut50(A[6], B[4], P_4_6);
	AndGate uut51(A[7], B[4], P_4_7);
	AndGate uut52(A[8], B[4], P_4_8);
	AndGate uut53(A[9], B[4], P_4_9);
	NandGate uut54(A[10], B[4], P_4_10);
	AndGate uut55(A[0], B[5], P_5_0);
	AndGate uut56(A[1], B[5], P_5_1);
	AndGate uut57(A[2], B[5], P_5_2);
	AndGate uut58(A[3], B[5], P_5_3);
	AndGate uut59(A[4], B[5], P_5_4);
	AndGate uut60(A[5], B[5], P_5_5);
	AndGate uut61(A[6], B[5], P_5_6);
	AndGate uut62(A[7], B[5], P_5_7);
	AndGate uut63(A[8], B[5], P_5_8);
	AndGate uut64(A[9], B[5], P_5_9);
	NandGate uut65(A[10], B[5], P_5_10);
	AndGate uut66(A[0], B[6], P_6_0);
	AndGate uut67(A[1], B[6], P_6_1);
	AndGate uut68(A[2], B[6], P_6_2);
	AndGate uut69(A[3], B[6], P_6_3);
	AndGate uut70(A[4], B[6], P_6_4);
	AndGate uut71(A[5], B[6], P_6_5);
	AndGate uut72(A[6], B[6], P_6_6);
	AndGate uut73(A[7], B[6], P_6_7);
	AndGate uut74(A[8], B[6], P_6_8);
	AndGate uut75(A[9], B[6], P_6_9);
	NandGate uut76(A[10], B[6], P_6_10);
	AndGate uut77(A[0], B[7], P_7_0);
	AndGate uut78(A[1], B[7], P_7_1);
	AndGate uut79(A[2], B[7], P_7_2);
	AndGate uut80(A[3], B[7], P_7_3);
	AndGate uut81(A[4], B[7], P_7_4);
	AndGate uut82(A[5], B[7], P_7_5);
	AndGate uut83(A[6], B[7], P_7_6);
	AndGate uut84(A[7], B[7], P_7_7);
	AndGate uut85(A[8], B[7], P_7_8);
	AndGate uut86(A[9], B[7], P_7_9);
	NandGate uut87(A[10], B[7], P_7_10);
	AndGate uut88(A[0], B[8], P_8_0);
	AndGate uut89(A[1], B[8], P_8_1);
	AndGate uut90(A[2], B[8], P_8_2);
	AndGate uut91(A[3], B[8], P_8_3);
	AndGate uut92(A[4], B[8], P_8_4);
	AndGate uut93(A[5], B[8], P_8_5);
	AndGate uut94(A[6], B[8], P_8_6);
	AndGate uut95(A[7], B[8], P_8_7);
	AndGate uut96(A[8], B[8], P_8_8);
	AndGate uut97(A[9], B[8], P_8_9);
	NandGate uut98(A[10], B[8], P_8_10);
	AndGate uut99(A[0], B[9], P_9_0);
	AndGate uut100(A[1], B[9], P_9_1);
	AndGate uut101(A[2], B[9], P_9_2);
	AndGate uut102(A[3], B[9], P_9_3);
	AndGate uut103(A[4], B[9], P_9_4);
	AndGate uut104(A[5], B[9], P_9_5);
	AndGate uut105(A[6], B[9], P_9_6);
	AndGate uut106(A[7], B[9], P_9_7);
	AndGate uut107(A[8], B[9], P_9_8);
	AndGate uut108(A[9], B[9], P_9_9);
	NandGate uut109(A[10], B[9], P_9_10);
	NandGate uut110(A[0], B[10], P_10_0);
	NandGate uut111(A[1], B[10], P_10_1);
	NandGate uut112(A[2], B[10], P_10_2);
	NandGate uut113(A[3], B[10], P_10_3);
	NandGate uut114(A[4], B[10], P_10_4);
	NandGate uut115(A[5], B[10], P_10_5);
	NandGate uut116(A[6], B[10], P_10_6);
	NandGate uut117(A[7], B[10], P_10_7);
	NandGate uut118(A[8], B[10], P_10_8);
	NandGate uut119(A[9], B[10], P_10_9);
	AndGate uut120(A[10], B[10], P_10_10);
	HalfAdder uut121(P_0_9,P_1_8,s0,c0);
	FullAdder uut122(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut123(P_3_7,P_4_6,s2,c2);
	FullAdder uut124(1'b1,P_1_10,P_2_9,s3,c3);
	FullAdder uut125(P_3_8,P_4_7,P_5_6,s4,c4);
	FullAdder uut126(P_2_10,P_3_9,P_4_8,s5,c5);

	HalfAdder uut127(P_0_6,P_1_5,s6,c6);
	FullAdder uut128(P_0_7,P_1_6,P_2_5,s7,c7);
	HalfAdder uut129(P_3_4,P_4_3,s8,c8);
	FullAdder uut130(P_0_8,P_1_7,P_2_6,s9,c9);
	FullAdder uut131(P_3_5,P_4_4,P_5_3,s10,c10);
	HalfAdder uut132(P_6_2,P_7_1,s11,c11);
	FullAdder uut133(P_2_7,P_3_6,P_4_5,s12,c12);
	FullAdder uut134(P_5_4,P_6_3,P_7_2,s13,c13);
	FullAdder uut135(P_8_1,P_9_0,s0,s14,c14);
	FullAdder uut136(P_5_5,P_6_4,P_7_3,s15,c15);
	FullAdder uut137(P_8_2,P_9_1,P_10_0,s16,c16);
	FullAdder uut138(c0,s1,s2,s17,c17);
	FullAdder uut139(P_6_5,P_7_4,P_8_3,s18,c18);
	FullAdder uut140(P_9_2,P_10_1,c1,s19,c19);
	FullAdder uut141(c2,s3,s4,s20,c20);
	FullAdder uut142(P_5_7,P_6_6,P_7_5,s21,c21);
	FullAdder uut143(P_8_4,P_9_3,P_10_2,s22,c22);
	FullAdder uut144(c3,c4,s5,s23,c23);
	FullAdder uut145(P_3_10,P_4_9,P_5_8,s24,c24);
	FullAdder uut146(P_6_7,P_7_6,P_8_5,s25,c25);
	FullAdder uut147(P_9_4,P_10_3,c5,s26,c26);
	FullAdder uut148(P_4_10,P_5_9,P_6_8,s27,c27);
	FullAdder uut149(P_7_7,P_8_6,P_9_5,s28,c28);
	FullAdder uut150(P_5_10,P_6_9,P_7_8,s29,c29);

	HalfAdder uut151(P_0_4,P_1_3,s30,c30);
	FullAdder uut152(P_0_5,P_1_4,P_2_3,s31,c31);
	HalfAdder uut153(P_3_2,P_4_1,s32,c32);
	FullAdder uut154(P_2_4,P_3_3,P_4_2,s33,c33);
	FullAdder uut155(P_5_1,P_6_0,s6,s34,c34);
	FullAdder uut156(P_5_2,P_6_1,P_7_0,s35,c35);
	FullAdder uut157(c6,s7,s8,s36,c36);
	FullAdder uut158(P_8_0,c7,c8,s37,c37);
	FullAdder uut159(s9,s10,s11,s38,c38);
	FullAdder uut160(c9,c10,c11,s39,c39);
	FullAdder uut161(s12,s13,s14,s40,c40);
	FullAdder uut162(c12,c13,c14,s41,c41);
	FullAdder uut163(s15,s16,s17,s42,c42);
	FullAdder uut164(c15,c16,c17,s43,c43);
	FullAdder uut165(s18,s19,s20,s44,c44);
	FullAdder uut166(c18,c19,c20,s45,c45);
	FullAdder uut167(s21,s22,s23,s46,c46);
	FullAdder uut168(c21,c22,c23,s47,c47);
	FullAdder uut169(s24,s25,s26,s48,c48);
	FullAdder uut170(P_10_4,c24,c25,s49,c49);
	FullAdder uut171(c26,s27,s28,s50,c50);
	FullAdder uut172(P_8_7,P_9_6,P_10_5,s51,c51);
	FullAdder uut173(c27,c28,s29,s52,c52);
	FullAdder uut174(P_6_10,P_7_9,P_8_8,s53,c53);
	FullAdder uut175(P_9_7,P_10_6,c29,s54,c54);
	FullAdder uut176(P_7_10,P_8_9,P_9_8,s55,c55);

	HalfAdder uut177(P_0_3,P_1_2,s56,c56);
	FullAdder uut178(P_2_2,P_3_1,P_4_0,s57,c57);
	FullAdder uut179(P_5_0,c30,s31,s58,c58);
	FullAdder uut180(c31,c32,s33,s59,c59);
	FullAdder uut181(c33,c34,s35,s60,c60);
	FullAdder uut182(c35,c36,s37,s61,c61);
	FullAdder uut183(c37,c38,s39,s62,c62);
	FullAdder uut184(c39,c40,s41,s63,c63);
	FullAdder uut185(c41,c42,s43,s64,c64);
	FullAdder uut186(c43,c44,s45,s65,c65);
	FullAdder uut187(c45,c46,s47,s66,c66);
	FullAdder uut188(c47,c48,s49,s67,c67);
	FullAdder uut189(c49,c50,s51,s68,c68);
	FullAdder uut190(c51,c52,s53,s69,c69);
	FullAdder uut191(P_10_7,c53,c54,s70,c70);
	FullAdder uut192(P_8_10,P_9_9,P_10_8,s71,c71);

	HalfAdder uut193(P_0_2,P_1_1,s72,c72);
	FullAdder uut194(P_2_1,P_3_0,s56,s73,c73);
	FullAdder uut195(s30,c56,s57,s74,c74);
	FullAdder uut196(s32,c57,s58,s75,c75);
	FullAdder uut197(s34,c58,s59,s76,c76);
	FullAdder uut198(s36,c59,s60,s77,c77);
	FullAdder uut199(s38,c60,s61,s78,c78);
	FullAdder uut200(s40,c61,s62,s79,c79);
	FullAdder uut201(s42,c62,s63,s80,c80);
	FullAdder uut202(s44,c63,s64,s81,c81);
	FullAdder uut203(s46,c64,s65,s82,c82);
	FullAdder uut204(s48,c65,s66,s83,c83);
	FullAdder uut205(s50,c66,s67,s84,c84);
	FullAdder uut206(s52,c67,s68,s85,c85);
	FullAdder uut207(s54,c68,s69,s86,c86);
	FullAdder uut208(s55,c69,s70,s87,c87);
	FullAdder uut209(c55,c70,s71,s88,c88);
	FullAdder uut210(P_9_10,P_10_9,c71,s89,c89);

	wire [19:0] operandA;
	assign operandA = {P_10_10,c88,c87,c86,c85,c84,c83,c82,c81,c80,c79,c78,c77,c76,c75,c74,c73,c72,P_2_0,P_0_1};
	wire [19:0] operandB;
	assign operandB = {c89,s89,s88,s87,s86,s85,s84,s83,s82,s81,s80,s79,s78,s77,s76,s75,s74,s73,s72,P_1_0};
	wire [20:0] Sum;
	unsignedBrentKungAdder20bit uut211(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = ~Sum[20];
endmodule
/* Top Module unsignedBrentKungAdder20bit */
module unsignedBrentKungAdder20bit(input [19:0]A, input [19:0]B, output [20:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);

	/* First processing stage */

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut20(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut21(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut22(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut23(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut24(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut25(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut26(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut27(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut28(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut29(P019,G019, G018,P018,P119,G119);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut30(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut31(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut32(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut33(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut34(P119,G119, G117,P117,P219,G219);

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut35(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut36(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut37(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	/* Second processing stage */

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut38(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut39(P619,G619,G615, P719, G719);

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut40(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut41(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut42(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut43(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut44(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut45(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut46(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut47(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut48(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut49(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut50(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut51(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut52(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign Sum[0] = P00;
	XorGate uut53(P01, carry0, Sum[1]);
	XorGate uut54(P02, carry1, Sum[2]);
	XorGate uut55(P03, carry2, Sum[3]);
	XorGate uut56(P04, carry3, Sum[4]);
	XorGate uut57(P05, carry4, Sum[5]);
	XorGate uut58(P06, carry5, Sum[6]);
	XorGate uut59(P07, carry6, Sum[7]);
	XorGate uut60(P08, carry7, Sum[8]);
	XorGate uut61(P09, carry8, Sum[9]);
	XorGate uut62(P010, carry9, Sum[10]);
	XorGate uut63(P011, carry10, Sum[11]);
	XorGate uut64(P012, carry11, Sum[12]);
	XorGate uut65(P013, carry12, Sum[13]);
	XorGate uut66(P014, carry13, Sum[14]);
	XorGate uut67(P015, carry14, Sum[15]);
	XorGate uut68(P016, carry15, Sum[16]);
	XorGate uut69(P017, carry16, Sum[17]);
	XorGate uut70(P018, carry17, Sum[18]);
	XorGate uut71(P019, carry18, Sum[19]);
	assign Sum[20] = carry19;
endmodule

module signedDaddaTreeMultiplier12x7bit(input [11:0] A, input [6:0]B, output [18:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	NandGate uut11(A[11], B[0], P_0_11);
	AndGate uut12(A[0], B[1], P_1_0);
	AndGate uut13(A[1], B[1], P_1_1);
	AndGate uut14(A[2], B[1], P_1_2);
	AndGate uut15(A[3], B[1], P_1_3);
	AndGate uut16(A[4], B[1], P_1_4);
	AndGate uut17(A[5], B[1], P_1_5);
	AndGate uut18(A[6], B[1], P_1_6);
	AndGate uut19(A[7], B[1], P_1_7);
	AndGate uut20(A[8], B[1], P_1_8);
	AndGate uut21(A[9], B[1], P_1_9);
	AndGate uut22(A[10], B[1], P_1_10);
	NandGate uut23(A[11], B[1], P_1_11);
	AndGate uut24(A[0], B[2], P_2_0);
	AndGate uut25(A[1], B[2], P_2_1);
	AndGate uut26(A[2], B[2], P_2_2);
	AndGate uut27(A[3], B[2], P_2_3);
	AndGate uut28(A[4], B[2], P_2_4);
	AndGate uut29(A[5], B[2], P_2_5);
	AndGate uut30(A[6], B[2], P_2_6);
	AndGate uut31(A[7], B[2], P_2_7);
	AndGate uut32(A[8], B[2], P_2_8);
	AndGate uut33(A[9], B[2], P_2_9);
	AndGate uut34(A[10], B[2], P_2_10);
	NandGate uut35(A[11], B[2], P_2_11);
	AndGate uut36(A[0], B[3], P_3_0);
	AndGate uut37(A[1], B[3], P_3_1);
	AndGate uut38(A[2], B[3], P_3_2);
	AndGate uut39(A[3], B[3], P_3_3);
	AndGate uut40(A[4], B[3], P_3_4);
	AndGate uut41(A[5], B[3], P_3_5);
	AndGate uut42(A[6], B[3], P_3_6);
	AndGate uut43(A[7], B[3], P_3_7);
	AndGate uut44(A[8], B[3], P_3_8);
	AndGate uut45(A[9], B[3], P_3_9);
	AndGate uut46(A[10], B[3], P_3_10);
	NandGate uut47(A[11], B[3], P_3_11);
	AndGate uut48(A[0], B[4], P_4_0);
	AndGate uut49(A[1], B[4], P_4_1);
	AndGate uut50(A[2], B[4], P_4_2);
	AndGate uut51(A[3], B[4], P_4_3);
	AndGate uut52(A[4], B[4], P_4_4);
	AndGate uut53(A[5], B[4], P_4_5);
	AndGate uut54(A[6], B[4], P_4_6);
	AndGate uut55(A[7], B[4], P_4_7);
	AndGate uut56(A[8], B[4], P_4_8);
	AndGate uut57(A[9], B[4], P_4_9);
	AndGate uut58(A[10], B[4], P_4_10);
	NandGate uut59(A[11], B[4], P_4_11);
	AndGate uut60(A[0], B[5], P_5_0);
	AndGate uut61(A[1], B[5], P_5_1);
	AndGate uut62(A[2], B[5], P_5_2);
	AndGate uut63(A[3], B[5], P_5_3);
	AndGate uut64(A[4], B[5], P_5_4);
	AndGate uut65(A[5], B[5], P_5_5);
	AndGate uut66(A[6], B[5], P_5_6);
	AndGate uut67(A[7], B[5], P_5_7);
	AndGate uut68(A[8], B[5], P_5_8);
	AndGate uut69(A[9], B[5], P_5_9);
	AndGate uut70(A[10], B[5], P_5_10);
	NandGate uut71(A[11], B[5], P_5_11);
	AndGate uut72(A[0], B[6], P_6_0);
	AndGate uut73(A[1], B[6], P_6_1);
	AndGate uut74(A[2], B[6], P_6_2);
	AndGate uut75(A[3], B[6], P_6_3);
	AndGate uut76(A[4], B[6], P_6_4);
	AndGate uut77(A[5], B[6], P_6_5);
	AndGate uut78(A[6], B[6], P_6_6);
	AndGate uut79(A[7], B[6], P_6_7);
	AndGate uut80(A[8], B[6], P_6_8);
	AndGate uut81(A[9], B[6], P_6_9);
	AndGate uut82(A[10], B[6], P_6_10);
	NandGate uut83(A[11], B[6], P_6_11);
	assign P_7_0 = P_6_0;
	assign P_7_1 = P_6_1;
	assign P_7_2 = P_6_2;
	assign P_7_3 = P_6_3;
	assign P_7_4 = P_6_4;
	assign P_7_5 = P_6_5;
	assign P_7_6 = P_6_6;
	assign P_7_7 = P_6_7;
	assign P_7_8 = P_6_8;
	assign P_7_9 = P_6_9;
	assign P_7_10 = P_6_10;
	assign P_7_11 = P_6_11;
	assign P_8_0 = P_7_0;
	assign P_8_1 = P_7_1;
	assign P_8_2 = P_7_2;
	assign P_8_3 = P_7_3;
	assign P_8_4 = P_7_4;
	assign P_8_5 = P_7_5;
	assign P_8_6 = P_7_6;
	assign P_8_7 = P_7_7;
	assign P_8_8 = P_7_8;
	assign P_8_9 = P_7_9;
	assign P_8_10 = P_7_10;
	assign P_9_0 = P_8_0;
	assign P_9_1 = P_8_1;
	assign P_9_2 = P_8_2;
	assign P_9_3 = P_8_3;
	assign P_9_4 = P_8_4;
	assign P_9_5 = P_8_5;
	assign P_9_6 = P_8_6;
	assign P_9_7 = P_8_7;
	assign P_9_8 = P_8_8;
	assign P_9_9 = P_8_9;
	assign P_10_0 = P_9_0;
	assign P_10_1 = P_9_1;
	assign P_10_2 = P_9_2;
	assign P_10_3 = P_9_3;
	assign P_10_4 = P_9_4;
	assign P_10_5 = P_9_5;
	assign P_10_6 = P_9_6;
	assign P_10_7 = P_9_7;
	assign P_10_8 = P_9_8;
	NandGate uut84(A[0], B[6], P_11_0);
	NandGate uut85(A[1], B[6], P_11_1);
	NandGate uut86(A[2], B[6], P_11_2);
	NandGate uut87(A[3], B[6], P_11_3);
	NandGate uut88(A[4], B[6], P_11_4);
	NandGate uut89(A[5], B[6], P_11_5);
	NandGate uut90(A[6], B[6], P_11_6);
	NandGate uut91(A[7], B[6], P_11_7);
	HalfAdder uut92(P_0_6,P_1_5,s0,c0);
	FullAdder uut93(P_0_7,P_1_6,P_2_5,s1,c1);
	HalfAdder uut94(P_3_4,P_4_3,s2,c2);
	FullAdder uut95(P_0_8,P_1_7,P_2_6,s3,c3);
	FullAdder uut96(P_3_5,P_4_4,P_5_3,s4,c4);
	HalfAdder uut97(P_6_2,P_7_1,s5,c5);
	FullAdder uut98(P_0_9,P_1_8,P_2_7,s6,c6);
	FullAdder uut99(P_3_6,P_4_5,P_5_4,s7,c7);
	FullAdder uut100(P_6_3,P_7_2,P_8_1,s8,c8);
	HalfAdder uut101(P_9_0,c3,s9,c9);
	FullAdder uut102(P_0_10,P_1_9,P_2_8,s10,c10);
	FullAdder uut103(P_3_7,P_4_6,P_5_5,s11,c11);
	FullAdder uut104(P_6_4,P_7_3,P_8_2,s12,c12);
	FullAdder uut105(P_9_1,P_10_0,c6,s13,c13);
	HalfAdder uut106(c7,c8,s14,c14);
	FullAdder uut107(P_0_11,P_1_10,P_2_9,s15,c15);
	FullAdder uut108(P_3_8,P_4_7,P_5_6,s16,c16);
	FullAdder uut109(P_6_5,P_7_4,P_8_3,s17,c17);
	FullAdder uut110(P_9_2,P_10_1,P_11_0,s18,c18);
	FullAdder uut111(c10,c11,c12,s19,c19);
	HalfAdder uut112(c13,c14,s20,c20);
	FullAdder uut113(1'b1,P_1_11,P_2_10,s21,c21);
	FullAdder uut114(P_3_9,P_4_8,P_5_7,s22,c22);
	FullAdder uut115(P_6_6,P_7_5,P_8_4,s23,c23);
	FullAdder uut116(P_9_3,P_10_2,P_11_1,s24,c24);
	FullAdder uut117(c15,c16,c17,s25,c25);
	FullAdder uut118(c18,c19,c20,s26,c26);
	FullAdder uut119(P_2_11,P_3_10,P_4_9,s27,c27);
	FullAdder uut120(P_5_8,P_6_7,P_7_6,s28,c28);
	FullAdder uut121(P_8_5,P_9_4,P_10_3,s29,c29);
	FullAdder uut122(P_11_2,c21,c22,s30,c30);
	FullAdder uut123(c23,c24,c25,s31,c31);
	FullAdder uut124(P_3_11,P_4_10,P_5_9,s32,c32);
	FullAdder uut125(P_6_8,P_7_7,P_8_6,s33,c33);
	FullAdder uut126(P_9_5,P_10_4,P_11_3,s34,c34);
	FullAdder uut127(c27,c28,c29,s35,c35);
	FullAdder uut128(P_4_11,P_5_10,P_6_9,s36,c36);
	FullAdder uut129(P_7_8,P_8_7,P_9_6,s37,c37);
	FullAdder uut130(P_10_5,P_11_4,c32,s38,c38);
	FullAdder uut131(P_5_11,P_6_10,P_7_9,s39,c39);
	FullAdder uut132(P_8_8,P_9_7,P_10_6,s40,c40);
	FullAdder uut133(P_6_11,P_7_10,P_8_9,s41,c41);

	HalfAdder uut134(P_0_4,P_1_3,s42,c42);
	FullAdder uut135(P_0_5,P_1_4,P_2_3,s43,c43);
	HalfAdder uut136(P_3_2,P_4_1,s44,c44);
	FullAdder uut137(P_2_4,P_3_3,P_4_2,s45,c45);
	FullAdder uut138(P_5_1,P_6_0,s0,s46,c46);
	FullAdder uut139(P_5_2,P_6_1,P_7_0,s47,c47);
	FullAdder uut140(c0,s1,s2,s48,c48);
	FullAdder uut141(P_8_0,c1,c2,s49,c49);
	FullAdder uut142(s3,s4,s5,s50,c50);
	FullAdder uut143(c4,c5,s6,s51,c51);
	FullAdder uut144(s7,s8,s9,s52,c52);
	FullAdder uut145(c9,s10,s11,s53,c53);
	FullAdder uut146(s12,s13,s14,s54,c54);
	FullAdder uut147(s15,s16,s17,s55,c55);
	FullAdder uut148(s18,s19,s20,s56,c56);
	FullAdder uut149(s21,s22,s23,s57,c57);
	FullAdder uut150(s24,s25,s26,s58,c58);
	FullAdder uut151(c26,s27,s28,s59,c59);
	FullAdder uut152(s29,s30,s31,s60,c60);
	FullAdder uut153(c30,c31,s32,s61,c61);
	FullAdder uut154(s33,s34,s35,s62,c62);
	FullAdder uut155(c33,c34,c35,s63,c63);
	FullAdder uut156(s36,s37,s38,s64,c64);
	FullAdder uut157(P_11_5,c36,c37,s65,c65);
	FullAdder uut158(c38,s39,s40,s66,c66);
	FullAdder uut159(P_9_8,P_10_7,P_11_6,s67,c67);
	FullAdder uut160(c39,c40,s41,s68,c68);
	FullAdder uut161(P_7_11,P_8_10,P_9_9,s69,c69);
	FullAdder uut162(P_10_8,P_11_7,c41,s70,c70);

	HalfAdder uut163(P_0_3,P_1_2,s71,c71);
	FullAdder uut164(P_2_2,P_3_1,P_4_0,s72,c72);
	FullAdder uut165(P_5_0,c42,s43,s73,c73);
	FullAdder uut166(c43,c44,s45,s74,c74);
	FullAdder uut167(c45,c46,s47,s75,c75);
	FullAdder uut168(c47,c48,s49,s76,c76);
	FullAdder uut169(c49,c50,s51,s77,c77);
	FullAdder uut170(c51,c52,s53,s78,c78);
	FullAdder uut171(c53,c54,s55,s79,c79);
	FullAdder uut172(c55,c56,s57,s80,c80);
	FullAdder uut173(c57,c58,s59,s81,c81);
	FullAdder uut174(c59,c60,s61,s82,c82);
	FullAdder uut175(c61,c62,s63,s83,c83);
	FullAdder uut176(c63,c64,s65,s84,c84);
	FullAdder uut177(c65,c66,s67,s85,c85);
	FullAdder uut178(c67,c68,s69,s86,c86);

	HalfAdder uut179(P_0_2,P_1_1,s87,c87);
	FullAdder uut180(P_2_1,P_3_0,s71,s88,c88);
	FullAdder uut181(s42,c71,s72,s89,c89);
	FullAdder uut182(s44,c72,s73,s90,c90);
	FullAdder uut183(s46,c73,s74,s91,c91);
	FullAdder uut184(s48,c74,s75,s92,c92);
	FullAdder uut185(s50,c75,s76,s93,c93);
	FullAdder uut186(s52,c76,s77,s94,c94);
	FullAdder uut187(s54,c77,s78,s95,c95);
	FullAdder uut188(s56,c78,s79,s96,c96);
	FullAdder uut189(s58,c79,s80,s97,c97);
	FullAdder uut190(s60,c80,s81,s98,c98);
	FullAdder uut191(s62,c81,s82,s99,c99);
	FullAdder uut192(s64,c82,s83,s100,c100);
	FullAdder uut193(s66,c83,s84,s101,c101);
	FullAdder uut194(s68,c84,s85,s102,c102);
	FullAdder uut195(s70,c85,s86,s103,c103);

	wire [17:0] operandA;
	assign operandA = {c102,c101,c100,c99,c98,c97,c96,c95,c94,c93,c92,c91,c90,c89,c88,c87,P_2_0,P_0_1};
	wire [17:0] operandB;
	assign operandB = {s103,s102,s101,s100,s99,s98,s97,s96,s95,s94,s93,s92,s91,s90,s89,s88,s87,P_1_0};
	wire [18:0] Sum;
	unsignedBrentKungAdder18bit uut196(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
endmodule
/* Top Module unsignedBrentKungAdder18bit */
module unsignedBrentKungAdder18bit(input [17:0]A, input [17:0]B, output [18:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);

	/* First processing stage */

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut18(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut19(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut20(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut21(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut22(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut23(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut24(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut25(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut26(P017,G017, G016,P016,P117,G117);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut27(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut28(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut29(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut30(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut31(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut32(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut33(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	/* Second processing stage */

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut34(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut35(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut36(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut37(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut38(P717,G717,G715, P817, G817);

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut39(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut40(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut41(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut42(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut43(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut44(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut45(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut46(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign Sum[0] = P00;
	XorGate uut47(P01, carry0, Sum[1]);
	XorGate uut48(P02, carry1, Sum[2]);
	XorGate uut49(P03, carry2, Sum[3]);
	XorGate uut50(P04, carry3, Sum[4]);
	XorGate uut51(P05, carry4, Sum[5]);
	XorGate uut52(P06, carry5, Sum[6]);
	XorGate uut53(P07, carry6, Sum[7]);
	XorGate uut54(P08, carry7, Sum[8]);
	XorGate uut55(P09, carry8, Sum[9]);
	XorGate uut56(P010, carry9, Sum[10]);
	XorGate uut57(P011, carry10, Sum[11]);
	XorGate uut58(P012, carry11, Sum[12]);
	XorGate uut59(P013, carry12, Sum[13]);
	XorGate uut60(P014, carry13, Sum[14]);
	XorGate uut61(P015, carry14, Sum[15]);
	XorGate uut62(P016, carry15, Sum[16]);
	XorGate uut63(P017, carry16, Sum[17]);
	assign Sum[18] = carry17;
endmodule

module signedDaddaTreeMultiplier12x10bit(input [11:0] A, input [9:0]B, output [21:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;
	wire s104,c104;
	wire s105,c105;
	wire s106,c106;
	wire s107,c107;
	wire s108,c108;
	wire s109,c109;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	NandGate uut11(A[11], B[0], P_0_11);
	AndGate uut12(A[0], B[1], P_1_0);
	AndGate uut13(A[1], B[1], P_1_1);
	AndGate uut14(A[2], B[1], P_1_2);
	AndGate uut15(A[3], B[1], P_1_3);
	AndGate uut16(A[4], B[1], P_1_4);
	AndGate uut17(A[5], B[1], P_1_5);
	AndGate uut18(A[6], B[1], P_1_6);
	AndGate uut19(A[7], B[1], P_1_7);
	AndGate uut20(A[8], B[1], P_1_8);
	AndGate uut21(A[9], B[1], P_1_9);
	AndGate uut22(A[10], B[1], P_1_10);
	NandGate uut23(A[11], B[1], P_1_11);
	AndGate uut24(A[0], B[2], P_2_0);
	AndGate uut25(A[1], B[2], P_2_1);
	AndGate uut26(A[2], B[2], P_2_2);
	AndGate uut27(A[3], B[2], P_2_3);
	AndGate uut28(A[4], B[2], P_2_4);
	AndGate uut29(A[5], B[2], P_2_5);
	AndGate uut30(A[6], B[2], P_2_6);
	AndGate uut31(A[7], B[2], P_2_7);
	AndGate uut32(A[8], B[2], P_2_8);
	AndGate uut33(A[9], B[2], P_2_9);
	AndGate uut34(A[10], B[2], P_2_10);
	NandGate uut35(A[11], B[2], P_2_11);
	AndGate uut36(A[0], B[3], P_3_0);
	AndGate uut37(A[1], B[3], P_3_1);
	AndGate uut38(A[2], B[3], P_3_2);
	AndGate uut39(A[3], B[3], P_3_3);
	AndGate uut40(A[4], B[3], P_3_4);
	AndGate uut41(A[5], B[3], P_3_5);
	AndGate uut42(A[6], B[3], P_3_6);
	AndGate uut43(A[7], B[3], P_3_7);
	AndGate uut44(A[8], B[3], P_3_8);
	AndGate uut45(A[9], B[3], P_3_9);
	AndGate uut46(A[10], B[3], P_3_10);
	NandGate uut47(A[11], B[3], P_3_11);
	AndGate uut48(A[0], B[4], P_4_0);
	AndGate uut49(A[1], B[4], P_4_1);
	AndGate uut50(A[2], B[4], P_4_2);
	AndGate uut51(A[3], B[4], P_4_3);
	AndGate uut52(A[4], B[4], P_4_4);
	AndGate uut53(A[5], B[4], P_4_5);
	AndGate uut54(A[6], B[4], P_4_6);
	AndGate uut55(A[7], B[4], P_4_7);
	AndGate uut56(A[8], B[4], P_4_8);
	AndGate uut57(A[9], B[4], P_4_9);
	AndGate uut58(A[10], B[4], P_4_10);
	NandGate uut59(A[11], B[4], P_4_11);
	AndGate uut60(A[0], B[5], P_5_0);
	AndGate uut61(A[1], B[5], P_5_1);
	AndGate uut62(A[2], B[5], P_5_2);
	AndGate uut63(A[3], B[5], P_5_3);
	AndGate uut64(A[4], B[5], P_5_4);
	AndGate uut65(A[5], B[5], P_5_5);
	AndGate uut66(A[6], B[5], P_5_6);
	AndGate uut67(A[7], B[5], P_5_7);
	AndGate uut68(A[8], B[5], P_5_8);
	AndGate uut69(A[9], B[5], P_5_9);
	AndGate uut70(A[10], B[5], P_5_10);
	NandGate uut71(A[11], B[5], P_5_11);
	AndGate uut72(A[0], B[6], P_6_0);
	AndGate uut73(A[1], B[6], P_6_1);
	AndGate uut74(A[2], B[6], P_6_2);
	AndGate uut75(A[3], B[6], P_6_3);
	AndGate uut76(A[4], B[6], P_6_4);
	AndGate uut77(A[5], B[6], P_6_5);
	AndGate uut78(A[6], B[6], P_6_6);
	AndGate uut79(A[7], B[6], P_6_7);
	AndGate uut80(A[8], B[6], P_6_8);
	AndGate uut81(A[9], B[6], P_6_9);
	AndGate uut82(A[10], B[6], P_6_10);
	NandGate uut83(A[11], B[6], P_6_11);
	AndGate uut84(A[0], B[7], P_7_0);
	AndGate uut85(A[1], B[7], P_7_1);
	AndGate uut86(A[2], B[7], P_7_2);
	AndGate uut87(A[3], B[7], P_7_3);
	AndGate uut88(A[4], B[7], P_7_4);
	AndGate uut89(A[5], B[7], P_7_5);
	AndGate uut90(A[6], B[7], P_7_6);
	AndGate uut91(A[7], B[7], P_7_7);
	AndGate uut92(A[8], B[7], P_7_8);
	AndGate uut93(A[9], B[7], P_7_9);
	AndGate uut94(A[10], B[7], P_7_10);
	NandGate uut95(A[11], B[7], P_7_11);
	AndGate uut96(A[0], B[8], P_8_0);
	AndGate uut97(A[1], B[8], P_8_1);
	AndGate uut98(A[2], B[8], P_8_2);
	AndGate uut99(A[3], B[8], P_8_3);
	AndGate uut100(A[4], B[8], P_8_4);
	AndGate uut101(A[5], B[8], P_8_5);
	AndGate uut102(A[6], B[8], P_8_6);
	AndGate uut103(A[7], B[8], P_8_7);
	AndGate uut104(A[8], B[8], P_8_8);
	AndGate uut105(A[9], B[8], P_8_9);
	AndGate uut106(A[10], B[8], P_8_10);
	NandGate uut107(A[11], B[8], P_8_11);
	AndGate uut108(A[0], B[9], P_9_0);
	AndGate uut109(A[1], B[9], P_9_1);
	AndGate uut110(A[2], B[9], P_9_2);
	AndGate uut111(A[3], B[9], P_9_3);
	AndGate uut112(A[4], B[9], P_9_4);
	AndGate uut113(A[5], B[9], P_9_5);
	AndGate uut114(A[6], B[9], P_9_6);
	AndGate uut115(A[7], B[9], P_9_7);
	AndGate uut116(A[8], B[9], P_9_8);
	AndGate uut117(A[9], B[9], P_9_9);
	AndGate uut118(A[10], B[9], P_9_10);
	NandGate uut119(A[11], B[9], P_9_11);
	assign P_10_0 = P_9_0;
	assign P_10_1 = P_9_1;
	assign P_10_2 = P_9_2;
	assign P_10_3 = P_9_3;
	assign P_10_4 = P_9_4;
	assign P_10_5 = P_9_5;
	assign P_10_6 = P_9_6;
	assign P_10_7 = P_9_7;
	assign P_10_8 = P_9_8;
	assign P_10_9 = P_9_9;
	assign P_10_10 = P_9_10;
	assign P_10_11 = P_9_11;
	NandGate uut120(A[0], B[9], P_11_0);
	NandGate uut121(A[1], B[9], P_11_1);
	NandGate uut122(A[2], B[9], P_11_2);
	NandGate uut123(A[3], B[9], P_11_3);
	NandGate uut124(A[4], B[9], P_11_4);
	NandGate uut125(A[5], B[9], P_11_5);
	NandGate uut126(A[6], B[9], P_11_6);
	NandGate uut127(A[7], B[9], P_11_7);
	NandGate uut128(A[8], B[9], P_11_8);
	NandGate uut129(A[9], B[9], P_11_9);
	NandGate uut130(A[10], B[9], P_11_10);
	HalfAdder uut131(P_0_9,P_1_8,s0,c0);
	FullAdder uut132(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut133(P_3_7,P_4_6,s2,c2);
	FullAdder uut134(P_0_11,P_1_10,P_2_9,s3,c3);
	FullAdder uut135(P_3_8,P_4_7,P_5_6,s4,c4);
	HalfAdder uut136(P_6_5,P_7_4,s5,c5);
	FullAdder uut137(1'b1,P_1_11,P_2_10,s6,c6);
	FullAdder uut138(P_3_9,P_4_8,P_5_7,s7,c7);
	FullAdder uut139(P_6_6,P_7_5,P_8_4,s8,c8);
	FullAdder uut140(P_2_11,P_3_10,P_4_9,s9,c9);
	FullAdder uut141(P_5_8,P_6_7,P_7_6,s10,c10);
	FullAdder uut142(P_3_11,P_4_10,P_5_9,s11,c11);

	HalfAdder uut143(P_0_6,P_1_5,s12,c12);
	FullAdder uut144(P_0_7,P_1_6,P_2_5,s13,c13);
	HalfAdder uut145(P_3_4,P_4_3,s14,c14);
	FullAdder uut146(P_0_8,P_1_7,P_2_6,s15,c15);
	FullAdder uut147(P_3_5,P_4_4,P_5_3,s16,c16);
	HalfAdder uut148(P_6_2,P_7_1,s17,c17);
	FullAdder uut149(P_2_7,P_3_6,P_4_5,s18,c18);
	FullAdder uut150(P_5_4,P_6_3,P_7_2,s19,c19);
	FullAdder uut151(P_8_1,P_9_0,s0,s20,c20);
	FullAdder uut152(P_5_5,P_6_4,P_7_3,s21,c21);
	FullAdder uut153(P_8_2,P_9_1,P_10_0,s22,c22);
	FullAdder uut154(c0,s1,s2,s23,c23);
	FullAdder uut155(P_8_3,P_9_2,P_10_1,s24,c24);
	FullAdder uut156(P_11_0,c1,c2,s25,c25);
	FullAdder uut157(s3,s4,s5,s26,c26);
	FullAdder uut158(P_9_3,P_10_2,P_11_1,s27,c27);
	FullAdder uut159(c3,c4,c5,s28,c28);
	FullAdder uut160(s6,s7,s8,s29,c29);
	FullAdder uut161(P_8_5,P_9_4,P_10_3,s30,c30);
	FullAdder uut162(P_11_2,c6,c7,s31,c31);
	FullAdder uut163(c8,s9,s10,s32,c32);
	FullAdder uut164(P_6_8,P_7_7,P_8_6,s33,c33);
	FullAdder uut165(P_9_5,P_10_4,P_11_3,s34,c34);
	FullAdder uut166(c9,c10,s11,s35,c35);
	FullAdder uut167(P_4_11,P_5_10,P_6_9,s36,c36);
	FullAdder uut168(P_7_8,P_8_7,P_9_6,s37,c37);
	FullAdder uut169(P_10_5,P_11_4,c11,s38,c38);
	FullAdder uut170(P_5_11,P_6_10,P_7_9,s39,c39);
	FullAdder uut171(P_8_8,P_9_7,P_10_6,s40,c40);
	FullAdder uut172(P_6_11,P_7_10,P_8_9,s41,c41);

	HalfAdder uut173(P_0_4,P_1_3,s42,c42);
	FullAdder uut174(P_0_5,P_1_4,P_2_3,s43,c43);
	HalfAdder uut175(P_3_2,P_4_1,s44,c44);
	FullAdder uut176(P_2_4,P_3_3,P_4_2,s45,c45);
	FullAdder uut177(P_5_1,P_6_0,s12,s46,c46);
	FullAdder uut178(P_5_2,P_6_1,P_7_0,s47,c47);
	FullAdder uut179(c12,s13,s14,s48,c48);
	FullAdder uut180(P_8_0,c13,c14,s49,c49);
	FullAdder uut181(s15,s16,s17,s50,c50);
	FullAdder uut182(c15,c16,c17,s51,c51);
	FullAdder uut183(s18,s19,s20,s52,c52);
	FullAdder uut184(c18,c19,c20,s53,c53);
	FullAdder uut185(s21,s22,s23,s54,c54);
	FullAdder uut186(c21,c22,c23,s55,c55);
	FullAdder uut187(s24,s25,s26,s56,c56);
	FullAdder uut188(c24,c25,c26,s57,c57);
	FullAdder uut189(s27,s28,s29,s58,c58);
	FullAdder uut190(c27,c28,c29,s59,c59);
	FullAdder uut191(s30,s31,s32,s60,c60);
	FullAdder uut192(c30,c31,c32,s61,c61);
	FullAdder uut193(s33,s34,s35,s62,c62);
	FullAdder uut194(c33,c34,c35,s63,c63);
	FullAdder uut195(s36,s37,s38,s64,c64);
	FullAdder uut196(P_11_5,c36,c37,s65,c65);
	FullAdder uut197(c38,s39,s40,s66,c66);
	FullAdder uut198(P_9_8,P_10_7,P_11_6,s67,c67);
	FullAdder uut199(c39,c40,s41,s68,c68);
	FullAdder uut200(P_7_11,P_8_10,P_9_9,s69,c69);
	FullAdder uut201(P_10_8,P_11_7,c41,s70,c70);
	FullAdder uut202(P_8_11,P_9_10,P_10_9,s71,c71);

	HalfAdder uut203(P_0_3,P_1_2,s72,c72);
	FullAdder uut204(P_2_2,P_3_1,P_4_0,s73,c73);
	FullAdder uut205(P_5_0,c42,s43,s74,c74);
	FullAdder uut206(c43,c44,s45,s75,c75);
	FullAdder uut207(c45,c46,s47,s76,c76);
	FullAdder uut208(c47,c48,s49,s77,c77);
	FullAdder uut209(c49,c50,s51,s78,c78);
	FullAdder uut210(c51,c52,s53,s79,c79);
	FullAdder uut211(c53,c54,s55,s80,c80);
	FullAdder uut212(c55,c56,s57,s81,c81);
	FullAdder uut213(c57,c58,s59,s82,c82);
	FullAdder uut214(c59,c60,s61,s83,c83);
	FullAdder uut215(c61,c62,s63,s84,c84);
	FullAdder uut216(c63,c64,s65,s85,c85);
	FullAdder uut217(c65,c66,s67,s86,c86);
	FullAdder uut218(c67,c68,s69,s87,c87);
	FullAdder uut219(P_11_8,c69,c70,s88,c88);
	FullAdder uut220(P_9_11,P_10_10,P_11_9,s89,c89);

	HalfAdder uut221(P_0_2,P_1_1,s90,c90);
	FullAdder uut222(P_2_1,P_3_0,s72,s91,c91);
	FullAdder uut223(s42,c72,s73,s92,c92);
	FullAdder uut224(s44,c73,s74,s93,c93);
	FullAdder uut225(s46,c74,s75,s94,c94);
	FullAdder uut226(s48,c75,s76,s95,c95);
	FullAdder uut227(s50,c76,s77,s96,c96);
	FullAdder uut228(s52,c77,s78,s97,c97);
	FullAdder uut229(s54,c78,s79,s98,c98);
	FullAdder uut230(s56,c79,s80,s99,c99);
	FullAdder uut231(s58,c80,s81,s100,c100);
	FullAdder uut232(s60,c81,s82,s101,c101);
	FullAdder uut233(s62,c82,s83,s102,c102);
	FullAdder uut234(s64,c83,s84,s103,c103);
	FullAdder uut235(s66,c84,s85,s104,c104);
	FullAdder uut236(s68,c85,s86,s105,c105);
	FullAdder uut237(s70,c86,s87,s106,c106);
	FullAdder uut238(s71,c87,s88,s107,c107);
	FullAdder uut239(c71,c88,s89,s108,c108);
	FullAdder uut240(P_10_11,P_11_10,c89,s109,c109);

	wire [20:0] operandA;
	assign operandA = {c108,c107,c106,c105,c104,c103,c102,c101,c100,c99,c98,c97,c96,c95,c94,c93,c92,c91,c90,P_2_0,P_0_1};
	wire [20:0] operandB;
	assign operandB = {s109,s108,s107,s106,s105,s104,s103,s102,s101,s100,s99,s98,s97,s96,s95,s94,s93,s92,s91,s90,P_1_0};
	wire [21:0] Sum;
	unsignedBrentKungAdder21bit uut241(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = Sum[20];
endmodule
module unsignedBrentKungAdder21bit(input [20:0]A, input [20:0]B, output [21:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire carry21;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P020; wire G020;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P120; wire G120;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P220; wire G220;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P320; wire G320;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P420; wire G420;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	wire P520; wire G520;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);
	BitwisePG uut20(A[20], B[20], P020, G020);

	//first processing stage

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut21(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut22(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut23(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut24(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut25(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut26(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut27(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut28(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut29(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut30(P019,G019, G018,P018,P119,G119);

	assign P120 = P020;
	assign G120 = G020;

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut31(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut32(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut33(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut34(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut35(P119,G119, G117,P117,P219,G219);

	assign P220 = P120;
	assign G220 = G120;

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut36(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut37(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P320 = P220;
	assign G320 = G220;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut38(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P420 = P320;
	assign G420 = G320;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	assign P520 = P420;
	assign G520 = G420;

	//second processing stage

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;
	assign P620 = P520;
	assign G620 = G520;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut39(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut40(P619,G619,G615, P719, G719);
	assign P720 = P620;
	assign G720 = G620;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut41(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut42(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut43(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut44(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;
	assign P820 = P720;
	assign G820 = G720;

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut45(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut46(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut47(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut48(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut49(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut50(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut51(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut52(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut53(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;
	GrayCell uut54(P820,G820,G819, P920, G920);

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign carry20 = G920;
	assign Sum[0] = P00;
	XorGate uut55(P01, carry0, Sum[1]);
	XorGate uut56(P02, carry1, Sum[2]);
	XorGate uut57(P03, carry2, Sum[3]);
	XorGate uut58(P04, carry3, Sum[4]);
	XorGate uut59(P05, carry4, Sum[5]);
	XorGate uut60(P06, carry5, Sum[6]);
	XorGate uut61(P07, carry6, Sum[7]);
	XorGate uut62(P08, carry7, Sum[8]);
	XorGate uut63(P09, carry8, Sum[9]);
	XorGate uut64(P010, carry9, Sum[10]);
	XorGate uut65(P011, carry10, Sum[11]);
	XorGate uut66(P012, carry11, Sum[12]);
	XorGate uut67(P013, carry12, Sum[13]);
	XorGate uut68(P014, carry13, Sum[14]);
	XorGate uut69(P015, carry14, Sum[15]);
	XorGate uut70(P016, carry15, Sum[16]);
	XorGate uut71(P017, carry16, Sum[17]);
	XorGate uut72(P018, carry17, Sum[18]);
	XorGate uut73(P019, carry18, Sum[19]);
	XorGate uut74(P020, carry19, Sum[20]);
	assign Sum[21] = carry20;
endmodule


module signedDaddaTreeMultiplier12x11bit(input [11:0] A, input [10:0]B, output [22:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;
	wire s104,c104;
	wire s105,c105;
	wire s106,c106;
	wire s107,c107;
	wire s108,c108;
	wire s109,c109;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	NandGate uut11(A[11], B[0], P_0_11);
	AndGate uut12(A[0], B[1], P_1_0);
	AndGate uut13(A[1], B[1], P_1_1);
	AndGate uut14(A[2], B[1], P_1_2);
	AndGate uut15(A[3], B[1], P_1_3);
	AndGate uut16(A[4], B[1], P_1_4);
	AndGate uut17(A[5], B[1], P_1_5);
	AndGate uut18(A[6], B[1], P_1_6);
	AndGate uut19(A[7], B[1], P_1_7);
	AndGate uut20(A[8], B[1], P_1_8);
	AndGate uut21(A[9], B[1], P_1_9);
	AndGate uut22(A[10], B[1], P_1_10);
	NandGate uut23(A[11], B[1], P_1_11);
	AndGate uut24(A[0], B[2], P_2_0);
	AndGate uut25(A[1], B[2], P_2_1);
	AndGate uut26(A[2], B[2], P_2_2);
	AndGate uut27(A[3], B[2], P_2_3);
	AndGate uut28(A[4], B[2], P_2_4);
	AndGate uut29(A[5], B[2], P_2_5);
	AndGate uut30(A[6], B[2], P_2_6);
	AndGate uut31(A[7], B[2], P_2_7);
	AndGate uut32(A[8], B[2], P_2_8);
	AndGate uut33(A[9], B[2], P_2_9);
	AndGate uut34(A[10], B[2], P_2_10);
	NandGate uut35(A[11], B[2], P_2_11);
	AndGate uut36(A[0], B[3], P_3_0);
	AndGate uut37(A[1], B[3], P_3_1);
	AndGate uut38(A[2], B[3], P_3_2);
	AndGate uut39(A[3], B[3], P_3_3);
	AndGate uut40(A[4], B[3], P_3_4);
	AndGate uut41(A[5], B[3], P_3_5);
	AndGate uut42(A[6], B[3], P_3_6);
	AndGate uut43(A[7], B[3], P_3_7);
	AndGate uut44(A[8], B[3], P_3_8);
	AndGate uut45(A[9], B[3], P_3_9);
	AndGate uut46(A[10], B[3], P_3_10);
	NandGate uut47(A[11], B[3], P_3_11);
	AndGate uut48(A[0], B[4], P_4_0);
	AndGate uut49(A[1], B[4], P_4_1);
	AndGate uut50(A[2], B[4], P_4_2);
	AndGate uut51(A[3], B[4], P_4_3);
	AndGate uut52(A[4], B[4], P_4_4);
	AndGate uut53(A[5], B[4], P_4_5);
	AndGate uut54(A[6], B[4], P_4_6);
	AndGate uut55(A[7], B[4], P_4_7);
	AndGate uut56(A[8], B[4], P_4_8);
	AndGate uut57(A[9], B[4], P_4_9);
	AndGate uut58(A[10], B[4], P_4_10);
	NandGate uut59(A[11], B[4], P_4_11);
	AndGate uut60(A[0], B[5], P_5_0);
	AndGate uut61(A[1], B[5], P_5_1);
	AndGate uut62(A[2], B[5], P_5_2);
	AndGate uut63(A[3], B[5], P_5_3);
	AndGate uut64(A[4], B[5], P_5_4);
	AndGate uut65(A[5], B[5], P_5_5);
	AndGate uut66(A[6], B[5], P_5_6);
	AndGate uut67(A[7], B[5], P_5_7);
	AndGate uut68(A[8], B[5], P_5_8);
	AndGate uut69(A[9], B[5], P_5_9);
	AndGate uut70(A[10], B[5], P_5_10);
	NandGate uut71(A[11], B[5], P_5_11);
	AndGate uut72(A[0], B[6], P_6_0);
	AndGate uut73(A[1], B[6], P_6_1);
	AndGate uut74(A[2], B[6], P_6_2);
	AndGate uut75(A[3], B[6], P_6_3);
	AndGate uut76(A[4], B[6], P_6_4);
	AndGate uut77(A[5], B[6], P_6_5);
	AndGate uut78(A[6], B[6], P_6_6);
	AndGate uut79(A[7], B[6], P_6_7);
	AndGate uut80(A[8], B[6], P_6_8);
	AndGate uut81(A[9], B[6], P_6_9);
	AndGate uut82(A[10], B[6], P_6_10);
	NandGate uut83(A[11], B[6], P_6_11);
	AndGate uut84(A[0], B[7], P_7_0);
	AndGate uut85(A[1], B[7], P_7_1);
	AndGate uut86(A[2], B[7], P_7_2);
	AndGate uut87(A[3], B[7], P_7_3);
	AndGate uut88(A[4], B[7], P_7_4);
	AndGate uut89(A[5], B[7], P_7_5);
	AndGate uut90(A[6], B[7], P_7_6);
	AndGate uut91(A[7], B[7], P_7_7);
	AndGate uut92(A[8], B[7], P_7_8);
	AndGate uut93(A[9], B[7], P_7_9);
	AndGate uut94(A[10], B[7], P_7_10);
	NandGate uut95(A[11], B[7], P_7_11);
	AndGate uut96(A[0], B[8], P_8_0);
	AndGate uut97(A[1], B[8], P_8_1);
	AndGate uut98(A[2], B[8], P_8_2);
	AndGate uut99(A[3], B[8], P_8_3);
	AndGate uut100(A[4], B[8], P_8_4);
	AndGate uut101(A[5], B[8], P_8_5);
	AndGate uut102(A[6], B[8], P_8_6);
	AndGate uut103(A[7], B[8], P_8_7);
	AndGate uut104(A[8], B[8], P_8_8);
	AndGate uut105(A[9], B[8], P_8_9);
	AndGate uut106(A[10], B[8], P_8_10);
	NandGate uut107(A[11], B[8], P_8_11);
	AndGate uut108(A[0], B[9], P_9_0);
	AndGate uut109(A[1], B[9], P_9_1);
	AndGate uut110(A[2], B[9], P_9_2);
	AndGate uut111(A[3], B[9], P_9_3);
	AndGate uut112(A[4], B[9], P_9_4);
	AndGate uut113(A[5], B[9], P_9_5);
	AndGate uut114(A[6], B[9], P_9_6);
	AndGate uut115(A[7], B[9], P_9_7);
	AndGate uut116(A[8], B[9], P_9_8);
	AndGate uut117(A[9], B[9], P_9_9);
	AndGate uut118(A[10], B[9], P_9_10);
	NandGate uut119(A[11], B[9], P_9_11);
	AndGate uut120(A[0], B[10], P_10_0);
	AndGate uut121(A[1], B[10], P_10_1);
	AndGate uut122(A[2], B[10], P_10_2);
	AndGate uut123(A[3], B[10], P_10_3);
	AndGate uut124(A[4], B[10], P_10_4);
	AndGate uut125(A[5], B[10], P_10_5);
	AndGate uut126(A[6], B[10], P_10_6);
	AndGate uut127(A[7], B[10], P_10_7);
	AndGate uut128(A[8], B[10], P_10_8);
	AndGate uut129(A[9], B[10], P_10_9);
	AndGate uut130(A[10], B[10], P_10_10);
	NandGate uut131(A[11], B[10], P_10_11);
	NandGate uut132(A[0], B[10], P_11_0);
	NandGate uut133(A[1], B[10], P_11_1);
	NandGate uut134(A[2], B[10], P_11_2);
	NandGate uut135(A[3], B[10], P_11_3);
	NandGate uut136(A[4], B[10], P_11_4);
	NandGate uut137(A[5], B[10], P_11_5);
	NandGate uut138(A[6], B[10], P_11_6);
	NandGate uut139(A[7], B[10], P_11_7);
	NandGate uut140(A[8], B[10], P_11_8);
	NandGate uut141(A[9], B[10], P_11_9);
	NandGate uut142(A[10], B[10], P_11_10);
	AndGate uut143(A[11], B[10], P_11_11);
	HalfAdder uut144(P_0_9,P_1_8,s0,c0);
	FullAdder uut145(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut146(P_3_7,P_4_6,s2,c2);
	FullAdder uut147(P_0_11,P_1_10,P_2_9,s3,c3);
	FullAdder uut148(P_3_8,P_4_7,P_5_6,s4,c4);
	HalfAdder uut149(P_6_5,P_7_4,s5,c5);
	FullAdder uut150(1'b1,P_1_11,P_2_10,s6,c6);
	FullAdder uut151(P_3_9,P_4_8,P_5_7,s7,c7);
	FullAdder uut152(P_6_6,P_7_5,P_8_4,s8,c8);
	FullAdder uut153(P_2_11,P_3_10,P_4_9,s9,c9);
	FullAdder uut154(P_5_8,P_6_7,P_7_6,s10,c10);
	FullAdder uut155(P_3_11,P_4_10,P_5_9,s11,c11);

	HalfAdder uut156(P_0_6,P_1_5,s12,c12);
	FullAdder uut157(P_0_7,P_1_6,P_2_5,s13,c13);
	HalfAdder uut158(P_3_4,P_4_3,s14,c14);
	FullAdder uut159(P_0_8,P_1_7,P_2_6,s15,c15);
	FullAdder uut160(P_3_5,P_4_4,P_5_3,s16,c16);
	HalfAdder uut161(P_6_2,P_7_1,s17,c17);
	FullAdder uut162(P_2_7,P_3_6,P_4_5,s18,c18);
	FullAdder uut163(P_5_4,P_6_3,P_7_2,s19,c19);
	FullAdder uut164(P_8_1,P_9_0,s0,s20,c20);
	FullAdder uut165(P_5_5,P_6_4,P_7_3,s21,c21);
	FullAdder uut166(P_8_2,P_9_1,P_10_0,s22,c22);
	FullAdder uut167(c0,s1,s2,s23,c23);
	FullAdder uut168(P_8_3,P_9_2,P_10_1,s24,c24);
	FullAdder uut169(P_11_0,c1,c2,s25,c25);
	FullAdder uut170(s3,s4,s5,s26,c26);
	FullAdder uut171(P_9_3,P_10_2,P_11_1,s27,c27);
	FullAdder uut172(c3,c4,c5,s28,c28);
	FullAdder uut173(s6,s7,s8,s29,c29);
	FullAdder uut174(P_8_5,P_9_4,P_10_3,s30,c30);
	FullAdder uut175(P_11_2,c6,c7,s31,c31);
	FullAdder uut176(c8,s9,s10,s32,c32);
	FullAdder uut177(P_6_8,P_7_7,P_8_6,s33,c33);
	FullAdder uut178(P_9_5,P_10_4,P_11_3,s34,c34);
	FullAdder uut179(c9,c10,s11,s35,c35);
	FullAdder uut180(P_4_11,P_5_10,P_6_9,s36,c36);
	FullAdder uut181(P_7_8,P_8_7,P_9_6,s37,c37);
	FullAdder uut182(P_10_5,P_11_4,c11,s38,c38);
	FullAdder uut183(P_5_11,P_6_10,P_7_9,s39,c39);
	FullAdder uut184(P_8_8,P_9_7,P_10_6,s40,c40);
	FullAdder uut185(P_6_11,P_7_10,P_8_9,s41,c41);

	HalfAdder uut186(P_0_4,P_1_3,s42,c42);
	FullAdder uut187(P_0_5,P_1_4,P_2_3,s43,c43);
	HalfAdder uut188(P_3_2,P_4_1,s44,c44);
	FullAdder uut189(P_2_4,P_3_3,P_4_2,s45,c45);
	FullAdder uut190(P_5_1,P_6_0,s12,s46,c46);
	FullAdder uut191(P_5_2,P_6_1,P_7_0,s47,c47);
	FullAdder uut192(c12,s13,s14,s48,c48);
	FullAdder uut193(P_8_0,c13,c14,s49,c49);
	FullAdder uut194(s15,s16,s17,s50,c50);
	FullAdder uut195(c15,c16,c17,s51,c51);
	FullAdder uut196(s18,s19,s20,s52,c52);
	FullAdder uut197(c18,c19,c20,s53,c53);
	FullAdder uut198(s21,s22,s23,s54,c54);
	FullAdder uut199(c21,c22,c23,s55,c55);
	FullAdder uut200(s24,s25,s26,s56,c56);
	FullAdder uut201(c24,c25,c26,s57,c57);
	FullAdder uut202(s27,s28,s29,s58,c58);
	FullAdder uut203(c27,c28,c29,s59,c59);
	FullAdder uut204(s30,s31,s32,s60,c60);
	FullAdder uut205(c30,c31,c32,s61,c61);
	FullAdder uut206(s33,s34,s35,s62,c62);
	FullAdder uut207(c33,c34,c35,s63,c63);
	FullAdder uut208(s36,s37,s38,s64,c64);
	FullAdder uut209(P_11_5,c36,c37,s65,c65);
	FullAdder uut210(c38,s39,s40,s66,c66);
	FullAdder uut211(P_9_8,P_10_7,P_11_6,s67,c67);
	FullAdder uut212(c39,c40,s41,s68,c68);
	FullAdder uut213(P_7_11,P_8_10,P_9_9,s69,c69);
	FullAdder uut214(P_10_8,P_11_7,c41,s70,c70);
	FullAdder uut215(P_8_11,P_9_10,P_10_9,s71,c71);

	HalfAdder uut216(P_0_3,P_1_2,s72,c72);
	FullAdder uut217(P_2_2,P_3_1,P_4_0,s73,c73);
	FullAdder uut218(P_5_0,c42,s43,s74,c74);
	FullAdder uut219(c43,c44,s45,s75,c75);
	FullAdder uut220(c45,c46,s47,s76,c76);
	FullAdder uut221(c47,c48,s49,s77,c77);
	FullAdder uut222(c49,c50,s51,s78,c78);
	FullAdder uut223(c51,c52,s53,s79,c79);
	FullAdder uut224(c53,c54,s55,s80,c80);
	FullAdder uut225(c55,c56,s57,s81,c81);
	FullAdder uut226(c57,c58,s59,s82,c82);
	FullAdder uut227(c59,c60,s61,s83,c83);
	FullAdder uut228(c61,c62,s63,s84,c84);
	FullAdder uut229(c63,c64,s65,s85,c85);
	FullAdder uut230(c65,c66,s67,s86,c86);
	FullAdder uut231(c67,c68,s69,s87,c87);
	FullAdder uut232(P_11_8,c69,c70,s88,c88);
	FullAdder uut233(P_9_11,P_10_10,P_11_9,s89,c89);

	HalfAdder uut234(P_0_2,P_1_1,s90,c90);
	FullAdder uut235(P_2_1,P_3_0,s72,s91,c91);
	FullAdder uut236(s42,c72,s73,s92,c92);
	FullAdder uut237(s44,c73,s74,s93,c93);
	FullAdder uut238(s46,c74,s75,s94,c94);
	FullAdder uut239(s48,c75,s76,s95,c95);
	FullAdder uut240(s50,c76,s77,s96,c96);
	FullAdder uut241(s52,c77,s78,s97,c97);
	FullAdder uut242(s54,c78,s79,s98,c98);
	FullAdder uut243(s56,c79,s80,s99,c99);
	FullAdder uut244(s58,c80,s81,s100,c100);
	FullAdder uut245(s60,c81,s82,s101,c101);
	FullAdder uut246(s62,c82,s83,s102,c102);
	FullAdder uut247(s64,c83,s84,s103,c103);
	FullAdder uut248(s66,c84,s85,s104,c104);
	FullAdder uut249(s68,c85,s86,s105,c105);
	FullAdder uut250(s70,c86,s87,s106,c106);
	FullAdder uut251(s71,c87,s88,s107,c107);
	FullAdder uut252(c71,c88,s89,s108,c108);
	FullAdder uut253(P_10_11,P_11_10,c89,s109,c109);

	wire [21:0] operandA;
	assign operandA = {P_11_11,c108,c107,c106,c105,c104,c103,c102,c101,c100,c99,c98,c97,c96,c95,c94,c93,c92,c91,c90,P_2_0,P_0_1};
	wire [21:0] operandB;
	assign operandB = {c109,s109,s108,s107,s106,s105,s104,s103,s102,s101,s100,s99,s98,s97,s96,s95,s94,s93,s92,s91,s90,P_1_0};
	wire [22:0] Sum;
	unsignedBrentKungAdder22bit uut254(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = Sum[20];
	assign Product[22] = Sum[21];
endmodule
module unsignedBrentKungAdder22bit(input [21:0]A, input [21:0]B, output [22:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire carry21;
	wire carry22;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P020; wire G020;
	wire P021; wire G021;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P120; wire G120;
	wire P121; wire G121;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P220; wire G220;
	wire P221; wire G221;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P320; wire G320;
	wire P321; wire G321;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P420; wire G420;
	wire P421; wire G421;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	wire P520; wire G520;
	wire P521; wire G521;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);
	BitwisePG uut20(A[20], B[20], P020, G020);
	BitwisePG uut21(A[21], B[21], P021, G021);

	//first processing stage

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut22(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut23(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut24(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut25(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut26(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut27(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut28(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut29(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut30(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut31(P019,G019, G018,P018,P119,G119);

	assign P120 = P020;
	assign G120 = G020;

	BlackCell uut32(P021,G021, G020,P020,P121,G121);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut33(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut34(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut35(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut36(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut37(P119,G119, G117,P117,P219,G219);

	assign P220 = P120;
	assign G220 = G120;

	assign P221 = P121;
	assign G221 = G121;

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut38(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut39(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P320 = P220;
	assign G320 = G220;

	assign P321 = P221;
	assign G321 = G221;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut40(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P420 = P320;
	assign G420 = G320;

	assign P421 = P321;
	assign G421 = G321;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	assign P520 = P420;
	assign G520 = G420;

	assign P521 = P421;
	assign G521 = G421;

	//second processing stage

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;
	assign P620 = P520;
	assign G620 = G520;
	assign P621 = P521;
	assign G621 = G521;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut41(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut42(P619,G619,G615, P719, G719);
	assign P720 = P620;
	assign G720 = G620;
	assign P721 = P621;
	assign G721 = G621;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut43(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut44(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut45(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut46(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;
	assign P820 = P720;
	assign G820 = G720;
	GrayCell uut47(P721,G721,G719, P821, G821);

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut48(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut49(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut50(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut51(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut52(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut53(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut54(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut55(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut56(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;
	GrayCell uut57(P820,G820,G819, P920, G920);
	assign P921 = P821;
	assign G921 = G821;

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign carry20 = G920;
	assign carry21 = G921;
	assign Sum[0] = P00;
	XorGate uut58(P01, carry0, Sum[1]);
	XorGate uut59(P02, carry1, Sum[2]);
	XorGate uut60(P03, carry2, Sum[3]);
	XorGate uut61(P04, carry3, Sum[4]);
	XorGate uut62(P05, carry4, Sum[5]);
	XorGate uut63(P06, carry5, Sum[6]);
	XorGate uut64(P07, carry6, Sum[7]);
	XorGate uut65(P08, carry7, Sum[8]);
	XorGate uut66(P09, carry8, Sum[9]);
	XorGate uut67(P010, carry9, Sum[10]);
	XorGate uut68(P011, carry10, Sum[11]);
	XorGate uut69(P012, carry11, Sum[12]);
	XorGate uut70(P013, carry12, Sum[13]);
	XorGate uut71(P014, carry13, Sum[14]);
	XorGate uut72(P015, carry14, Sum[15]);
	XorGate uut73(P016, carry15, Sum[16]);
	XorGate uut74(P017, carry16, Sum[17]);
	XorGate uut75(P018, carry17, Sum[18]);
	XorGate uut76(P019, carry18, Sum[19]);
	XorGate uut77(P020, carry19, Sum[20]);
	XorGate uut78(P021, carry20, Sum[21]);
	assign Sum[22] = carry21;
endmodule

module signedDaddaTreeMultiplier13x11bit(input [12:0] A, input [10:0]B, output [23:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11; 	wire P_0_12;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11; 	wire P_1_12;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11; 	wire P_2_12;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11; 	wire P_3_12;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11; 	wire P_4_12;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11; 	wire P_5_12;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11; 	wire P_6_12;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11; 	wire P_7_12;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11; 	wire P_8_12;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11; 	wire P_9_12;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11; 	wire P_10_12;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11; 	wire P_11_12;
	wire P_12_0; 	wire P_12_1; 	wire P_12_2; 	wire P_12_3; 	wire P_12_4; 	wire P_12_5; 	wire P_12_6; 	wire P_12_7; 	wire P_12_8; 	wire P_12_9; 	wire P_12_10; 	wire P_12_11; 	wire P_12_12;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;
	wire s104,c104;
	wire s105,c105;
	wire s106,c106;
	wire s107,c107;
	wire s108,c108;
	wire s109,c109;
	wire s110,c110;
	wire s111,c111;
	wire s112,c112;
	wire s113,c113;
	wire s114,c114;
	wire s115,c115;
	wire s116,c116;
	wire s117,c117;
	wire s118,c118;
	wire s119,c119;
	wire s120,c120;
	wire s121,c121;
	wire s122,c122;
	wire s123,c123;
	wire s124,c124;
	wire s125,c125;
	wire s126,c126;
	wire s127,c127;
	wire s128,c128;
	wire s129,c129;
	wire s130,c130;
	wire s131,c131;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[11], B[0], P_0_11);
	NandGate uut12(A[12], B[0], P_0_12);
	AndGate uut13(A[0], B[1], P_1_0);
	AndGate uut14(A[1], B[1], P_1_1);
	AndGate uut15(A[2], B[1], P_1_2);
	AndGate uut16(A[3], B[1], P_1_3);
	AndGate uut17(A[4], B[1], P_1_4);
	AndGate uut18(A[5], B[1], P_1_5);
	AndGate uut19(A[6], B[1], P_1_6);
	AndGate uut20(A[7], B[1], P_1_7);
	AndGate uut21(A[8], B[1], P_1_8);
	AndGate uut22(A[9], B[1], P_1_9);
	AndGate uut23(A[10], B[1], P_1_10);
	AndGate uut24(A[11], B[1], P_1_11);
	NandGate uut25(A[12], B[1], P_1_12);
	AndGate uut26(A[0], B[2], P_2_0);
	AndGate uut27(A[1], B[2], P_2_1);
	AndGate uut28(A[2], B[2], P_2_2);
	AndGate uut29(A[3], B[2], P_2_3);
	AndGate uut30(A[4], B[2], P_2_4);
	AndGate uut31(A[5], B[2], P_2_5);
	AndGate uut32(A[6], B[2], P_2_6);
	AndGate uut33(A[7], B[2], P_2_7);
	AndGate uut34(A[8], B[2], P_2_8);
	AndGate uut35(A[9], B[2], P_2_9);
	AndGate uut36(A[10], B[2], P_2_10);
	AndGate uut37(A[11], B[2], P_2_11);
	NandGate uut38(A[12], B[2], P_2_12);
	AndGate uut39(A[0], B[3], P_3_0);
	AndGate uut40(A[1], B[3], P_3_1);
	AndGate uut41(A[2], B[3], P_3_2);
	AndGate uut42(A[3], B[3], P_3_3);
	AndGate uut43(A[4], B[3], P_3_4);
	AndGate uut44(A[5], B[3], P_3_5);
	AndGate uut45(A[6], B[3], P_3_6);
	AndGate uut46(A[7], B[3], P_3_7);
	AndGate uut47(A[8], B[3], P_3_8);
	AndGate uut48(A[9], B[3], P_3_9);
	AndGate uut49(A[10], B[3], P_3_10);
	AndGate uut50(A[11], B[3], P_3_11);
	NandGate uut51(A[12], B[3], P_3_12);
	AndGate uut52(A[0], B[4], P_4_0);
	AndGate uut53(A[1], B[4], P_4_1);
	AndGate uut54(A[2], B[4], P_4_2);
	AndGate uut55(A[3], B[4], P_4_3);
	AndGate uut56(A[4], B[4], P_4_4);
	AndGate uut57(A[5], B[4], P_4_5);
	AndGate uut58(A[6], B[4], P_4_6);
	AndGate uut59(A[7], B[4], P_4_7);
	AndGate uut60(A[8], B[4], P_4_8);
	AndGate uut61(A[9], B[4], P_4_9);
	AndGate uut62(A[10], B[4], P_4_10);
	AndGate uut63(A[11], B[4], P_4_11);
	NandGate uut64(A[12], B[4], P_4_12);
	AndGate uut65(A[0], B[5], P_5_0);
	AndGate uut66(A[1], B[5], P_5_1);
	AndGate uut67(A[2], B[5], P_5_2);
	AndGate uut68(A[3], B[5], P_5_3);
	AndGate uut69(A[4], B[5], P_5_4);
	AndGate uut70(A[5], B[5], P_5_5);
	AndGate uut71(A[6], B[5], P_5_6);
	AndGate uut72(A[7], B[5], P_5_7);
	AndGate uut73(A[8], B[5], P_5_8);
	AndGate uut74(A[9], B[5], P_5_9);
	AndGate uut75(A[10], B[5], P_5_10);
	AndGate uut76(A[11], B[5], P_5_11);
	NandGate uut77(A[12], B[5], P_5_12);
	AndGate uut78(A[0], B[6], P_6_0);
	AndGate uut79(A[1], B[6], P_6_1);
	AndGate uut80(A[2], B[6], P_6_2);
	AndGate uut81(A[3], B[6], P_6_3);
	AndGate uut82(A[4], B[6], P_6_4);
	AndGate uut83(A[5], B[6], P_6_5);
	AndGate uut84(A[6], B[6], P_6_6);
	AndGate uut85(A[7], B[6], P_6_7);
	AndGate uut86(A[8], B[6], P_6_8);
	AndGate uut87(A[9], B[6], P_6_9);
	AndGate uut88(A[10], B[6], P_6_10);
	AndGate uut89(A[11], B[6], P_6_11);
	NandGate uut90(A[12], B[6], P_6_12);
	AndGate uut91(A[0], B[7], P_7_0);
	AndGate uut92(A[1], B[7], P_7_1);
	AndGate uut93(A[2], B[7], P_7_2);
	AndGate uut94(A[3], B[7], P_7_3);
	AndGate uut95(A[4], B[7], P_7_4);
	AndGate uut96(A[5], B[7], P_7_5);
	AndGate uut97(A[6], B[7], P_7_6);
	AndGate uut98(A[7], B[7], P_7_7);
	AndGate uut99(A[8], B[7], P_7_8);
	AndGate uut100(A[9], B[7], P_7_9);
	AndGate uut101(A[10], B[7], P_7_10);
	AndGate uut102(A[11], B[7], P_7_11);
	NandGate uut103(A[12], B[7], P_7_12);
	AndGate uut104(A[0], B[8], P_8_0);
	AndGate uut105(A[1], B[8], P_8_1);
	AndGate uut106(A[2], B[8], P_8_2);
	AndGate uut107(A[3], B[8], P_8_3);
	AndGate uut108(A[4], B[8], P_8_4);
	AndGate uut109(A[5], B[8], P_8_5);
	AndGate uut110(A[6], B[8], P_8_6);
	AndGate uut111(A[7], B[8], P_8_7);
	AndGate uut112(A[8], B[8], P_8_8);
	AndGate uut113(A[9], B[8], P_8_9);
	AndGate uut114(A[10], B[8], P_8_10);
	AndGate uut115(A[11], B[8], P_8_11);
	NandGate uut116(A[12], B[8], P_8_12);
	AndGate uut117(A[0], B[9], P_9_0);
	AndGate uut118(A[1], B[9], P_9_1);
	AndGate uut119(A[2], B[9], P_9_2);
	AndGate uut120(A[3], B[9], P_9_3);
	AndGate uut121(A[4], B[9], P_9_4);
	AndGate uut122(A[5], B[9], P_9_5);
	AndGate uut123(A[6], B[9], P_9_6);
	AndGate uut124(A[7], B[9], P_9_7);
	AndGate uut125(A[8], B[9], P_9_8);
	AndGate uut126(A[9], B[9], P_9_9);
	AndGate uut127(A[10], B[9], P_9_10);
	AndGate uut128(A[11], B[9], P_9_11);
	NandGate uut129(A[12], B[9], P_9_12);
	AndGate uut130(A[0], B[10], P_10_0);
	AndGate uut131(A[1], B[10], P_10_1);
	AndGate uut132(A[2], B[10], P_10_2);
	AndGate uut133(A[3], B[10], P_10_3);
	AndGate uut134(A[4], B[10], P_10_4);
	AndGate uut135(A[5], B[10], P_10_5);
	AndGate uut136(A[6], B[10], P_10_6);
	AndGate uut137(A[7], B[10], P_10_7);
	AndGate uut138(A[8], B[10], P_10_8);
	AndGate uut139(A[9], B[10], P_10_9);
	AndGate uut140(A[10], B[10], P_10_10);
	AndGate uut141(A[11], B[10], P_10_11);
	NandGate uut142(A[12], B[10], P_10_12);
	assign P_11_0 = P_10_0;
	assign P_11_1 = P_10_1;
	assign P_11_2 = P_10_2;
	assign P_11_3 = P_10_3;
	assign P_11_4 = P_10_4;
	assign P_11_5 = P_10_5;
	assign P_11_6 = P_10_6;
	assign P_11_7 = P_10_7;
	assign P_11_8 = P_10_8;
	assign P_11_9 = P_10_9;
	assign P_11_10 = P_10_10;
	assign P_11_11 = P_10_11;
	assign P_11_12 = P_10_12;
	NandGate uut143(A[0], B[10], P_12_0);
	NandGate uut144(A[1], B[10], P_12_1);
	NandGate uut145(A[2], B[10], P_12_2);
	NandGate uut146(A[3], B[10], P_12_3);
	NandGate uut147(A[4], B[10], P_12_4);
	NandGate uut148(A[5], B[10], P_12_5);
	NandGate uut149(A[6], B[10], P_12_6);
	NandGate uut150(A[7], B[10], P_12_7);
	NandGate uut151(A[8], B[10], P_12_8);
	NandGate uut152(A[9], B[10], P_12_9);
	NandGate uut153(A[10], B[10], P_12_10);
	NandGate uut154(A[11], B[10], P_12_11);
	HalfAdder uut155(P_0_9,P_1_8,s0,c0);
	FullAdder uut156(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut157(P_3_7,P_4_6,s2,c2);
	FullAdder uut158(P_0_11,P_1_10,P_2_9,s3,c3);
	FullAdder uut159(P_3_8,P_4_7,P_5_6,s4,c4);
	HalfAdder uut160(P_6_5,P_7_4,s5,c5);
	FullAdder uut161(P_0_12,P_1_11,P_2_10,s6,c6);
	FullAdder uut162(P_3_9,P_4_8,P_5_7,s7,c7);
	FullAdder uut163(P_6_6,P_7_5,P_8_4,s8,c8);
	HalfAdder uut164(P_9_3,P_10_2,s9,c9);
	FullAdder uut165(1'b1,P_1_12,P_2_11,s10,c10);
	FullAdder uut166(P_3_10,P_4_9,P_5_8,s11,c11);
	FullAdder uut167(P_6_7,P_7_6,P_8_5,s12,c12);
	FullAdder uut168(P_9_4,P_10_3,P_11_2,s13,c13);
	FullAdder uut169(P_2_12,P_3_11,P_4_10,s14,c14);
	FullAdder uut170(P_5_9,P_6_8,P_7_7,s15,c15);
	FullAdder uut171(P_8_6,P_9_5,P_10_4,s16,c16);
	FullAdder uut172(P_3_12,P_4_11,P_5_10,s17,c17);
	FullAdder uut173(P_6_9,P_7_8,P_8_7,s18,c18);
	FullAdder uut174(P_4_12,P_5_11,P_6_10,s19,c19);

	HalfAdder uut175(P_0_6,P_1_5,s20,c20);
	FullAdder uut176(P_0_7,P_1_6,P_2_5,s21,c21);
	HalfAdder uut177(P_3_4,P_4_3,s22,c22);
	FullAdder uut178(P_0_8,P_1_7,P_2_6,s23,c23);
	FullAdder uut179(P_3_5,P_4_4,P_5_3,s24,c24);
	HalfAdder uut180(P_6_2,P_7_1,s25,c25);
	FullAdder uut181(P_2_7,P_3_6,P_4_5,s26,c26);
	FullAdder uut182(P_5_4,P_6_3,P_7_2,s27,c27);
	FullAdder uut183(P_8_1,P_9_0,s0,s28,c28);
	FullAdder uut184(P_5_5,P_6_4,P_7_3,s29,c29);
	FullAdder uut185(P_8_2,P_9_1,P_10_0,s30,c30);
	FullAdder uut186(c0,s1,s2,s31,c31);
	FullAdder uut187(P_8_3,P_9_2,P_10_1,s32,c32);
	FullAdder uut188(P_11_0,c1,c2,s33,c33);
	FullAdder uut189(s3,s4,s5,s34,c34);
	FullAdder uut190(P_11_1,P_12_0,c3,s35,c35);
	FullAdder uut191(c4,c5,s6,s36,c36);
	FullAdder uut192(s7,s8,s9,s37,c37);
	FullAdder uut193(P_12_1,c6,c7,s38,c38);
	FullAdder uut194(c8,c9,s10,s39,c39);
	FullAdder uut195(s11,s12,s13,s40,c40);
	FullAdder uut196(P_11_3,P_12_2,c10,s41,c41);
	FullAdder uut197(c11,c12,c13,s42,c42);
	FullAdder uut198(s14,s15,s16,s43,c43);
	FullAdder uut199(P_9_6,P_10_5,P_11_4,s44,c44);
	FullAdder uut200(P_12_3,c14,c15,s45,c45);
	FullAdder uut201(c16,s17,s18,s46,c46);
	FullAdder uut202(P_7_9,P_8_8,P_9_7,s47,c47);
	FullAdder uut203(P_10_6,P_11_5,P_12_4,s48,c48);
	FullAdder uut204(c17,c18,s19,s49,c49);
	FullAdder uut205(P_5_12,P_6_11,P_7_10,s50,c50);
	FullAdder uut206(P_8_9,P_9_8,P_10_7,s51,c51);
	FullAdder uut207(P_11_6,P_12_5,c19,s52,c52);
	FullAdder uut208(P_6_12,P_7_11,P_8_10,s53,c53);
	FullAdder uut209(P_9_9,P_10_8,P_11_7,s54,c54);
	FullAdder uut210(P_7_12,P_8_11,P_9_10,s55,c55);

	HalfAdder uut211(P_0_4,P_1_3,s56,c56);
	FullAdder uut212(P_0_5,P_1_4,P_2_3,s57,c57);
	HalfAdder uut213(P_3_2,P_4_1,s58,c58);
	FullAdder uut214(P_2_4,P_3_3,P_4_2,s59,c59);
	FullAdder uut215(P_5_1,P_6_0,s20,s60,c60);
	FullAdder uut216(P_5_2,P_6_1,P_7_0,s61,c61);
	FullAdder uut217(c20,s21,s22,s62,c62);
	FullAdder uut218(P_8_0,c21,c22,s63,c63);
	FullAdder uut219(s23,s24,s25,s64,c64);
	FullAdder uut220(c23,c24,c25,s65,c65);
	FullAdder uut221(s26,s27,s28,s66,c66);
	FullAdder uut222(c26,c27,c28,s67,c67);
	FullAdder uut223(s29,s30,s31,s68,c68);
	FullAdder uut224(c29,c30,c31,s69,c69);
	FullAdder uut225(s32,s33,s34,s70,c70);
	FullAdder uut226(c32,c33,c34,s71,c71);
	FullAdder uut227(s35,s36,s37,s72,c72);
	FullAdder uut228(c35,c36,c37,s73,c73);
	FullAdder uut229(s38,s39,s40,s74,c74);
	FullAdder uut230(c38,c39,c40,s75,c75);
	FullAdder uut231(s41,s42,s43,s76,c76);
	FullAdder uut232(c41,c42,c43,s77,c77);
	FullAdder uut233(s44,s45,s46,s78,c78);
	FullAdder uut234(c44,c45,c46,s79,c79);
	FullAdder uut235(s47,s48,s49,s80,c80);
	FullAdder uut236(c47,c48,c49,s81,c81);
	FullAdder uut237(s50,s51,s52,s82,c82);
	FullAdder uut238(P_12_6,c50,c51,s83,c83);
	FullAdder uut239(c52,s53,s54,s84,c84);
	FullAdder uut240(P_10_9,P_11_8,P_12_7,s85,c85);
	FullAdder uut241(c53,c54,s55,s86,c86);
	FullAdder uut242(P_8_12,P_9_11,P_10_10,s87,c87);
	FullAdder uut243(P_11_9,P_12_8,c55,s88,c88);
	FullAdder uut244(P_9_12,P_10_11,P_11_10,s89,c89);

	HalfAdder uut245(P_0_3,P_1_2,s90,c90);
	FullAdder uut246(P_2_2,P_3_1,P_4_0,s91,c91);
	FullAdder uut247(P_5_0,c56,s57,s92,c92);
	FullAdder uut248(c57,c58,s59,s93,c93);
	FullAdder uut249(c59,c60,s61,s94,c94);
	FullAdder uut250(c61,c62,s63,s95,c95);
	FullAdder uut251(c63,c64,s65,s96,c96);
	FullAdder uut252(c65,c66,s67,s97,c97);
	FullAdder uut253(c67,c68,s69,s98,c98);
	FullAdder uut254(c69,c70,s71,s99,c99);
	FullAdder uut255(c71,c72,s73,s100,c100);
	FullAdder uut256(c73,c74,s75,s101,c101);
	FullAdder uut257(c75,c76,s77,s102,c102);
	FullAdder uut258(c77,c78,s79,s103,c103);
	FullAdder uut259(c79,c80,s81,s104,c104);
	FullAdder uut260(c81,c82,s83,s105,c105);
	FullAdder uut261(c83,c84,s85,s106,c106);
	FullAdder uut262(c85,c86,s87,s107,c107);
	FullAdder uut263(P_12_9,c87,c88,s108,c108);
	FullAdder uut264(P_10_12,P_11_11,P_12_10,s109,c109);

	HalfAdder uut265(P_0_2,P_1_1,s110,c110);
	FullAdder uut266(P_2_1,P_3_0,s90,s111,c111);
	FullAdder uut267(s56,c90,s91,s112,c112);
	FullAdder uut268(s58,c91,s92,s113,c113);
	FullAdder uut269(s60,c92,s93,s114,c114);
	FullAdder uut270(s62,c93,s94,s115,c115);
	FullAdder uut271(s64,c94,s95,s116,c116);
	FullAdder uut272(s66,c95,s96,s117,c117);
	FullAdder uut273(s68,c96,s97,s118,c118);
	FullAdder uut274(s70,c97,s98,s119,c119);
	FullAdder uut275(s72,c98,s99,s120,c120);
	FullAdder uut276(s74,c99,s100,s121,c121);
	FullAdder uut277(s76,c100,s101,s122,c122);
	FullAdder uut278(s78,c101,s102,s123,c123);
	FullAdder uut279(s80,c102,s103,s124,c124);
	FullAdder uut280(s82,c103,s104,s125,c125);
	FullAdder uut281(s84,c104,s105,s126,c126);
	FullAdder uut282(s86,c105,s106,s127,c127);
	FullAdder uut283(s88,c106,s107,s128,c128);
	FullAdder uut284(s89,c107,s108,s129,c129);
	FullAdder uut285(c89,c108,s109,s130,c130);
	FullAdder uut286(P_11_12,P_12_11,c109,s131,c131);

	wire [22:0] operandA;
	assign operandA = {c130,c129,c128,c127,c126,c125,c124,c123,c122,c121,c120,c119,c118,c117,c116,c115,c114,c113,c112,c111,c110,P_2_0,P_0_1};
	wire [22:0] operandB;
	assign operandB = {s131,s130,s129,s128,s127,s126,s125,s124,s123,s122,s121,s120,s119,s118,s117,s116,s115,s114,s113,s112,s111,s110,P_1_0};
	wire [23:0] Sum;
	unsignedBrentKungAdder23bit uut287(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = Sum[20];
	assign Product[22] = Sum[21];
	assign Product[23] = Sum[22];
endmodule
module unsignedBrentKungAdder23bit(input [22:0]A, input [22:0]B, output [23:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire carry21;
	wire carry22;
	wire carry23;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P020; wire G020;
	wire P021; wire G021;
	wire P022; wire G022;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P120; wire G120;
	wire P121; wire G121;
	wire P122; wire G122;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P220; wire G220;
	wire P221; wire G221;
	wire P222; wire G222;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P320; wire G320;
	wire P321; wire G321;
	wire P322; wire G322;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P420; wire G420;
	wire P421; wire G421;
	wire P422; wire G422;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	wire P520; wire G520;
	wire P521; wire G521;
	wire P522; wire G522;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);
	BitwisePG uut20(A[20], B[20], P020, G020);
	BitwisePG uut21(A[21], B[21], P021, G021);
	BitwisePG uut22(A[22], B[22], P022, G022);

	//first processing stage

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut23(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut24(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut25(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut26(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut27(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut28(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut29(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut30(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut31(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut32(P019,G019, G018,P018,P119,G119);

	assign P120 = P020;
	assign G120 = G020;

	BlackCell uut33(P021,G021, G020,P020,P121,G121);

	assign P122 = P022;
	assign G122 = G022;

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut34(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut35(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut36(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut37(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut38(P119,G119, G117,P117,P219,G219);

	assign P220 = P120;
	assign G220 = G120;

	assign P221 = P121;
	assign G221 = G121;

	assign P222 = P122;
	assign G222 = G122;

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut39(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut40(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P320 = P220;
	assign G320 = G220;

	assign P321 = P221;
	assign G321 = G221;

	assign P322 = P222;
	assign G322 = G222;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut41(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P420 = P320;
	assign G420 = G320;

	assign P421 = P321;
	assign G421 = G321;

	assign P422 = P322;
	assign G422 = G322;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	assign P520 = P420;
	assign G520 = G420;

	assign P521 = P421;
	assign G521 = G421;

	assign P522 = P422;
	assign G522 = G422;

	//second processing stage

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;
	assign P620 = P520;
	assign G620 = G520;
	assign P621 = P521;
	assign G621 = G521;
	assign P622 = P522;
	assign G622 = G522;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut42(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut43(P619,G619,G615, P719, G719);
	assign P720 = P620;
	assign G720 = G620;
	assign P721 = P621;
	assign G721 = G621;
	assign P722 = P622;
	assign G722 = G622;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut44(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut45(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut46(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut47(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;
	assign P820 = P720;
	assign G820 = G720;
	GrayCell uut48(P721,G721,G719, P821, G821);
	assign P822 = P722;
	assign G822 = G722;

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut49(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut50(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut51(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut52(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut53(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut54(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut55(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut56(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut57(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;
	GrayCell uut58(P820,G820,G819, P920, G920);
	assign P921 = P821;
	assign G921 = G821;
	GrayCell uut59(P822,G822,G821, P922, G922);

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign carry20 = G920;
	assign carry21 = G921;
	assign carry22 = G922;
	assign Sum[0] = P00;
	XorGate uut60(P01, carry0, Sum[1]);
	XorGate uut61(P02, carry1, Sum[2]);
	XorGate uut62(P03, carry2, Sum[3]);
	XorGate uut63(P04, carry3, Sum[4]);
	XorGate uut64(P05, carry4, Sum[5]);
	XorGate uut65(P06, carry5, Sum[6]);
	XorGate uut66(P07, carry6, Sum[7]);
	XorGate uut67(P08, carry7, Sum[8]);
	XorGate uut68(P09, carry8, Sum[9]);
	XorGate uut69(P010, carry9, Sum[10]);
	XorGate uut70(P011, carry10, Sum[11]);
	XorGate uut71(P012, carry11, Sum[12]);
	XorGate uut72(P013, carry12, Sum[13]);
	XorGate uut73(P014, carry13, Sum[14]);
	XorGate uut74(P015, carry14, Sum[15]);
	XorGate uut75(P016, carry15, Sum[16]);
	XorGate uut76(P017, carry16, Sum[17]);
	XorGate uut77(P018, carry17, Sum[18]);
	XorGate uut78(P019, carry18, Sum[19]);
	XorGate uut79(P020, carry19, Sum[20]);
	XorGate uut80(P021, carry20, Sum[21]);
	XorGate uut81(P022, carry21, Sum[22]);
	assign Sum[23] = carry22;
endmodule

module signedDaddaTreeMultiplier14x11bit(input [13:0] A, input [10:0]B, output [24:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11; 	wire P_0_12; 	wire P_0_13;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11; 	wire P_1_12; 	wire P_1_13;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11; 	wire P_2_12; 	wire P_2_13;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11; 	wire P_3_12; 	wire P_3_13;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11; 	wire P_4_12; 	wire P_4_13;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11; 	wire P_5_12; 	wire P_5_13;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11; 	wire P_6_12; 	wire P_6_13;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11; 	wire P_7_12; 	wire P_7_13;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11; 	wire P_8_12; 	wire P_8_13;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11; 	wire P_9_12; 	wire P_9_13;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11; 	wire P_10_12; 	wire P_10_13;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11; 	wire P_11_12; 	wire P_11_13;
	wire P_12_0; 	wire P_12_1; 	wire P_12_2; 	wire P_12_3; 	wire P_12_4; 	wire P_12_5; 	wire P_12_6; 	wire P_12_7; 	wire P_12_8; 	wire P_12_9; 	wire P_12_10; 	wire P_12_11; 	wire P_12_12; 	wire P_12_13;
	wire P_13_0; 	wire P_13_1; 	wire P_13_2; 	wire P_13_3; 	wire P_13_4; 	wire P_13_5; 	wire P_13_6; 	wire P_13_7; 	wire P_13_8; 	wire P_13_9; 	wire P_13_10; 	wire P_13_11; 	wire P_13_12; 	wire P_13_13;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;
	wire s104,c104;
	wire s105,c105;
	wire s106,c106;
	wire s107,c107;
	wire s108,c108;
	wire s109,c109;
	wire s110,c110;
	wire s111,c111;
	wire s112,c112;
	wire s113,c113;
	wire s114,c114;
	wire s115,c115;
	wire s116,c116;
	wire s117,c117;
	wire s118,c118;
	wire s119,c119;
	wire s120,c120;
	wire s121,c121;
	wire s122,c122;
	wire s123,c123;
	wire s124,c124;
	wire s125,c125;
	wire s126,c126;
	wire s127,c127;
	wire s128,c128;
	wire s129,c129;
	wire s130,c130;
	wire s131,c131;
	wire s132,c132;
	wire s133,c133;
	wire s134,c134;
	wire s135,c135;
	wire s136,c136;
	wire s137,c137;
	wire s138,c138;
	wire s139,c139;
	wire s140,c140;
	wire s141,c141;
	wire s142,c142;
	wire s143,c143;
	wire s144,c144;
	wire s145,c145;
	wire s146,c146;
	wire s147,c147;
	wire s148,c148;
	wire s149,c149;
	wire s150,c150;
	wire s151,c151;
	wire s152,c152;
	wire s153,c153;
	wire s154,c154;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[11], B[0], P_0_11);
	AndGate uut12(A[12], B[0], P_0_12);
	NandGate uut13(A[13], B[0], P_0_13);
	AndGate uut14(A[0], B[1], P_1_0);
	AndGate uut15(A[1], B[1], P_1_1);
	AndGate uut16(A[2], B[1], P_1_2);
	AndGate uut17(A[3], B[1], P_1_3);
	AndGate uut18(A[4], B[1], P_1_4);
	AndGate uut19(A[5], B[1], P_1_5);
	AndGate uut20(A[6], B[1], P_1_6);
	AndGate uut21(A[7], B[1], P_1_7);
	AndGate uut22(A[8], B[1], P_1_8);
	AndGate uut23(A[9], B[1], P_1_9);
	AndGate uut24(A[10], B[1], P_1_10);
	AndGate uut25(A[11], B[1], P_1_11);
	AndGate uut26(A[12], B[1], P_1_12);
	NandGate uut27(A[13], B[1], P_1_13);
	AndGate uut28(A[0], B[2], P_2_0);
	AndGate uut29(A[1], B[2], P_2_1);
	AndGate uut30(A[2], B[2], P_2_2);
	AndGate uut31(A[3], B[2], P_2_3);
	AndGate uut32(A[4], B[2], P_2_4);
	AndGate uut33(A[5], B[2], P_2_5);
	AndGate uut34(A[6], B[2], P_2_6);
	AndGate uut35(A[7], B[2], P_2_7);
	AndGate uut36(A[8], B[2], P_2_8);
	AndGate uut37(A[9], B[2], P_2_9);
	AndGate uut38(A[10], B[2], P_2_10);
	AndGate uut39(A[11], B[2], P_2_11);
	AndGate uut40(A[12], B[2], P_2_12);
	NandGate uut41(A[13], B[2], P_2_13);
	AndGate uut42(A[0], B[3], P_3_0);
	AndGate uut43(A[1], B[3], P_3_1);
	AndGate uut44(A[2], B[3], P_3_2);
	AndGate uut45(A[3], B[3], P_3_3);
	AndGate uut46(A[4], B[3], P_3_4);
	AndGate uut47(A[5], B[3], P_3_5);
	AndGate uut48(A[6], B[3], P_3_6);
	AndGate uut49(A[7], B[3], P_3_7);
	AndGate uut50(A[8], B[3], P_3_8);
	AndGate uut51(A[9], B[3], P_3_9);
	AndGate uut52(A[10], B[3], P_3_10);
	AndGate uut53(A[11], B[3], P_3_11);
	AndGate uut54(A[12], B[3], P_3_12);
	NandGate uut55(A[13], B[3], P_3_13);
	AndGate uut56(A[0], B[4], P_4_0);
	AndGate uut57(A[1], B[4], P_4_1);
	AndGate uut58(A[2], B[4], P_4_2);
	AndGate uut59(A[3], B[4], P_4_3);
	AndGate uut60(A[4], B[4], P_4_4);
	AndGate uut61(A[5], B[4], P_4_5);
	AndGate uut62(A[6], B[4], P_4_6);
	AndGate uut63(A[7], B[4], P_4_7);
	AndGate uut64(A[8], B[4], P_4_8);
	AndGate uut65(A[9], B[4], P_4_9);
	AndGate uut66(A[10], B[4], P_4_10);
	AndGate uut67(A[11], B[4], P_4_11);
	AndGate uut68(A[12], B[4], P_4_12);
	NandGate uut69(A[13], B[4], P_4_13);
	AndGate uut70(A[0], B[5], P_5_0);
	AndGate uut71(A[1], B[5], P_5_1);
	AndGate uut72(A[2], B[5], P_5_2);
	AndGate uut73(A[3], B[5], P_5_3);
	AndGate uut74(A[4], B[5], P_5_4);
	AndGate uut75(A[5], B[5], P_5_5);
	AndGate uut76(A[6], B[5], P_5_6);
	AndGate uut77(A[7], B[5], P_5_7);
	AndGate uut78(A[8], B[5], P_5_8);
	AndGate uut79(A[9], B[5], P_5_9);
	AndGate uut80(A[10], B[5], P_5_10);
	AndGate uut81(A[11], B[5], P_5_11);
	AndGate uut82(A[12], B[5], P_5_12);
	NandGate uut83(A[13], B[5], P_5_13);
	AndGate uut84(A[0], B[6], P_6_0);
	AndGate uut85(A[1], B[6], P_6_1);
	AndGate uut86(A[2], B[6], P_6_2);
	AndGate uut87(A[3], B[6], P_6_3);
	AndGate uut88(A[4], B[6], P_6_4);
	AndGate uut89(A[5], B[6], P_6_5);
	AndGate uut90(A[6], B[6], P_6_6);
	AndGate uut91(A[7], B[6], P_6_7);
	AndGate uut92(A[8], B[6], P_6_8);
	AndGate uut93(A[9], B[6], P_6_9);
	AndGate uut94(A[10], B[6], P_6_10);
	AndGate uut95(A[11], B[6], P_6_11);
	AndGate uut96(A[12], B[6], P_6_12);
	NandGate uut97(A[13], B[6], P_6_13);
	AndGate uut98(A[0], B[7], P_7_0);
	AndGate uut99(A[1], B[7], P_7_1);
	AndGate uut100(A[2], B[7], P_7_2);
	AndGate uut101(A[3], B[7], P_7_3);
	AndGate uut102(A[4], B[7], P_7_4);
	AndGate uut103(A[5], B[7], P_7_5);
	AndGate uut104(A[6], B[7], P_7_6);
	AndGate uut105(A[7], B[7], P_7_7);
	AndGate uut106(A[8], B[7], P_7_8);
	AndGate uut107(A[9], B[7], P_7_9);
	AndGate uut108(A[10], B[7], P_7_10);
	AndGate uut109(A[11], B[7], P_7_11);
	AndGate uut110(A[12], B[7], P_7_12);
	NandGate uut111(A[13], B[7], P_7_13);
	AndGate uut112(A[0], B[8], P_8_0);
	AndGate uut113(A[1], B[8], P_8_1);
	AndGate uut114(A[2], B[8], P_8_2);
	AndGate uut115(A[3], B[8], P_8_3);
	AndGate uut116(A[4], B[8], P_8_4);
	AndGate uut117(A[5], B[8], P_8_5);
	AndGate uut118(A[6], B[8], P_8_6);
	AndGate uut119(A[7], B[8], P_8_7);
	AndGate uut120(A[8], B[8], P_8_8);
	AndGate uut121(A[9], B[8], P_8_9);
	AndGate uut122(A[10], B[8], P_8_10);
	AndGate uut123(A[11], B[8], P_8_11);
	AndGate uut124(A[12], B[8], P_8_12);
	NandGate uut125(A[13], B[8], P_8_13);
	AndGate uut126(A[0], B[9], P_9_0);
	AndGate uut127(A[1], B[9], P_9_1);
	AndGate uut128(A[2], B[9], P_9_2);
	AndGate uut129(A[3], B[9], P_9_3);
	AndGate uut130(A[4], B[9], P_9_4);
	AndGate uut131(A[5], B[9], P_9_5);
	AndGate uut132(A[6], B[9], P_9_6);
	AndGate uut133(A[7], B[9], P_9_7);
	AndGate uut134(A[8], B[9], P_9_8);
	AndGate uut135(A[9], B[9], P_9_9);
	AndGate uut136(A[10], B[9], P_9_10);
	AndGate uut137(A[11], B[9], P_9_11);
	AndGate uut138(A[12], B[9], P_9_12);
	NandGate uut139(A[13], B[9], P_9_13);
	AndGate uut140(A[0], B[10], P_10_0);
	AndGate uut141(A[1], B[10], P_10_1);
	AndGate uut142(A[2], B[10], P_10_2);
	AndGate uut143(A[3], B[10], P_10_3);
	AndGate uut144(A[4], B[10], P_10_4);
	AndGate uut145(A[5], B[10], P_10_5);
	AndGate uut146(A[6], B[10], P_10_6);
	AndGate uut147(A[7], B[10], P_10_7);
	AndGate uut148(A[8], B[10], P_10_8);
	AndGate uut149(A[9], B[10], P_10_9);
	AndGate uut150(A[10], B[10], P_10_10);
	AndGate uut151(A[11], B[10], P_10_11);
	AndGate uut152(A[12], B[10], P_10_12);
	NandGate uut153(A[13], B[10], P_10_13);
	assign P_11_0 = P_10_0;
	assign P_11_1 = P_10_1;
	assign P_11_2 = P_10_2;
	assign P_11_3 = P_10_3;
	assign P_11_4 = P_10_4;
	assign P_11_5 = P_10_5;
	assign P_11_6 = P_10_6;
	assign P_11_7 = P_10_7;
	assign P_11_8 = P_10_8;
	assign P_11_9 = P_10_9;
	assign P_11_10 = P_10_10;
	assign P_11_11 = P_10_11;
	assign P_11_12 = P_10_12;
	assign P_11_13 = P_10_13;
	assign P_12_0 = P_11_0;
	assign P_12_1 = P_11_1;
	assign P_12_2 = P_11_2;
	assign P_12_3 = P_11_3;
	assign P_12_4 = P_11_4;
	assign P_12_5 = P_11_5;
	assign P_12_6 = P_11_6;
	assign P_12_7 = P_11_7;
	assign P_12_8 = P_11_8;
	assign P_12_9 = P_11_9;
	assign P_12_10 = P_11_10;
	assign P_12_11 = P_11_11;
	assign P_12_12 = P_11_12;
	NandGate uut154(A[0], B[10], P_13_0);
	NandGate uut155(A[1], B[10], P_13_1);
	NandGate uut156(A[2], B[10], P_13_2);
	NandGate uut157(A[3], B[10], P_13_3);
	NandGate uut158(A[4], B[10], P_13_4);
	NandGate uut159(A[5], B[10], P_13_5);
	NandGate uut160(A[6], B[10], P_13_6);
	NandGate uut161(A[7], B[10], P_13_7);
	NandGate uut162(A[8], B[10], P_13_8);
	NandGate uut163(A[9], B[10], P_13_9);
	NandGate uut164(A[10], B[10], P_13_10);
	NandGate uut165(A[11], B[10], P_13_11);
	HalfAdder uut166(P_0_9,P_1_8,s0,c0);
	FullAdder uut167(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut168(P_3_7,P_4_6,s2,c2);
	FullAdder uut169(P_0_11,P_1_10,P_2_9,s3,c3);
	FullAdder uut170(P_3_8,P_4_7,P_5_6,s4,c4);
	HalfAdder uut171(P_6_5,P_7_4,s5,c5);
	FullAdder uut172(P_0_12,P_1_11,P_2_10,s6,c6);
	FullAdder uut173(P_3_9,P_4_8,P_5_7,s7,c7);
	FullAdder uut174(P_6_6,P_7_5,P_8_4,s8,c8);
	HalfAdder uut175(P_9_3,P_10_2,s9,c9);
	FullAdder uut176(P_0_13,P_1_12,P_2_11,s10,c10);
	FullAdder uut177(P_3_10,P_4_9,P_5_8,s11,c11);
	FullAdder uut178(P_6_7,P_7_6,P_8_5,s12,c12);
	FullAdder uut179(P_9_4,P_10_3,P_11_2,s13,c13);
	HalfAdder uut180(P_12_1,P_13_0,s14,c14);
	FullAdder uut181(1'b1,P_1_13,P_2_12,s15,c15);
	FullAdder uut182(P_3_11,P_4_10,P_5_9,s16,c16);
	FullAdder uut183(P_6_8,P_7_7,P_8_6,s17,c17);
	FullAdder uut184(P_9_5,P_10_4,P_11_3,s18,c18);
	FullAdder uut185(P_12_2,P_13_1,c10,s19,c19);
	FullAdder uut186(P_2_13,P_3_12,P_4_11,s20,c20);
	FullAdder uut187(P_5_10,P_6_9,P_7_8,s21,c21);
	FullAdder uut188(P_8_7,P_9_6,P_10_5,s22,c22);
	FullAdder uut189(P_11_4,P_12_3,P_13_2,s23,c23);
	FullAdder uut190(P_3_13,P_4_12,P_5_11,s24,c24);
	FullAdder uut191(P_6_10,P_7_9,P_8_8,s25,c25);
	FullAdder uut192(P_9_7,P_10_6,P_11_5,s26,c26);
	FullAdder uut193(P_4_13,P_5_12,P_6_11,s27,c27);
	FullAdder uut194(P_7_10,P_8_9,P_9_8,s28,c28);
	FullAdder uut195(P_5_13,P_6_12,P_7_11,s29,c29);

	HalfAdder uut196(P_0_6,P_1_5,s30,c30);
	FullAdder uut197(P_0_7,P_1_6,P_2_5,s31,c31);
	HalfAdder uut198(P_3_4,P_4_3,s32,c32);
	FullAdder uut199(P_0_8,P_1_7,P_2_6,s33,c33);
	FullAdder uut200(P_3_5,P_4_4,P_5_3,s34,c34);
	HalfAdder uut201(P_6_2,P_7_1,s35,c35);
	FullAdder uut202(P_2_7,P_3_6,P_4_5,s36,c36);
	FullAdder uut203(P_5_4,P_6_3,P_7_2,s37,c37);
	FullAdder uut204(P_8_1,P_9_0,s0,s38,c38);
	FullAdder uut205(P_5_5,P_6_4,P_7_3,s39,c39);
	FullAdder uut206(P_8_2,P_9_1,P_10_0,s40,c40);
	FullAdder uut207(c0,s1,s2,s41,c41);
	FullAdder uut208(P_8_3,P_9_2,P_10_1,s42,c42);
	FullAdder uut209(P_11_0,c1,c2,s43,c43);
	FullAdder uut210(s3,s4,s5,s44,c44);
	FullAdder uut211(P_11_1,P_12_0,c3,s45,c45);
	FullAdder uut212(c4,c5,s6,s46,c46);
	FullAdder uut213(s7,s8,s9,s47,c47);
	FullAdder uut214(c6,c7,c8,s48,c48);
	FullAdder uut215(c9,s10,s11,s49,c49);
	FullAdder uut216(s12,s13,s14,s50,c50);
	FullAdder uut217(c11,c12,c13,s51,c51);
	FullAdder uut218(c14,s15,s16,s52,c52);
	FullAdder uut219(s17,s18,s19,s53,c53);
	FullAdder uut220(c15,c16,c17,s54,c54);
	FullAdder uut221(c18,c19,s20,s55,c55);
	FullAdder uut222(s21,s22,s23,s56,c56);
	FullAdder uut223(P_12_4,P_13_3,c20,s57,c57);
	FullAdder uut224(c21,c22,c23,s58,c58);
	FullAdder uut225(s24,s25,s26,s59,c59);
	FullAdder uut226(P_10_7,P_11_6,P_12_5,s60,c60);
	FullAdder uut227(P_13_4,c24,c25,s61,c61);
	FullAdder uut228(c26,s27,s28,s62,c62);
	FullAdder uut229(P_8_10,P_9_9,P_10_8,s63,c63);
	FullAdder uut230(P_11_7,P_12_6,P_13_5,s64,c64);
	FullAdder uut231(c27,c28,s29,s65,c65);
	FullAdder uut232(P_6_13,P_7_12,P_8_11,s66,c66);
	FullAdder uut233(P_9_10,P_10_9,P_11_8,s67,c67);
	FullAdder uut234(P_12_7,P_13_6,c29,s68,c68);
	FullAdder uut235(P_7_13,P_8_12,P_9_11,s69,c69);
	FullAdder uut236(P_10_10,P_11_9,P_12_8,s70,c70);
	FullAdder uut237(P_8_13,P_9_12,P_10_11,s71,c71);

	HalfAdder uut238(P_0_4,P_1_3,s72,c72);
	FullAdder uut239(P_0_5,P_1_4,P_2_3,s73,c73);
	HalfAdder uut240(P_3_2,P_4_1,s74,c74);
	FullAdder uut241(P_2_4,P_3_3,P_4_2,s75,c75);
	FullAdder uut242(P_5_1,P_6_0,s30,s76,c76);
	FullAdder uut243(P_5_2,P_6_1,P_7_0,s77,c77);
	FullAdder uut244(c30,s31,s32,s78,c78);
	FullAdder uut245(P_8_0,c31,c32,s79,c79);
	FullAdder uut246(s33,s34,s35,s80,c80);
	FullAdder uut247(c33,c34,c35,s81,c81);
	FullAdder uut248(s36,s37,s38,s82,c82);
	FullAdder uut249(c36,c37,c38,s83,c83);
	FullAdder uut250(s39,s40,s41,s84,c84);
	FullAdder uut251(c39,c40,c41,s85,c85);
	FullAdder uut252(s42,s43,s44,s86,c86);
	FullAdder uut253(c42,c43,c44,s87,c87);
	FullAdder uut254(s45,s46,s47,s88,c88);
	FullAdder uut255(c45,c46,c47,s89,c89);
	FullAdder uut256(s48,s49,s50,s90,c90);
	FullAdder uut257(c48,c49,c50,s91,c91);
	FullAdder uut258(s51,s52,s53,s92,c92);
	FullAdder uut259(c51,c52,c53,s93,c93);
	FullAdder uut260(s54,s55,s56,s94,c94);
	FullAdder uut261(c54,c55,c56,s95,c95);
	FullAdder uut262(s57,s58,s59,s96,c96);
	FullAdder uut263(c57,c58,c59,s97,c97);
	FullAdder uut264(s60,s61,s62,s98,c98);
	FullAdder uut265(c60,c61,c62,s99,c99);
	FullAdder uut266(s63,s64,s65,s100,c100);
	FullAdder uut267(c63,c64,c65,s101,c101);
	FullAdder uut268(s66,s67,s68,s102,c102);
	FullAdder uut269(P_13_7,c66,c67,s103,c103);
	FullAdder uut270(c68,s69,s70,s104,c104);
	FullAdder uut271(P_11_10,P_12_9,P_13_8,s105,c105);
	FullAdder uut272(c69,c70,s71,s106,c106);
	FullAdder uut273(P_9_13,P_10_12,P_11_11,s107,c107);
	FullAdder uut274(P_12_10,P_13_9,c71,s108,c108);
	FullAdder uut275(P_10_13,P_11_12,P_12_11,s109,c109);

	HalfAdder uut276(P_0_3,P_1_2,s110,c110);
	FullAdder uut277(P_2_2,P_3_1,P_4_0,s111,c111);
	FullAdder uut278(P_5_0,c72,s73,s112,c112);
	FullAdder uut279(c73,c74,s75,s113,c113);
	FullAdder uut280(c75,c76,s77,s114,c114);
	FullAdder uut281(c77,c78,s79,s115,c115);
	FullAdder uut282(c79,c80,s81,s116,c116);
	FullAdder uut283(c81,c82,s83,s117,c117);
	FullAdder uut284(c83,c84,s85,s118,c118);
	FullAdder uut285(c85,c86,s87,s119,c119);
	FullAdder uut286(c87,c88,s89,s120,c120);
	FullAdder uut287(c89,c90,s91,s121,c121);
	FullAdder uut288(c91,c92,s93,s122,c122);
	FullAdder uut289(c93,c94,s95,s123,c123);
	FullAdder uut290(c95,c96,s97,s124,c124);
	FullAdder uut291(c97,c98,s99,s125,c125);
	FullAdder uut292(c99,c100,s101,s126,c126);
	FullAdder uut293(c101,c102,s103,s127,c127);
	FullAdder uut294(c103,c104,s105,s128,c128);
	FullAdder uut295(c105,c106,s107,s129,c129);
	FullAdder uut296(P_13_10,c107,c108,s130,c130);
	FullAdder uut297(P_11_13,P_12_12,P_13_11,s131,c131);

	HalfAdder uut298(P_0_2,P_1_1,s132,c132);
	FullAdder uut299(P_2_1,P_3_0,s110,s133,c133);
	FullAdder uut300(s72,c110,s111,s134,c134);
	FullAdder uut301(s74,c111,s112,s135,c135);
	FullAdder uut302(s76,c112,s113,s136,c136);
	FullAdder uut303(s78,c113,s114,s137,c137);
	FullAdder uut304(s80,c114,s115,s138,c138);
	FullAdder uut305(s82,c115,s116,s139,c139);
	FullAdder uut306(s84,c116,s117,s140,c140);
	FullAdder uut307(s86,c117,s118,s141,c141);
	FullAdder uut308(s88,c118,s119,s142,c142);
	FullAdder uut309(s90,c119,s120,s143,c143);
	FullAdder uut310(s92,c120,s121,s144,c144);
	FullAdder uut311(s94,c121,s122,s145,c145);
	FullAdder uut312(s96,c122,s123,s146,c146);
	FullAdder uut313(s98,c123,s124,s147,c147);
	FullAdder uut314(s100,c124,s125,s148,c148);
	FullAdder uut315(s102,c125,s126,s149,c149);
	FullAdder uut316(s104,c126,s127,s150,c150);
	FullAdder uut317(s106,c127,s128,s151,c151);
	FullAdder uut318(s108,c128,s129,s152,c152);
	FullAdder uut319(s109,c129,s130,s153,c153);
	FullAdder uut320(c109,c130,s131,s154,c154);

	wire [23:0] operandA;
	assign operandA = {c153,c152,c151,c150,c149,c148,c147,c146,c145,c144,c143,c142,c141,c140,c139,c138,c137,c136,c135,c134,c133,c132,P_2_0,P_0_1};
	wire [23:0] operandB;
	assign operandB = {s154,s153,s152,s151,s150,s149,s148,s147,s146,s145,s144,s143,s142,s141,s140,s139,s138,s137,s136,s135,s134,s133,s132,P_1_0};
	wire [24:0] Sum;
	unsignedBrentKungAdder24bit uut321(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = Sum[20];
	assign Product[22] = Sum[21];
	assign Product[23] = Sum[22];
	assign Product[24] = Sum[23];
endmodule
module unsignedBrentKungAdder24bit(input [23:0]A, input [23:0]B, output [24:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire carry21;
	wire carry22;
	wire carry23;
	wire carry24;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P020; wire G020;
	wire P021; wire G021;
	wire P022; wire G022;
	wire P023; wire G023;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P120; wire G120;
	wire P121; wire G121;
	wire P122; wire G122;
	wire P123; wire G123;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P220; wire G220;
	wire P221; wire G221;
	wire P222; wire G222;
	wire P223; wire G223;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P320; wire G320;
	wire P321; wire G321;
	wire P322; wire G322;
	wire P323; wire G323;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P420; wire G420;
	wire P421; wire G421;
	wire P422; wire G422;
	wire P423; wire G423;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	wire P520; wire G520;
	wire P521; wire G521;
	wire P522; wire G522;
	wire P523; wire G523;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);
	BitwisePG uut20(A[20], B[20], P020, G020);
	BitwisePG uut21(A[21], B[21], P021, G021);
	BitwisePG uut22(A[22], B[22], P022, G022);
	BitwisePG uut23(A[23], B[23], P023, G023);

	//first processing stage

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut24(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut25(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut26(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut27(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut28(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut29(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut30(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut31(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut32(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut33(P019,G019, G018,P018,P119,G119);

	assign P120 = P020;
	assign G120 = G020;

	BlackCell uut34(P021,G021, G020,P020,P121,G121);

	assign P122 = P022;
	assign G122 = G022;

	BlackCell uut35(P023,G023, G022,P022,P123,G123);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut36(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut37(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut38(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut39(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut40(P119,G119, G117,P117,P219,G219);

	assign P220 = P120;
	assign G220 = G120;

	assign P221 = P121;
	assign G221 = G121;

	assign P222 = P122;
	assign G222 = G122;

	BlackCell uut41(P123,G123, G121,P121,P223,G223);

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut42(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut43(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P320 = P220;
	assign G320 = G220;

	assign P321 = P221;
	assign G321 = G221;

	assign P322 = P222;
	assign G322 = G222;

	BlackCell uut44(P223,G223, G219,P219,P323,G323);

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut45(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P420 = P320;
	assign G420 = G320;

	assign P421 = P321;
	assign G421 = G321;

	assign P422 = P322;
	assign G422 = G322;

	assign P423 = P323;
	assign G423 = G323;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	assign P520 = P420;
	assign G520 = G420;

	assign P521 = P421;
	assign G521 = G421;

	assign P522 = P422;
	assign G522 = G422;

	assign P523 = P423;
	assign G523 = G423;

	//second processing stage

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;
	assign P620 = P520;
	assign G620 = G520;
	assign P621 = P521;
	assign G621 = G521;
	assign P622 = P522;
	assign G622 = G522;
	GrayCell uut46(P523,G523,G515, P623, G623);

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut47(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut48(P619,G619,G615, P719, G719);
	assign P720 = P620;
	assign G720 = G620;
	assign P721 = P621;
	assign G721 = G621;
	assign P722 = P622;
	assign G722 = G622;
	assign P723 = P623;
	assign G723 = G623;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut49(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut50(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut51(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut52(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;
	assign P820 = P720;
	assign G820 = G720;
	GrayCell uut53(P721,G721,G719, P821, G821);
	assign P822 = P722;
	assign G822 = G722;
	assign P823 = P723;
	assign G823 = G723;

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut54(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut55(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut56(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut57(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut58(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut59(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut60(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut61(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut62(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;
	GrayCell uut63(P820,G820,G819, P920, G920);
	assign P921 = P821;
	assign G921 = G821;
	GrayCell uut64(P822,G822,G821, P922, G922);
	assign P923 = P823;
	assign G923 = G823;

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign carry20 = G920;
	assign carry21 = G921;
	assign carry22 = G922;
	assign carry23 = G923;
	assign Sum[0] = P00;
	XorGate uut65(P01, carry0, Sum[1]);
	XorGate uut66(P02, carry1, Sum[2]);
	XorGate uut67(P03, carry2, Sum[3]);
	XorGate uut68(P04, carry3, Sum[4]);
	XorGate uut69(P05, carry4, Sum[5]);
	XorGate uut70(P06, carry5, Sum[6]);
	XorGate uut71(P07, carry6, Sum[7]);
	XorGate uut72(P08, carry7, Sum[8]);
	XorGate uut73(P09, carry8, Sum[9]);
	XorGate uut74(P010, carry9, Sum[10]);
	XorGate uut75(P011, carry10, Sum[11]);
	XorGate uut76(P012, carry11, Sum[12]);
	XorGate uut77(P013, carry12, Sum[13]);
	XorGate uut78(P014, carry13, Sum[14]);
	XorGate uut79(P015, carry14, Sum[15]);
	XorGate uut80(P016, carry15, Sum[16]);
	XorGate uut81(P017, carry16, Sum[17]);
	XorGate uut82(P018, carry17, Sum[18]);
	XorGate uut83(P019, carry18, Sum[19]);
	XorGate uut84(P020, carry19, Sum[20]);
	XorGate uut85(P021, carry20, Sum[21]);
	XorGate uut86(P022, carry21, Sum[22]);
	XorGate uut87(P023, carry22, Sum[23]);
	assign Sum[24] = carry23;
endmodule


module signedDaddaTreeMultiplier14x12bit(input [13:0] A, input [11:0]B, output [25:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11; 	wire P_0_12; 	wire P_0_13;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11; 	wire P_1_12; 	wire P_1_13;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11; 	wire P_2_12; 	wire P_2_13;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11; 	wire P_3_12; 	wire P_3_13;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11; 	wire P_4_12; 	wire P_4_13;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11; 	wire P_5_12; 	wire P_5_13;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11; 	wire P_6_12; 	wire P_6_13;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11; 	wire P_7_12; 	wire P_7_13;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11; 	wire P_8_12; 	wire P_8_13;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11; 	wire P_9_12; 	wire P_9_13;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11; 	wire P_10_12; 	wire P_10_13;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11; 	wire P_11_12; 	wire P_11_13;
	wire P_12_0; 	wire P_12_1; 	wire P_12_2; 	wire P_12_3; 	wire P_12_4; 	wire P_12_5; 	wire P_12_6; 	wire P_12_7; 	wire P_12_8; 	wire P_12_9; 	wire P_12_10; 	wire P_12_11; 	wire P_12_12; 	wire P_12_13;
	wire P_13_0; 	wire P_13_1; 	wire P_13_2; 	wire P_13_3; 	wire P_13_4; 	wire P_13_5; 	wire P_13_6; 	wire P_13_7; 	wire P_13_8; 	wire P_13_9; 	wire P_13_10; 	wire P_13_11; 	wire P_13_12; 	wire P_13_13;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;
	wire s104,c104;
	wire s105,c105;
	wire s106,c106;
	wire s107,c107;
	wire s108,c108;
	wire s109,c109;
	wire s110,c110;
	wire s111,c111;
	wire s112,c112;
	wire s113,c113;
	wire s114,c114;
	wire s115,c115;
	wire s116,c116;
	wire s117,c117;
	wire s118,c118;
	wire s119,c119;
	wire s120,c120;
	wire s121,c121;
	wire s122,c122;
	wire s123,c123;
	wire s124,c124;
	wire s125,c125;
	wire s126,c126;
	wire s127,c127;
	wire s128,c128;
	wire s129,c129;
	wire s130,c130;
	wire s131,c131;
	wire s132,c132;
	wire s133,c133;
	wire s134,c134;
	wire s135,c135;
	wire s136,c136;
	wire s137,c137;
	wire s138,c138;
	wire s139,c139;
	wire s140,c140;
	wire s141,c141;
	wire s142,c142;
	wire s143,c143;
	wire s144,c144;
	wire s145,c145;
	wire s146,c146;
	wire s147,c147;
	wire s148,c148;
	wire s149,c149;
	wire s150,c150;
	wire s151,c151;
	wire s152,c152;
	wire s153,c153;
	wire s154,c154;
	wire s155,c155;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[11], B[0], P_0_11);
	AndGate uut12(A[12], B[0], P_0_12);
	NandGate uut13(A[13], B[0], P_0_13);
	AndGate uut14(A[0], B[1], P_1_0);
	AndGate uut15(A[1], B[1], P_1_1);
	AndGate uut16(A[2], B[1], P_1_2);
	AndGate uut17(A[3], B[1], P_1_3);
	AndGate uut18(A[4], B[1], P_1_4);
	AndGate uut19(A[5], B[1], P_1_5);
	AndGate uut20(A[6], B[1], P_1_6);
	AndGate uut21(A[7], B[1], P_1_7);
	AndGate uut22(A[8], B[1], P_1_8);
	AndGate uut23(A[9], B[1], P_1_9);
	AndGate uut24(A[10], B[1], P_1_10);
	AndGate uut25(A[11], B[1], P_1_11);
	AndGate uut26(A[12], B[1], P_1_12);
	NandGate uut27(A[13], B[1], P_1_13);
	AndGate uut28(A[0], B[2], P_2_0);
	AndGate uut29(A[1], B[2], P_2_1);
	AndGate uut30(A[2], B[2], P_2_2);
	AndGate uut31(A[3], B[2], P_2_3);
	AndGate uut32(A[4], B[2], P_2_4);
	AndGate uut33(A[5], B[2], P_2_5);
	AndGate uut34(A[6], B[2], P_2_6);
	AndGate uut35(A[7], B[2], P_2_7);
	AndGate uut36(A[8], B[2], P_2_8);
	AndGate uut37(A[9], B[2], P_2_9);
	AndGate uut38(A[10], B[2], P_2_10);
	AndGate uut39(A[11], B[2], P_2_11);
	AndGate uut40(A[12], B[2], P_2_12);
	NandGate uut41(A[13], B[2], P_2_13);
	AndGate uut42(A[0], B[3], P_3_0);
	AndGate uut43(A[1], B[3], P_3_1);
	AndGate uut44(A[2], B[3], P_3_2);
	AndGate uut45(A[3], B[3], P_3_3);
	AndGate uut46(A[4], B[3], P_3_4);
	AndGate uut47(A[5], B[3], P_3_5);
	AndGate uut48(A[6], B[3], P_3_6);
	AndGate uut49(A[7], B[3], P_3_7);
	AndGate uut50(A[8], B[3], P_3_8);
	AndGate uut51(A[9], B[3], P_3_9);
	AndGate uut52(A[10], B[3], P_3_10);
	AndGate uut53(A[11], B[3], P_3_11);
	AndGate uut54(A[12], B[3], P_3_12);
	NandGate uut55(A[13], B[3], P_3_13);
	AndGate uut56(A[0], B[4], P_4_0);
	AndGate uut57(A[1], B[4], P_4_1);
	AndGate uut58(A[2], B[4], P_4_2);
	AndGate uut59(A[3], B[4], P_4_3);
	AndGate uut60(A[4], B[4], P_4_4);
	AndGate uut61(A[5], B[4], P_4_5);
	AndGate uut62(A[6], B[4], P_4_6);
	AndGate uut63(A[7], B[4], P_4_7);
	AndGate uut64(A[8], B[4], P_4_8);
	AndGate uut65(A[9], B[4], P_4_9);
	AndGate uut66(A[10], B[4], P_4_10);
	AndGate uut67(A[11], B[4], P_4_11);
	AndGate uut68(A[12], B[4], P_4_12);
	NandGate uut69(A[13], B[4], P_4_13);
	AndGate uut70(A[0], B[5], P_5_0);
	AndGate uut71(A[1], B[5], P_5_1);
	AndGate uut72(A[2], B[5], P_5_2);
	AndGate uut73(A[3], B[5], P_5_3);
	AndGate uut74(A[4], B[5], P_5_4);
	AndGate uut75(A[5], B[5], P_5_5);
	AndGate uut76(A[6], B[5], P_5_6);
	AndGate uut77(A[7], B[5], P_5_7);
	AndGate uut78(A[8], B[5], P_5_8);
	AndGate uut79(A[9], B[5], P_5_9);
	AndGate uut80(A[10], B[5], P_5_10);
	AndGate uut81(A[11], B[5], P_5_11);
	AndGate uut82(A[12], B[5], P_5_12);
	NandGate uut83(A[13], B[5], P_5_13);
	AndGate uut84(A[0], B[6], P_6_0);
	AndGate uut85(A[1], B[6], P_6_1);
	AndGate uut86(A[2], B[6], P_6_2);
	AndGate uut87(A[3], B[6], P_6_3);
	AndGate uut88(A[4], B[6], P_6_4);
	AndGate uut89(A[5], B[6], P_6_5);
	AndGate uut90(A[6], B[6], P_6_6);
	AndGate uut91(A[7], B[6], P_6_7);
	AndGate uut92(A[8], B[6], P_6_8);
	AndGate uut93(A[9], B[6], P_6_9);
	AndGate uut94(A[10], B[6], P_6_10);
	AndGate uut95(A[11], B[6], P_6_11);
	AndGate uut96(A[12], B[6], P_6_12);
	NandGate uut97(A[13], B[6], P_6_13);
	AndGate uut98(A[0], B[7], P_7_0);
	AndGate uut99(A[1], B[7], P_7_1);
	AndGate uut100(A[2], B[7], P_7_2);
	AndGate uut101(A[3], B[7], P_7_3);
	AndGate uut102(A[4], B[7], P_7_4);
	AndGate uut103(A[5], B[7], P_7_5);
	AndGate uut104(A[6], B[7], P_7_6);
	AndGate uut105(A[7], B[7], P_7_7);
	AndGate uut106(A[8], B[7], P_7_8);
	AndGate uut107(A[9], B[7], P_7_9);
	AndGate uut108(A[10], B[7], P_7_10);
	AndGate uut109(A[11], B[7], P_7_11);
	AndGate uut110(A[12], B[7], P_7_12);
	NandGate uut111(A[13], B[7], P_7_13);
	AndGate uut112(A[0], B[8], P_8_0);
	AndGate uut113(A[1], B[8], P_8_1);
	AndGate uut114(A[2], B[8], P_8_2);
	AndGate uut115(A[3], B[8], P_8_3);
	AndGate uut116(A[4], B[8], P_8_4);
	AndGate uut117(A[5], B[8], P_8_5);
	AndGate uut118(A[6], B[8], P_8_6);
	AndGate uut119(A[7], B[8], P_8_7);
	AndGate uut120(A[8], B[8], P_8_8);
	AndGate uut121(A[9], B[8], P_8_9);
	AndGate uut122(A[10], B[8], P_8_10);
	AndGate uut123(A[11], B[8], P_8_11);
	AndGate uut124(A[12], B[8], P_8_12);
	NandGate uut125(A[13], B[8], P_8_13);
	AndGate uut126(A[0], B[9], P_9_0);
	AndGate uut127(A[1], B[9], P_9_1);
	AndGate uut128(A[2], B[9], P_9_2);
	AndGate uut129(A[3], B[9], P_9_3);
	AndGate uut130(A[4], B[9], P_9_4);
	AndGate uut131(A[5], B[9], P_9_5);
	AndGate uut132(A[6], B[9], P_9_6);
	AndGate uut133(A[7], B[9], P_9_7);
	AndGate uut134(A[8], B[9], P_9_8);
	AndGate uut135(A[9], B[9], P_9_9);
	AndGate uut136(A[10], B[9], P_9_10);
	AndGate uut137(A[11], B[9], P_9_11);
	AndGate uut138(A[12], B[9], P_9_12);
	NandGate uut139(A[13], B[9], P_9_13);
	AndGate uut140(A[0], B[10], P_10_0);
	AndGate uut141(A[1], B[10], P_10_1);
	AndGate uut142(A[2], B[10], P_10_2);
	AndGate uut143(A[3], B[10], P_10_3);
	AndGate uut144(A[4], B[10], P_10_4);
	AndGate uut145(A[5], B[10], P_10_5);
	AndGate uut146(A[6], B[10], P_10_6);
	AndGate uut147(A[7], B[10], P_10_7);
	AndGate uut148(A[8], B[10], P_10_8);
	AndGate uut149(A[9], B[10], P_10_9);
	AndGate uut150(A[10], B[10], P_10_10);
	AndGate uut151(A[11], B[10], P_10_11);
	AndGate uut152(A[12], B[10], P_10_12);
	NandGate uut153(A[13], B[10], P_10_13);
	AndGate uut154(A[0], B[11], P_11_0);
	AndGate uut155(A[1], B[11], P_11_1);
	AndGate uut156(A[2], B[11], P_11_2);
	AndGate uut157(A[3], B[11], P_11_3);
	AndGate uut158(A[4], B[11], P_11_4);
	AndGate uut159(A[5], B[11], P_11_5);
	AndGate uut160(A[6], B[11], P_11_6);
	AndGate uut161(A[7], B[11], P_11_7);
	AndGate uut162(A[8], B[11], P_11_8);
	AndGate uut163(A[9], B[11], P_11_9);
	AndGate uut164(A[10], B[11], P_11_10);
	AndGate uut165(A[11], B[11], P_11_11);
	AndGate uut166(A[12], B[11], P_11_12);
	NandGate uut167(A[13], B[11], P_11_13);
	assign P_12_0 = P_11_0;
	assign P_12_1 = P_11_1;
	assign P_12_2 = P_11_2;
	assign P_12_3 = P_11_3;
	assign P_12_4 = P_11_4;
	assign P_12_5 = P_11_5;
	assign P_12_6 = P_11_6;
	assign P_12_7 = P_11_7;
	assign P_12_8 = P_11_8;
	assign P_12_9 = P_11_9;
	assign P_12_10 = P_11_10;
	assign P_12_11 = P_11_11;
	assign P_12_12 = P_11_12;
	assign P_12_13 = P_11_13;
	NandGate uut168(A[0], B[11], P_13_0);
	NandGate uut169(A[1], B[11], P_13_1);
	NandGate uut170(A[2], B[11], P_13_2);
	NandGate uut171(A[3], B[11], P_13_3);
	NandGate uut172(A[4], B[11], P_13_4);
	NandGate uut173(A[5], B[11], P_13_5);
	NandGate uut174(A[6], B[11], P_13_6);
	NandGate uut175(A[7], B[11], P_13_7);
	NandGate uut176(A[8], B[11], P_13_8);
	NandGate uut177(A[9], B[11], P_13_9);
	NandGate uut178(A[10], B[11], P_13_10);
	NandGate uut179(A[11], B[11], P_13_11);
	NandGate uut180(A[12], B[11], P_13_12);
	HalfAdder uut181(P_0_9,P_1_8,s0,c0);
	FullAdder uut182(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut183(P_3_7,P_4_6,s2,c2);
	FullAdder uut184(P_0_11,P_1_10,P_2_9,s3,c3);
	FullAdder uut185(P_3_8,P_4_7,P_5_6,s4,c4);
	HalfAdder uut186(P_6_5,P_7_4,s5,c5);
	FullAdder uut187(P_0_12,P_1_11,P_2_10,s6,c6);
	FullAdder uut188(P_3_9,P_4_8,P_5_7,s7,c7);
	FullAdder uut189(P_6_6,P_7_5,P_8_4,s8,c8);
	HalfAdder uut190(P_9_3,P_10_2,s9,c9);
	FullAdder uut191(P_0_13,P_1_12,P_2_11,s10,c10);
	FullAdder uut192(P_3_10,P_4_9,P_5_8,s11,c11);
	FullAdder uut193(P_6_7,P_7_6,P_8_5,s12,c12);
	FullAdder uut194(P_9_4,P_10_3,P_11_2,s13,c13);
	HalfAdder uut195(P_12_1,P_13_0,s14,c14);
	FullAdder uut196(1'b1,P_1_13,P_2_12,s15,c15);
	FullAdder uut197(P_3_11,P_4_10,P_5_9,s16,c16);
	FullAdder uut198(P_6_8,P_7_7,P_8_6,s17,c17);
	FullAdder uut199(P_9_5,P_10_4,P_11_3,s18,c18);
	FullAdder uut200(P_12_2,P_13_1,c10,s19,c19);
	FullAdder uut201(P_2_13,P_3_12,P_4_11,s20,c20);
	FullAdder uut202(P_5_10,P_6_9,P_7_8,s21,c21);
	FullAdder uut203(P_8_7,P_9_6,P_10_5,s22,c22);
	FullAdder uut204(P_11_4,P_12_3,P_13_2,s23,c23);
	FullAdder uut205(P_3_13,P_4_12,P_5_11,s24,c24);
	FullAdder uut206(P_6_10,P_7_9,P_8_8,s25,c25);
	FullAdder uut207(P_9_7,P_10_6,P_11_5,s26,c26);
	FullAdder uut208(P_4_13,P_5_12,P_6_11,s27,c27);
	FullAdder uut209(P_7_10,P_8_9,P_9_8,s28,c28);
	FullAdder uut210(P_5_13,P_6_12,P_7_11,s29,c29);

	HalfAdder uut211(P_0_6,P_1_5,s30,c30);
	FullAdder uut212(P_0_7,P_1_6,P_2_5,s31,c31);
	HalfAdder uut213(P_3_4,P_4_3,s32,c32);
	FullAdder uut214(P_0_8,P_1_7,P_2_6,s33,c33);
	FullAdder uut215(P_3_5,P_4_4,P_5_3,s34,c34);
	HalfAdder uut216(P_6_2,P_7_1,s35,c35);
	FullAdder uut217(P_2_7,P_3_6,P_4_5,s36,c36);
	FullAdder uut218(P_5_4,P_6_3,P_7_2,s37,c37);
	FullAdder uut219(P_8_1,P_9_0,s0,s38,c38);
	FullAdder uut220(P_5_5,P_6_4,P_7_3,s39,c39);
	FullAdder uut221(P_8_2,P_9_1,P_10_0,s40,c40);
	FullAdder uut222(c0,s1,s2,s41,c41);
	FullAdder uut223(P_8_3,P_9_2,P_10_1,s42,c42);
	FullAdder uut224(P_11_0,c1,c2,s43,c43);
	FullAdder uut225(s3,s4,s5,s44,c44);
	FullAdder uut226(P_11_1,P_12_0,c3,s45,c45);
	FullAdder uut227(c4,c5,s6,s46,c46);
	FullAdder uut228(s7,s8,s9,s47,c47);
	FullAdder uut229(c6,c7,c8,s48,c48);
	FullAdder uut230(c9,s10,s11,s49,c49);
	FullAdder uut231(s12,s13,s14,s50,c50);
	FullAdder uut232(c11,c12,c13,s51,c51);
	FullAdder uut233(c14,s15,s16,s52,c52);
	FullAdder uut234(s17,s18,s19,s53,c53);
	FullAdder uut235(c15,c16,c17,s54,c54);
	FullAdder uut236(c18,c19,s20,s55,c55);
	FullAdder uut237(s21,s22,s23,s56,c56);
	FullAdder uut238(P_12_4,P_13_3,c20,s57,c57);
	FullAdder uut239(c21,c22,c23,s58,c58);
	FullAdder uut240(s24,s25,s26,s59,c59);
	FullAdder uut241(P_10_7,P_11_6,P_12_5,s60,c60);
	FullAdder uut242(P_13_4,c24,c25,s61,c61);
	FullAdder uut243(c26,s27,s28,s62,c62);
	FullAdder uut244(P_8_10,P_9_9,P_10_8,s63,c63);
	FullAdder uut245(P_11_7,P_12_6,P_13_5,s64,c64);
	FullAdder uut246(c27,c28,s29,s65,c65);
	FullAdder uut247(P_6_13,P_7_12,P_8_11,s66,c66);
	FullAdder uut248(P_9_10,P_10_9,P_11_8,s67,c67);
	FullAdder uut249(P_12_7,P_13_6,c29,s68,c68);
	FullAdder uut250(P_7_13,P_8_12,P_9_11,s69,c69);
	FullAdder uut251(P_10_10,P_11_9,P_12_8,s70,c70);
	FullAdder uut252(P_8_13,P_9_12,P_10_11,s71,c71);

	HalfAdder uut253(P_0_4,P_1_3,s72,c72);
	FullAdder uut254(P_0_5,P_1_4,P_2_3,s73,c73);
	HalfAdder uut255(P_3_2,P_4_1,s74,c74);
	FullAdder uut256(P_2_4,P_3_3,P_4_2,s75,c75);
	FullAdder uut257(P_5_1,P_6_0,s30,s76,c76);
	FullAdder uut258(P_5_2,P_6_1,P_7_0,s77,c77);
	FullAdder uut259(c30,s31,s32,s78,c78);
	FullAdder uut260(P_8_0,c31,c32,s79,c79);
	FullAdder uut261(s33,s34,s35,s80,c80);
	FullAdder uut262(c33,c34,c35,s81,c81);
	FullAdder uut263(s36,s37,s38,s82,c82);
	FullAdder uut264(c36,c37,c38,s83,c83);
	FullAdder uut265(s39,s40,s41,s84,c84);
	FullAdder uut266(c39,c40,c41,s85,c85);
	FullAdder uut267(s42,s43,s44,s86,c86);
	FullAdder uut268(c42,c43,c44,s87,c87);
	FullAdder uut269(s45,s46,s47,s88,c88);
	FullAdder uut270(c45,c46,c47,s89,c89);
	FullAdder uut271(s48,s49,s50,s90,c90);
	FullAdder uut272(c48,c49,c50,s91,c91);
	FullAdder uut273(s51,s52,s53,s92,c92);
	FullAdder uut274(c51,c52,c53,s93,c93);
	FullAdder uut275(s54,s55,s56,s94,c94);
	FullAdder uut276(c54,c55,c56,s95,c95);
	FullAdder uut277(s57,s58,s59,s96,c96);
	FullAdder uut278(c57,c58,c59,s97,c97);
	FullAdder uut279(s60,s61,s62,s98,c98);
	FullAdder uut280(c60,c61,c62,s99,c99);
	FullAdder uut281(s63,s64,s65,s100,c100);
	FullAdder uut282(c63,c64,c65,s101,c101);
	FullAdder uut283(s66,s67,s68,s102,c102);
	FullAdder uut284(P_13_7,c66,c67,s103,c103);
	FullAdder uut285(c68,s69,s70,s104,c104);
	FullAdder uut286(P_11_10,P_12_9,P_13_8,s105,c105);
	FullAdder uut287(c69,c70,s71,s106,c106);
	FullAdder uut288(P_9_13,P_10_12,P_11_11,s107,c107);
	FullAdder uut289(P_12_10,P_13_9,c71,s108,c108);
	FullAdder uut290(P_10_13,P_11_12,P_12_11,s109,c109);

	HalfAdder uut291(P_0_3,P_1_2,s110,c110);
	FullAdder uut292(P_2_2,P_3_1,P_4_0,s111,c111);
	FullAdder uut293(P_5_0,c72,s73,s112,c112);
	FullAdder uut294(c73,c74,s75,s113,c113);
	FullAdder uut295(c75,c76,s77,s114,c114);
	FullAdder uut296(c77,c78,s79,s115,c115);
	FullAdder uut297(c79,c80,s81,s116,c116);
	FullAdder uut298(c81,c82,s83,s117,c117);
	FullAdder uut299(c83,c84,s85,s118,c118);
	FullAdder uut300(c85,c86,s87,s119,c119);
	FullAdder uut301(c87,c88,s89,s120,c120);
	FullAdder uut302(c89,c90,s91,s121,c121);
	FullAdder uut303(c91,c92,s93,s122,c122);
	FullAdder uut304(c93,c94,s95,s123,c123);
	FullAdder uut305(c95,c96,s97,s124,c124);
	FullAdder uut306(c97,c98,s99,s125,c125);
	FullAdder uut307(c99,c100,s101,s126,c126);
	FullAdder uut308(c101,c102,s103,s127,c127);
	FullAdder uut309(c103,c104,s105,s128,c128);
	FullAdder uut310(c105,c106,s107,s129,c129);
	FullAdder uut311(P_13_10,c107,c108,s130,c130);
	FullAdder uut312(P_11_13,P_12_12,P_13_11,s131,c131);

	HalfAdder uut313(P_0_2,P_1_1,s132,c132);
	FullAdder uut314(P_2_1,P_3_0,s110,s133,c133);
	FullAdder uut315(s72,c110,s111,s134,c134);
	FullAdder uut316(s74,c111,s112,s135,c135);
	FullAdder uut317(s76,c112,s113,s136,c136);
	FullAdder uut318(s78,c113,s114,s137,c137);
	FullAdder uut319(s80,c114,s115,s138,c138);
	FullAdder uut320(s82,c115,s116,s139,c139);
	FullAdder uut321(s84,c116,s117,s140,c140);
	FullAdder uut322(s86,c117,s118,s141,c141);
	FullAdder uut323(s88,c118,s119,s142,c142);
	FullAdder uut324(s90,c119,s120,s143,c143);
	FullAdder uut325(s92,c120,s121,s144,c144);
	FullAdder uut326(s94,c121,s122,s145,c145);
	FullAdder uut327(s96,c122,s123,s146,c146);
	FullAdder uut328(s98,c123,s124,s147,c147);
	FullAdder uut329(s100,c124,s125,s148,c148);
	FullAdder uut330(s102,c125,s126,s149,c149);
	FullAdder uut331(s104,c126,s127,s150,c150);
	FullAdder uut332(s106,c127,s128,s151,c151);
	FullAdder uut333(s108,c128,s129,s152,c152);
	FullAdder uut334(s109,c129,s130,s153,c153);
	FullAdder uut335(c109,c130,s131,s154,c154);
	FullAdder uut336(P_12_13,P_13_12,c131,s155,c155);

	wire [24:0] operandA;
	assign operandA = {c154,c153,c152,c151,c150,c149,c148,c147,c146,c145,c144,c143,c142,c141,c140,c139,c138,c137,c136,c135,c134,c133,c132,P_2_0,P_0_1};
	wire [24:0] operandB;
	assign operandB = {s155,s154,s153,s152,s151,s150,s149,s148,s147,s146,s145,s144,s143,s142,s141,s140,s139,s138,s137,s136,s135,s134,s133,s132,P_1_0};
	wire [25:0] Sum;
	unsignedBrentKungAdder25bit uut337(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = Sum[20];
	assign Product[22] = Sum[21];
	assign Product[23] = Sum[22];
	assign Product[24] = Sum[23];
	assign Product[25] = Sum[24];
endmodule
module unsignedBrentKungAdder25bit(input [24:0]A, input [24:0]B, output [25:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire carry21;
	wire carry22;
	wire carry23;
	wire carry24;
	wire carry25;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P020; wire G020;
	wire P021; wire G021;
	wire P022; wire G022;
	wire P023; wire G023;
	wire P024; wire G024;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P120; wire G120;
	wire P121; wire G121;
	wire P122; wire G122;
	wire P123; wire G123;
	wire P124; wire G124;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P220; wire G220;
	wire P221; wire G221;
	wire P222; wire G222;
	wire P223; wire G223;
	wire P224; wire G224;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P320; wire G320;
	wire P321; wire G321;
	wire P322; wire G322;
	wire P323; wire G323;
	wire P324; wire G324;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P420; wire G420;
	wire P421; wire G421;
	wire P422; wire G422;
	wire P423; wire G423;
	wire P424; wire G424;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	wire P520; wire G520;
	wire P521; wire G521;
	wire P522; wire G522;
	wire P523; wire G523;
	wire P524; wire G524;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);
	BitwisePG uut20(A[20], B[20], P020, G020);
	BitwisePG uut21(A[21], B[21], P021, G021);
	BitwisePG uut22(A[22], B[22], P022, G022);
	BitwisePG uut23(A[23], B[23], P023, G023);
	BitwisePG uut24(A[24], B[24], P024, G024);

	//first processing stage

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut25(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut26(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut27(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut28(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut29(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut30(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut31(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut32(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut33(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut34(P019,G019, G018,P018,P119,G119);

	assign P120 = P020;
	assign G120 = G020;

	BlackCell uut35(P021,G021, G020,P020,P121,G121);

	assign P122 = P022;
	assign G122 = G022;

	BlackCell uut36(P023,G023, G022,P022,P123,G123);

	assign P124 = P024;
	assign G124 = G024;

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut37(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut38(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut39(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut40(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut41(P119,G119, G117,P117,P219,G219);

	assign P220 = P120;
	assign G220 = G120;

	assign P221 = P121;
	assign G221 = G121;

	assign P222 = P122;
	assign G222 = G122;

	BlackCell uut42(P123,G123, G121,P121,P223,G223);

	assign P224 = P124;
	assign G224 = G124;

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut43(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut44(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P320 = P220;
	assign G320 = G220;

	assign P321 = P221;
	assign G321 = G221;

	assign P322 = P222;
	assign G322 = G222;

	BlackCell uut45(P223,G223, G219,P219,P323,G323);

	assign P324 = P224;
	assign G324 = G224;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut46(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P420 = P320;
	assign G420 = G320;

	assign P421 = P321;
	assign G421 = G321;

	assign P422 = P322;
	assign G422 = G322;

	assign P423 = P323;
	assign G423 = G323;

	assign P424 = P324;
	assign G424 = G324;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	assign P520 = P420;
	assign G520 = G420;

	assign P521 = P421;
	assign G521 = G421;

	assign P522 = P422;
	assign G522 = G422;

	assign P523 = P423;
	assign G523 = G423;

	assign P524 = P424;
	assign G524 = G424;

	//second processing stage

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;
	assign P620 = P520;
	assign G620 = G520;
	assign P621 = P521;
	assign G621 = G521;
	assign P622 = P522;
	assign G622 = G522;
	GrayCell uut47(P523,G523,G515, P623, G623);
	assign P624 = P524;
	assign G624 = G524;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut48(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut49(P619,G619,G615, P719, G719);
	assign P720 = P620;
	assign G720 = G620;
	assign P721 = P621;
	assign G721 = G621;
	assign P722 = P622;
	assign G722 = G622;
	assign P723 = P623;
	assign G723 = G623;
	assign P724 = P624;
	assign G724 = G624;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut50(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut51(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut52(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut53(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;
	assign P820 = P720;
	assign G820 = G720;
	GrayCell uut54(P721,G721,G719, P821, G821);
	assign P822 = P722;
	assign G822 = G722;
	assign P823 = P723;
	assign G823 = G723;
	assign P824 = P724;
	assign G824 = G724;

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut55(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut56(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut57(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut58(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut59(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut60(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut61(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut62(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut63(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;
	GrayCell uut64(P820,G820,G819, P920, G920);
	assign P921 = P821;
	assign G921 = G821;
	GrayCell uut65(P822,G822,G821, P922, G922);
	assign P923 = P823;
	assign G923 = G823;
	GrayCell uut66(P824,G824,G823, P924, G924);

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign carry20 = G920;
	assign carry21 = G921;
	assign carry22 = G922;
	assign carry23 = G923;
	assign carry24 = G924;
	assign Sum[0] = P00;
	XorGate uut67(P01, carry0, Sum[1]);
	XorGate uut68(P02, carry1, Sum[2]);
	XorGate uut69(P03, carry2, Sum[3]);
	XorGate uut70(P04, carry3, Sum[4]);
	XorGate uut71(P05, carry4, Sum[5]);
	XorGate uut72(P06, carry5, Sum[6]);
	XorGate uut73(P07, carry6, Sum[7]);
	XorGate uut74(P08, carry7, Sum[8]);
	XorGate uut75(P09, carry8, Sum[9]);
	XorGate uut76(P010, carry9, Sum[10]);
	XorGate uut77(P011, carry10, Sum[11]);
	XorGate uut78(P012, carry11, Sum[12]);
	XorGate uut79(P013, carry12, Sum[13]);
	XorGate uut80(P014, carry13, Sum[14]);
	XorGate uut81(P015, carry14, Sum[15]);
	XorGate uut82(P016, carry15, Sum[16]);
	XorGate uut83(P017, carry16, Sum[17]);
	XorGate uut84(P018, carry17, Sum[18]);
	XorGate uut85(P019, carry18, Sum[19]);
	XorGate uut86(P020, carry19, Sum[20]);
	XorGate uut87(P021, carry20, Sum[21]);
	XorGate uut88(P022, carry21, Sum[22]);
	XorGate uut89(P023, carry22, Sum[23]);
	XorGate uut90(P024, carry23, Sum[24]);
	assign Sum[25] = carry24;
endmodule

module signedDaddaTreeMultiplier16x11bit(input [15:0] A, input [10:0]B, output [26:0]Product);


	wire P_0_0; 	wire P_0_1; 	wire P_0_2; 	wire P_0_3; 	wire P_0_4; 	wire P_0_5; 	wire P_0_6; 	wire P_0_7; 	wire P_0_8; 	wire P_0_9; 	wire P_0_10; 	wire P_0_11; 	wire P_0_12; 	wire P_0_13; 	wire P_0_14; 	wire P_0_15;
	wire P_1_0; 	wire P_1_1; 	wire P_1_2; 	wire P_1_3; 	wire P_1_4; 	wire P_1_5; 	wire P_1_6; 	wire P_1_7; 	wire P_1_8; 	wire P_1_9; 	wire P_1_10; 	wire P_1_11; 	wire P_1_12; 	wire P_1_13; 	wire P_1_14; 	wire P_1_15;
	wire P_2_0; 	wire P_2_1; 	wire P_2_2; 	wire P_2_3; 	wire P_2_4; 	wire P_2_5; 	wire P_2_6; 	wire P_2_7; 	wire P_2_8; 	wire P_2_9; 	wire P_2_10; 	wire P_2_11; 	wire P_2_12; 	wire P_2_13; 	wire P_2_14; 	wire P_2_15;
	wire P_3_0; 	wire P_3_1; 	wire P_3_2; 	wire P_3_3; 	wire P_3_4; 	wire P_3_5; 	wire P_3_6; 	wire P_3_7; 	wire P_3_8; 	wire P_3_9; 	wire P_3_10; 	wire P_3_11; 	wire P_3_12; 	wire P_3_13; 	wire P_3_14; 	wire P_3_15;
	wire P_4_0; 	wire P_4_1; 	wire P_4_2; 	wire P_4_3; 	wire P_4_4; 	wire P_4_5; 	wire P_4_6; 	wire P_4_7; 	wire P_4_8; 	wire P_4_9; 	wire P_4_10; 	wire P_4_11; 	wire P_4_12; 	wire P_4_13; 	wire P_4_14; 	wire P_4_15;
	wire P_5_0; 	wire P_5_1; 	wire P_5_2; 	wire P_5_3; 	wire P_5_4; 	wire P_5_5; 	wire P_5_6; 	wire P_5_7; 	wire P_5_8; 	wire P_5_9; 	wire P_5_10; 	wire P_5_11; 	wire P_5_12; 	wire P_5_13; 	wire P_5_14; 	wire P_5_15;
	wire P_6_0; 	wire P_6_1; 	wire P_6_2; 	wire P_6_3; 	wire P_6_4; 	wire P_6_5; 	wire P_6_6; 	wire P_6_7; 	wire P_6_8; 	wire P_6_9; 	wire P_6_10; 	wire P_6_11; 	wire P_6_12; 	wire P_6_13; 	wire P_6_14; 	wire P_6_15;
	wire P_7_0; 	wire P_7_1; 	wire P_7_2; 	wire P_7_3; 	wire P_7_4; 	wire P_7_5; 	wire P_7_6; 	wire P_7_7; 	wire P_7_8; 	wire P_7_9; 	wire P_7_10; 	wire P_7_11; 	wire P_7_12; 	wire P_7_13; 	wire P_7_14; 	wire P_7_15;
	wire P_8_0; 	wire P_8_1; 	wire P_8_2; 	wire P_8_3; 	wire P_8_4; 	wire P_8_5; 	wire P_8_6; 	wire P_8_7; 	wire P_8_8; 	wire P_8_9; 	wire P_8_10; 	wire P_8_11; 	wire P_8_12; 	wire P_8_13; 	wire P_8_14; 	wire P_8_15;
	wire P_9_0; 	wire P_9_1; 	wire P_9_2; 	wire P_9_3; 	wire P_9_4; 	wire P_9_5; 	wire P_9_6; 	wire P_9_7; 	wire P_9_8; 	wire P_9_9; 	wire P_9_10; 	wire P_9_11; 	wire P_9_12; 	wire P_9_13; 	wire P_9_14; 	wire P_9_15;
	wire P_10_0; 	wire P_10_1; 	wire P_10_2; 	wire P_10_3; 	wire P_10_4; 	wire P_10_5; 	wire P_10_6; 	wire P_10_7; 	wire P_10_8; 	wire P_10_9; 	wire P_10_10; 	wire P_10_11; 	wire P_10_12; 	wire P_10_13; 	wire P_10_14; 	wire P_10_15;
	wire P_11_0; 	wire P_11_1; 	wire P_11_2; 	wire P_11_3; 	wire P_11_4; 	wire P_11_5; 	wire P_11_6; 	wire P_11_7; 	wire P_11_8; 	wire P_11_9; 	wire P_11_10; 	wire P_11_11; 	wire P_11_12; 	wire P_11_13; 	wire P_11_14; 	wire P_11_15;
	wire P_12_0; 	wire P_12_1; 	wire P_12_2; 	wire P_12_3; 	wire P_12_4; 	wire P_12_5; 	wire P_12_6; 	wire P_12_7; 	wire P_12_8; 	wire P_12_9; 	wire P_12_10; 	wire P_12_11; 	wire P_12_12; 	wire P_12_13; 	wire P_12_14; 	wire P_12_15;
	wire P_13_0; 	wire P_13_1; 	wire P_13_2; 	wire P_13_3; 	wire P_13_4; 	wire P_13_5; 	wire P_13_6; 	wire P_13_7; 	wire P_13_8; 	wire P_13_9; 	wire P_13_10; 	wire P_13_11; 	wire P_13_12; 	wire P_13_13; 	wire P_13_14; 	wire P_13_15;
	wire P_14_0; 	wire P_14_1; 	wire P_14_2; 	wire P_14_3; 	wire P_14_4; 	wire P_14_5; 	wire P_14_6; 	wire P_14_7; 	wire P_14_8; 	wire P_14_9; 	wire P_14_10; 	wire P_14_11; 	wire P_14_12; 	wire P_14_13; 	wire P_14_14; 	wire P_14_15;
	wire P_15_0; 	wire P_15_1; 	wire P_15_2; 	wire P_15_3; 	wire P_15_4; 	wire P_15_5; 	wire P_15_6; 	wire P_15_7; 	wire P_15_8; 	wire P_15_9; 	wire P_15_10; 	wire P_15_11; 	wire P_15_12; 	wire P_15_13; 	wire P_15_14; 	wire P_15_15;
	wire s0,c0;
	wire s1,c1;
	wire s2,c2;
	wire s3,c3;
	wire s4,c4;
	wire s5,c5;
	wire s6,c6;
	wire s7,c7;
	wire s8,c8;
	wire s9,c9;
	wire s10,c10;
	wire s11,c11;
	wire s12,c12;
	wire s13,c13;
	wire s14,c14;
	wire s15,c15;
	wire s16,c16;
	wire s17,c17;
	wire s18,c18;
	wire s19,c19;
	wire s20,c20;
	wire s21,c21;
	wire s22,c22;
	wire s23,c23;
	wire s24,c24;
	wire s25,c25;
	wire s26,c26;
	wire s27,c27;
	wire s28,c28;
	wire s29,c29;
	wire s30,c30;
	wire s31,c31;
	wire s32,c32;
	wire s33,c33;
	wire s34,c34;
	wire s35,c35;
	wire s36,c36;
	wire s37,c37;
	wire s38,c38;
	wire s39,c39;
	wire s40,c40;
	wire s41,c41;
	wire s42,c42;
	wire s43,c43;
	wire s44,c44;
	wire s45,c45;
	wire s46,c46;
	wire s47,c47;
	wire s48,c48;
	wire s49,c49;
	wire s50,c50;
	wire s51,c51;
	wire s52,c52;
	wire s53,c53;
	wire s54,c54;
	wire s55,c55;
	wire s56,c56;
	wire s57,c57;
	wire s58,c58;
	wire s59,c59;
	wire s60,c60;
	wire s61,c61;
	wire s62,c62;
	wire s63,c63;
	wire s64,c64;
	wire s65,c65;
	wire s66,c66;
	wire s67,c67;
	wire s68,c68;
	wire s69,c69;
	wire s70,c70;
	wire s71,c71;
	wire s72,c72;
	wire s73,c73;
	wire s74,c74;
	wire s75,c75;
	wire s76,c76;
	wire s77,c77;
	wire s78,c78;
	wire s79,c79;
	wire s80,c80;
	wire s81,c81;
	wire s82,c82;
	wire s83,c83;
	wire s84,c84;
	wire s85,c85;
	wire s86,c86;
	wire s87,c87;
	wire s88,c88;
	wire s89,c89;
	wire s90,c90;
	wire s91,c91;
	wire s92,c92;
	wire s93,c93;
	wire s94,c94;
	wire s95,c95;
	wire s96,c96;
	wire s97,c97;
	wire s98,c98;
	wire s99,c99;
	wire s100,c100;
	wire s101,c101;
	wire s102,c102;
	wire s103,c103;
	wire s104,c104;
	wire s105,c105;
	wire s106,c106;
	wire s107,c107;
	wire s108,c108;
	wire s109,c109;
	wire s110,c110;
	wire s111,c111;
	wire s112,c112;
	wire s113,c113;
	wire s114,c114;
	wire s115,c115;
	wire s116,c116;
	wire s117,c117;
	wire s118,c118;
	wire s119,c119;
	wire s120,c120;
	wire s121,c121;
	wire s122,c122;
	wire s123,c123;
	wire s124,c124;
	wire s125,c125;
	wire s126,c126;
	wire s127,c127;
	wire s128,c128;
	wire s129,c129;
	wire s130,c130;
	wire s131,c131;
	wire s132,c132;
	wire s133,c133;
	wire s134,c134;
	wire s135,c135;
	wire s136,c136;
	wire s137,c137;
	wire s138,c138;
	wire s139,c139;
	wire s140,c140;
	wire s141,c141;
	wire s142,c142;
	wire s143,c143;
	wire s144,c144;
	wire s145,c145;
	wire s146,c146;
	wire s147,c147;
	wire s148,c148;
	wire s149,c149;
	wire s150,c150;
	wire s151,c151;
	wire s152,c152;
	wire s153,c153;
	wire s154,c154;
	wire s155,c155;
	wire s156,c156;
	wire s157,c157;
	wire s158,c158;
	wire s159,c159;
	wire s160,c160;
	wire s161,c161;
	wire s162,c162;
	wire s163,c163;
	wire s164,c164;
	wire s165,c165;
	wire s166,c166;
	wire s167,c167;
	wire s168,c168;
	wire s169,c169;
	wire s170,c170;
	wire s171,c171;
	wire s172,c172;
	wire s173,c173;
	wire s174,c174;
	wire s175,c175;
	wire s176,c176;
	wire s177,c177;
	wire s178,c178;
	wire s179,c179;
	wire s180,c180;
	wire s181,c181;
	wire s182,c182;
	wire s183,c183;
	wire s184,c184;
	wire s185,c185;
	wire s186,c186;
	wire s187,c187;
	wire s188,c188;
	wire s189,c189;
	wire s190,c190;
	wire s191,c191;
	wire s192,c192;
	wire s193,c193;
	wire s194,c194;
	wire s195,c195;
	wire s196,c196;
	wire s197,c197;
	wire s198,c198;
	wire s199,c199;
	wire s200,c200;
	wire s201,c201;
	wire s202,c202;
	wire s203,c203;

	AndGate uut0(A[0], B[0], P_0_0);
	AndGate uut1(A[1], B[0], P_0_1);
	AndGate uut2(A[2], B[0], P_0_2);
	AndGate uut3(A[3], B[0], P_0_3);
	AndGate uut4(A[4], B[0], P_0_4);
	AndGate uut5(A[5], B[0], P_0_5);
	AndGate uut6(A[6], B[0], P_0_6);
	AndGate uut7(A[7], B[0], P_0_7);
	AndGate uut8(A[8], B[0], P_0_8);
	AndGate uut9(A[9], B[0], P_0_9);
	AndGate uut10(A[10], B[0], P_0_10);
	AndGate uut11(A[11], B[0], P_0_11);
	AndGate uut12(A[12], B[0], P_0_12);
	AndGate uut13(A[13], B[0], P_0_13);
	AndGate uut14(A[14], B[0], P_0_14);
	NandGate uut15(A[15], B[0], P_0_15);
	AndGate uut16(A[0], B[1], P_1_0);
	AndGate uut17(A[1], B[1], P_1_1);
	AndGate uut18(A[2], B[1], P_1_2);
	AndGate uut19(A[3], B[1], P_1_3);
	AndGate uut20(A[4], B[1], P_1_4);
	AndGate uut21(A[5], B[1], P_1_5);
	AndGate uut22(A[6], B[1], P_1_6);
	AndGate uut23(A[7], B[1], P_1_7);
	AndGate uut24(A[8], B[1], P_1_8);
	AndGate uut25(A[9], B[1], P_1_9);
	AndGate uut26(A[10], B[1], P_1_10);
	AndGate uut27(A[11], B[1], P_1_11);
	AndGate uut28(A[12], B[1], P_1_12);
	AndGate uut29(A[13], B[1], P_1_13);
	AndGate uut30(A[14], B[1], P_1_14);
	NandGate uut31(A[15], B[1], P_1_15);
	AndGate uut32(A[0], B[2], P_2_0);
	AndGate uut33(A[1], B[2], P_2_1);
	AndGate uut34(A[2], B[2], P_2_2);
	AndGate uut35(A[3], B[2], P_2_3);
	AndGate uut36(A[4], B[2], P_2_4);
	AndGate uut37(A[5], B[2], P_2_5);
	AndGate uut38(A[6], B[2], P_2_6);
	AndGate uut39(A[7], B[2], P_2_7);
	AndGate uut40(A[8], B[2], P_2_8);
	AndGate uut41(A[9], B[2], P_2_9);
	AndGate uut42(A[10], B[2], P_2_10);
	AndGate uut43(A[11], B[2], P_2_11);
	AndGate uut44(A[12], B[2], P_2_12);
	AndGate uut45(A[13], B[2], P_2_13);
	AndGate uut46(A[14], B[2], P_2_14);
	NandGate uut47(A[15], B[2], P_2_15);
	AndGate uut48(A[0], B[3], P_3_0);
	AndGate uut49(A[1], B[3], P_3_1);
	AndGate uut50(A[2], B[3], P_3_2);
	AndGate uut51(A[3], B[3], P_3_3);
	AndGate uut52(A[4], B[3], P_3_4);
	AndGate uut53(A[5], B[3], P_3_5);
	AndGate uut54(A[6], B[3], P_3_6);
	AndGate uut55(A[7], B[3], P_3_7);
	AndGate uut56(A[8], B[3], P_3_8);
	AndGate uut57(A[9], B[3], P_3_9);
	AndGate uut58(A[10], B[3], P_3_10);
	AndGate uut59(A[11], B[3], P_3_11);
	AndGate uut60(A[12], B[3], P_3_12);
	AndGate uut61(A[13], B[3], P_3_13);
	AndGate uut62(A[14], B[3], P_3_14);
	NandGate uut63(A[15], B[3], P_3_15);
	AndGate uut64(A[0], B[4], P_4_0);
	AndGate uut65(A[1], B[4], P_4_1);
	AndGate uut66(A[2], B[4], P_4_2);
	AndGate uut67(A[3], B[4], P_4_3);
	AndGate uut68(A[4], B[4], P_4_4);
	AndGate uut69(A[5], B[4], P_4_5);
	AndGate uut70(A[6], B[4], P_4_6);
	AndGate uut71(A[7], B[4], P_4_7);
	AndGate uut72(A[8], B[4], P_4_8);
	AndGate uut73(A[9], B[4], P_4_9);
	AndGate uut74(A[10], B[4], P_4_10);
	AndGate uut75(A[11], B[4], P_4_11);
	AndGate uut76(A[12], B[4], P_4_12);
	AndGate uut77(A[13], B[4], P_4_13);
	AndGate uut78(A[14], B[4], P_4_14);
	NandGate uut79(A[15], B[4], P_4_15);
	AndGate uut80(A[0], B[5], P_5_0);
	AndGate uut81(A[1], B[5], P_5_1);
	AndGate uut82(A[2], B[5], P_5_2);
	AndGate uut83(A[3], B[5], P_5_3);
	AndGate uut84(A[4], B[5], P_5_4);
	AndGate uut85(A[5], B[5], P_5_5);
	AndGate uut86(A[6], B[5], P_5_6);
	AndGate uut87(A[7], B[5], P_5_7);
	AndGate uut88(A[8], B[5], P_5_8);
	AndGate uut89(A[9], B[5], P_5_9);
	AndGate uut90(A[10], B[5], P_5_10);
	AndGate uut91(A[11], B[5], P_5_11);
	AndGate uut92(A[12], B[5], P_5_12);
	AndGate uut93(A[13], B[5], P_5_13);
	AndGate uut94(A[14], B[5], P_5_14);
	NandGate uut95(A[15], B[5], P_5_15);
	AndGate uut96(A[0], B[6], P_6_0);
	AndGate uut97(A[1], B[6], P_6_1);
	AndGate uut98(A[2], B[6], P_6_2);
	AndGate uut99(A[3], B[6], P_6_3);
	AndGate uut100(A[4], B[6], P_6_4);
	AndGate uut101(A[5], B[6], P_6_5);
	AndGate uut102(A[6], B[6], P_6_6);
	AndGate uut103(A[7], B[6], P_6_7);
	AndGate uut104(A[8], B[6], P_6_8);
	AndGate uut105(A[9], B[6], P_6_9);
	AndGate uut106(A[10], B[6], P_6_10);
	AndGate uut107(A[11], B[6], P_6_11);
	AndGate uut108(A[12], B[6], P_6_12);
	AndGate uut109(A[13], B[6], P_6_13);
	AndGate uut110(A[14], B[6], P_6_14);
	NandGate uut111(A[15], B[6], P_6_15);
	AndGate uut112(A[0], B[7], P_7_0);
	AndGate uut113(A[1], B[7], P_7_1);
	AndGate uut114(A[2], B[7], P_7_2);
	AndGate uut115(A[3], B[7], P_7_3);
	AndGate uut116(A[4], B[7], P_7_4);
	AndGate uut117(A[5], B[7], P_7_5);
	AndGate uut118(A[6], B[7], P_7_6);
	AndGate uut119(A[7], B[7], P_7_7);
	AndGate uut120(A[8], B[7], P_7_8);
	AndGate uut121(A[9], B[7], P_7_9);
	AndGate uut122(A[10], B[7], P_7_10);
	AndGate uut123(A[11], B[7], P_7_11);
	AndGate uut124(A[12], B[7], P_7_12);
	AndGate uut125(A[13], B[7], P_7_13);
	AndGate uut126(A[14], B[7], P_7_14);
	NandGate uut127(A[15], B[7], P_7_15);
	AndGate uut128(A[0], B[8], P_8_0);
	AndGate uut129(A[1], B[8], P_8_1);
	AndGate uut130(A[2], B[8], P_8_2);
	AndGate uut131(A[3], B[8], P_8_3);
	AndGate uut132(A[4], B[8], P_8_4);
	AndGate uut133(A[5], B[8], P_8_5);
	AndGate uut134(A[6], B[8], P_8_6);
	AndGate uut135(A[7], B[8], P_8_7);
	AndGate uut136(A[8], B[8], P_8_8);
	AndGate uut137(A[9], B[8], P_8_9);
	AndGate uut138(A[10], B[8], P_8_10);
	AndGate uut139(A[11], B[8], P_8_11);
	AndGate uut140(A[12], B[8], P_8_12);
	AndGate uut141(A[13], B[8], P_8_13);
	AndGate uut142(A[14], B[8], P_8_14);
	NandGate uut143(A[15], B[8], P_8_15);
	AndGate uut144(A[0], B[9], P_9_0);
	AndGate uut145(A[1], B[9], P_9_1);
	AndGate uut146(A[2], B[9], P_9_2);
	AndGate uut147(A[3], B[9], P_9_3);
	AndGate uut148(A[4], B[9], P_9_4);
	AndGate uut149(A[5], B[9], P_9_5);
	AndGate uut150(A[6], B[9], P_9_6);
	AndGate uut151(A[7], B[9], P_9_7);
	AndGate uut152(A[8], B[9], P_9_8);
	AndGate uut153(A[9], B[9], P_9_9);
	AndGate uut154(A[10], B[9], P_9_10);
	AndGate uut155(A[11], B[9], P_9_11);
	AndGate uut156(A[12], B[9], P_9_12);
	AndGate uut157(A[13], B[9], P_9_13);
	AndGate uut158(A[14], B[9], P_9_14);
	NandGate uut159(A[15], B[9], P_9_15);
	AndGate uut160(A[0], B[10], P_10_0);
	AndGate uut161(A[1], B[10], P_10_1);
	AndGate uut162(A[2], B[10], P_10_2);
	AndGate uut163(A[3], B[10], P_10_3);
	AndGate uut164(A[4], B[10], P_10_4);
	AndGate uut165(A[5], B[10], P_10_5);
	AndGate uut166(A[6], B[10], P_10_6);
	AndGate uut167(A[7], B[10], P_10_7);
	AndGate uut168(A[8], B[10], P_10_8);
	AndGate uut169(A[9], B[10], P_10_9);
	AndGate uut170(A[10], B[10], P_10_10);
	AndGate uut171(A[11], B[10], P_10_11);
	AndGate uut172(A[12], B[10], P_10_12);
	AndGate uut173(A[13], B[10], P_10_13);
	AndGate uut174(A[14], B[10], P_10_14);
	NandGate uut175(A[15], B[10], P_10_15);
	assign P_11_0 = P_10_0;
	assign P_11_1 = P_10_1;
	assign P_11_2 = P_10_2;
	assign P_11_3 = P_10_3;
	assign P_11_4 = P_10_4;
	assign P_11_5 = P_10_5;
	assign P_11_6 = P_10_6;
	assign P_11_7 = P_10_7;
	assign P_11_8 = P_10_8;
	assign P_11_9 = P_10_9;
	assign P_11_10 = P_10_10;
	assign P_11_11 = P_10_11;
	assign P_11_12 = P_10_12;
	assign P_11_13 = P_10_13;
	assign P_11_14 = P_10_14;
	assign P_11_15 = P_10_15;
	assign P_12_0 = P_11_0;
	assign P_12_1 = P_11_1;
	assign P_12_2 = P_11_2;
	assign P_12_3 = P_11_3;
	assign P_12_4 = P_11_4;
	assign P_12_5 = P_11_5;
	assign P_12_6 = P_11_6;
	assign P_12_7 = P_11_7;
	assign P_12_8 = P_11_8;
	assign P_12_9 = P_11_9;
	assign P_12_10 = P_11_10;
	assign P_12_11 = P_11_11;
	assign P_12_12 = P_11_12;
	assign P_12_13 = P_11_13;
	assign P_12_14 = P_11_14;
	assign P_13_0 = P_12_0;
	assign P_13_1 = P_12_1;
	assign P_13_2 = P_12_2;
	assign P_13_3 = P_12_3;
	assign P_13_4 = P_12_4;
	assign P_13_5 = P_12_5;
	assign P_13_6 = P_12_6;
	assign P_13_7 = P_12_7;
	assign P_13_8 = P_12_8;
	assign P_13_9 = P_12_9;
	assign P_13_10 = P_12_10;
	assign P_13_11 = P_12_11;
	assign P_13_12 = P_12_12;
	assign P_13_13 = P_12_13;
	assign P_14_0 = P_13_0;
	assign P_14_1 = P_13_1;
	assign P_14_2 = P_13_2;
	assign P_14_3 = P_13_3;
	assign P_14_4 = P_13_4;
	assign P_14_5 = P_13_5;
	assign P_14_6 = P_13_6;
	assign P_14_7 = P_13_7;
	assign P_14_8 = P_13_8;
	assign P_14_9 = P_13_9;
	assign P_14_10 = P_13_10;
	assign P_14_11 = P_13_11;
	assign P_14_12 = P_13_12;
	NandGate uut176(A[0], B[10], P_15_0);
	NandGate uut177(A[1], B[10], P_15_1);
	NandGate uut178(A[2], B[10], P_15_2);
	NandGate uut179(A[3], B[10], P_15_3);
	NandGate uut180(A[4], B[10], P_15_4);
	NandGate uut181(A[5], B[10], P_15_5);
	NandGate uut182(A[6], B[10], P_15_6);
	NandGate uut183(A[7], B[10], P_15_7);
	NandGate uut184(A[8], B[10], P_15_8);
	NandGate uut185(A[9], B[10], P_15_9);
	NandGate uut186(A[10], B[10], P_15_10);
	NandGate uut187(A[11], B[10], P_15_11);
	HalfAdder uut188(P_0_9,P_1_8,s0,c0);
	FullAdder uut189(P_0_10,P_1_9,P_2_8,s1,c1);
	HalfAdder uut190(P_3_7,P_4_6,s2,c2);
	FullAdder uut191(P_0_11,P_1_10,P_2_9,s3,c3);
	FullAdder uut192(P_3_8,P_4_7,P_5_6,s4,c4);
	HalfAdder uut193(P_6_5,P_7_4,s5,c5);
	FullAdder uut194(P_0_12,P_1_11,P_2_10,s6,c6);
	FullAdder uut195(P_3_9,P_4_8,P_5_7,s7,c7);
	FullAdder uut196(P_6_6,P_7_5,P_8_4,s8,c8);
	HalfAdder uut197(P_9_3,P_10_2,s9,c9);
	FullAdder uut198(P_0_13,P_1_12,P_2_11,s10,c10);
	FullAdder uut199(P_3_10,P_4_9,P_5_8,s11,c11);
	FullAdder uut200(P_6_7,P_7_6,P_8_5,s12,c12);
	FullAdder uut201(P_9_4,P_10_3,P_11_2,s13,c13);
	HalfAdder uut202(P_12_1,P_13_0,s14,c14);
	FullAdder uut203(P_0_14,P_1_13,P_2_12,s15,c15);
	FullAdder uut204(P_3_11,P_4_10,P_5_9,s16,c16);
	FullAdder uut205(P_6_8,P_7_7,P_8_6,s17,c17);
	FullAdder uut206(P_9_5,P_10_4,P_11_3,s18,c18);
	FullAdder uut207(P_12_2,P_13_1,P_14_0,s19,c19);
	HalfAdder uut208(c10,c11,s20,c20);
	FullAdder uut209(P_0_15,P_1_14,P_2_13,s21,c21);
	FullAdder uut210(P_3_12,P_4_11,P_5_10,s22,c22);
	FullAdder uut211(P_6_9,P_7_8,P_8_7,s23,c23);
	FullAdder uut212(P_9_6,P_10_5,P_11_4,s24,c24);
	FullAdder uut213(P_12_3,P_13_2,P_14_1,s25,c25);
	FullAdder uut214(P_15_0,c15,c16,s26,c26);
	HalfAdder uut215(c17,c18,s27,c27);
	FullAdder uut216(1'b1,P_1_15,P_2_14,s28,c28);
	FullAdder uut217(P_3_13,P_4_12,P_5_11,s29,c29);
	FullAdder uut218(P_6_10,P_7_9,P_8_8,s30,c30);
	FullAdder uut219(P_9_7,P_10_6,P_11_5,s31,c31);
	FullAdder uut220(P_12_4,P_13_3,P_14_2,s32,c32);
	FullAdder uut221(P_15_1,c21,c22,s33,c33);
	FullAdder uut222(c23,c24,c25,s34,c34);
	FullAdder uut223(P_2_15,P_3_14,P_4_13,s35,c35);
	FullAdder uut224(P_5_12,P_6_11,P_7_10,s36,c36);
	FullAdder uut225(P_8_9,P_9_8,P_10_7,s37,c37);
	FullAdder uut226(P_11_6,P_12_5,P_13_4,s38,c38);
	FullAdder uut227(P_14_3,P_15_2,c28,s39,c39);
	FullAdder uut228(c29,c30,c31,s40,c40);
	FullAdder uut229(P_3_15,P_4_14,P_5_13,s41,c41);
	FullAdder uut230(P_6_12,P_7_11,P_8_10,s42,c42);
	FullAdder uut231(P_9_9,P_10_8,P_11_7,s43,c43);
	FullAdder uut232(P_12_6,P_13_5,P_14_4,s44,c44);
	FullAdder uut233(P_15_3,c35,c36,s45,c45);
	FullAdder uut234(P_4_15,P_5_14,P_6_13,s46,c46);
	FullAdder uut235(P_7_12,P_8_11,P_9_10,s47,c47);
	FullAdder uut236(P_10_9,P_11_8,P_12_7,s48,c48);
	FullAdder uut237(P_13_6,P_14_5,P_15_4,s49,c49);
	FullAdder uut238(P_5_15,P_6_14,P_7_13,s50,c50);
	FullAdder uut239(P_8_12,P_9_11,P_10_10,s51,c51);
	FullAdder uut240(P_11_9,P_12_8,P_13_7,s52,c52);
	FullAdder uut241(P_6_15,P_7_14,P_8_13,s53,c53);
	FullAdder uut242(P_9_12,P_10_11,P_11_10,s54,c54);
	FullAdder uut243(P_7_15,P_8_14,P_9_13,s55,c55);

	HalfAdder uut244(P_0_6,P_1_5,s56,c56);
	FullAdder uut245(P_0_7,P_1_6,P_2_5,s57,c57);
	HalfAdder uut246(P_3_4,P_4_3,s58,c58);
	FullAdder uut247(P_0_8,P_1_7,P_2_6,s59,c59);
	FullAdder uut248(P_3_5,P_4_4,P_5_3,s60,c60);
	HalfAdder uut249(P_6_2,P_7_1,s61,c61);
	FullAdder uut250(P_2_7,P_3_6,P_4_5,s62,c62);
	FullAdder uut251(P_5_4,P_6_3,P_7_2,s63,c63);
	FullAdder uut252(P_8_1,P_9_0,s0,s64,c64);
	FullAdder uut253(P_5_5,P_6_4,P_7_3,s65,c65);
	FullAdder uut254(P_8_2,P_9_1,P_10_0,s66,c66);
	FullAdder uut255(c0,s1,s2,s67,c67);
	FullAdder uut256(P_8_3,P_9_2,P_10_1,s68,c68);
	FullAdder uut257(P_11_0,c1,c2,s69,c69);
	FullAdder uut258(s3,s4,s5,s70,c70);
	FullAdder uut259(P_11_1,P_12_0,c3,s71,c71);
	FullAdder uut260(c4,c5,s6,s72,c72);
	FullAdder uut261(s7,s8,s9,s73,c73);
	FullAdder uut262(c6,c7,c8,s74,c74);
	FullAdder uut263(c9,s10,s11,s75,c75);
	FullAdder uut264(s12,s13,s14,s76,c76);
	FullAdder uut265(c12,c13,c14,s77,c77);
	FullAdder uut266(s15,s16,s17,s78,c78);
	FullAdder uut267(s18,s19,s20,s79,c79);
	FullAdder uut268(c19,c20,s21,s80,c80);
	FullAdder uut269(s22,s23,s24,s81,c81);
	FullAdder uut270(s25,s26,s27,s82,c82);
	FullAdder uut271(c26,c27,s28,s83,c83);
	FullAdder uut272(s29,s30,s31,s84,c84);
	FullAdder uut273(s32,s33,s34,s85,c85);
	FullAdder uut274(c32,c33,c34,s86,c86);
	FullAdder uut275(s35,s36,s37,s87,c87);
	FullAdder uut276(s38,s39,s40,s88,c88);
	FullAdder uut277(c37,c38,c39,s89,c89);
	FullAdder uut278(c40,s41,s42,s90,c90);
	FullAdder uut279(s43,s44,s45,s91,c91);
	FullAdder uut280(c41,c42,c43,s92,c92);
	FullAdder uut281(c44,c45,s46,s93,c93);
	FullAdder uut282(s47,s48,s49,s94,c94);
	FullAdder uut283(P_14_6,P_15_5,c46,s95,c95);
	FullAdder uut284(c47,c48,c49,s96,c96);
	FullAdder uut285(s50,s51,s52,s97,c97);
	FullAdder uut286(P_12_9,P_13_8,P_14_7,s98,c98);
	FullAdder uut287(P_15_6,c50,c51,s99,c99);
	FullAdder uut288(c52,s53,s54,s100,c100);
	FullAdder uut289(P_10_12,P_11_11,P_12_10,s101,c101);
	FullAdder uut290(P_13_9,P_14_8,P_15_7,s102,c102);
	FullAdder uut291(c53,c54,s55,s103,c103);
	FullAdder uut292(P_8_15,P_9_14,P_10_13,s104,c104);
	FullAdder uut293(P_11_12,P_12_11,P_13_10,s105,c105);
	FullAdder uut294(P_14_9,P_15_8,c55,s106,c106);
	FullAdder uut295(P_9_15,P_10_14,P_11_13,s107,c107);
	FullAdder uut296(P_12_12,P_13_11,P_14_10,s108,c108);
	FullAdder uut297(P_10_15,P_11_14,P_12_13,s109,c109);

	HalfAdder uut298(P_0_4,P_1_3,s110,c110);
	FullAdder uut299(P_0_5,P_1_4,P_2_3,s111,c111);
	HalfAdder uut300(P_3_2,P_4_1,s112,c112);
	FullAdder uut301(P_2_4,P_3_3,P_4_2,s113,c113);
	FullAdder uut302(P_5_1,P_6_0,s56,s114,c114);
	FullAdder uut303(P_5_2,P_6_1,P_7_0,s115,c115);
	FullAdder uut304(c56,s57,s58,s116,c116);
	FullAdder uut305(P_8_0,c57,c58,s117,c117);
	FullAdder uut306(s59,s60,s61,s118,c118);
	FullAdder uut307(c59,c60,c61,s119,c119);
	FullAdder uut308(s62,s63,s64,s120,c120);
	FullAdder uut309(c62,c63,c64,s121,c121);
	FullAdder uut310(s65,s66,s67,s122,c122);
	FullAdder uut311(c65,c66,c67,s123,c123);
	FullAdder uut312(s68,s69,s70,s124,c124);
	FullAdder uut313(c68,c69,c70,s125,c125);
	FullAdder uut314(s71,s72,s73,s126,c126);
	FullAdder uut315(c71,c72,c73,s127,c127);
	FullAdder uut316(s74,s75,s76,s128,c128);
	FullAdder uut317(c74,c75,c76,s129,c129);
	FullAdder uut318(s77,s78,s79,s130,c130);
	FullAdder uut319(c77,c78,c79,s131,c131);
	FullAdder uut320(s80,s81,s82,s132,c132);
	FullAdder uut321(c80,c81,c82,s133,c133);
	FullAdder uut322(s83,s84,s85,s134,c134);
	FullAdder uut323(c83,c84,c85,s135,c135);
	FullAdder uut324(s86,s87,s88,s136,c136);
	FullAdder uut325(c86,c87,c88,s137,c137);
	FullAdder uut326(s89,s90,s91,s138,c138);
	FullAdder uut327(c89,c90,c91,s139,c139);
	FullAdder uut328(s92,s93,s94,s140,c140);
	FullAdder uut329(c92,c93,c94,s141,c141);
	FullAdder uut330(s95,s96,s97,s142,c142);
	FullAdder uut331(c95,c96,c97,s143,c143);
	FullAdder uut332(s98,s99,s100,s144,c144);
	FullAdder uut333(c98,c99,c100,s145,c145);
	FullAdder uut334(s101,s102,s103,s146,c146);
	FullAdder uut335(c101,c102,c103,s147,c147);
	FullAdder uut336(s104,s105,s106,s148,c148);
	FullAdder uut337(P_15_9,c104,c105,s149,c149);
	FullAdder uut338(c106,s107,s108,s150,c150);
	FullAdder uut339(P_13_12,P_14_11,P_15_10,s151,c151);
	FullAdder uut340(c107,c108,s109,s152,c152);
	FullAdder uut341(P_11_15,P_12_14,P_13_13,s153,c153);
	FullAdder uut342(P_14_12,P_15_11,c109,s154,c154);

	HalfAdder uut343(P_0_3,P_1_2,s155,c155);
	FullAdder uut344(P_2_2,P_3_1,P_4_0,s156,c156);
	FullAdder uut345(P_5_0,c110,s111,s157,c157);
	FullAdder uut346(c111,c112,s113,s158,c158);
	FullAdder uut347(c113,c114,s115,s159,c159);
	FullAdder uut348(c115,c116,s117,s160,c160);
	FullAdder uut349(c117,c118,s119,s161,c161);
	FullAdder uut350(c119,c120,s121,s162,c162);
	FullAdder uut351(c121,c122,s123,s163,c163);
	FullAdder uut352(c123,c124,s125,s164,c164);
	FullAdder uut353(c125,c126,s127,s165,c165);
	FullAdder uut354(c127,c128,s129,s166,c166);
	FullAdder uut355(c129,c130,s131,s167,c167);
	FullAdder uut356(c131,c132,s133,s168,c168);
	FullAdder uut357(c133,c134,s135,s169,c169);
	FullAdder uut358(c135,c136,s137,s170,c170);
	FullAdder uut359(c137,c138,s139,s171,c171);
	FullAdder uut360(c139,c140,s141,s172,c172);
	FullAdder uut361(c141,c142,s143,s173,c173);
	FullAdder uut362(c143,c144,s145,s174,c174);
	FullAdder uut363(c145,c146,s147,s175,c175);
	FullAdder uut364(c147,c148,s149,s176,c176);
	FullAdder uut365(c149,c150,s151,s177,c177);
	FullAdder uut366(c151,c152,s153,s178,c178);

	HalfAdder uut367(P_0_2,P_1_1,s179,c179);
	FullAdder uut368(P_2_1,P_3_0,s155,s180,c180);
	FullAdder uut369(s110,c155,s156,s181,c181);
	FullAdder uut370(s112,c156,s157,s182,c182);
	FullAdder uut371(s114,c157,s158,s183,c183);
	FullAdder uut372(s116,c158,s159,s184,c184);
	FullAdder uut373(s118,c159,s160,s185,c185);
	FullAdder uut374(s120,c160,s161,s186,c186);
	FullAdder uut375(s122,c161,s162,s187,c187);
	FullAdder uut376(s124,c162,s163,s188,c188);
	FullAdder uut377(s126,c163,s164,s189,c189);
	FullAdder uut378(s128,c164,s165,s190,c190);
	FullAdder uut379(s130,c165,s166,s191,c191);
	FullAdder uut380(s132,c166,s167,s192,c192);
	FullAdder uut381(s134,c167,s168,s193,c193);
	FullAdder uut382(s136,c168,s169,s194,c194);
	FullAdder uut383(s138,c169,s170,s195,c195);
	FullAdder uut384(s140,c170,s171,s196,c196);
	FullAdder uut385(s142,c171,s172,s197,c197);
	FullAdder uut386(s144,c172,s173,s198,c198);
	FullAdder uut387(s146,c173,s174,s199,c199);
	FullAdder uut388(s148,c174,s175,s200,c200);
	FullAdder uut389(s150,c175,s176,s201,c201);
	FullAdder uut390(s152,c176,s177,s202,c202);
	FullAdder uut391(s154,c177,s178,s203,c203);

	wire [25:0] operandA;
	assign operandA = {c202,c201,c200,c199,c198,c197,c196,c195,c194,c193,c192,c191,c190,c189,c188,c187,c186,c185,c184,c183,c182,c181,c180,c179,P_2_0,P_0_1};
	wire [25:0] operandB;
	assign operandB = {s203,s202,s201,s200,s199,s198,s197,s196,s195,s194,s193,s192,s191,s190,s189,s188,s187,s186,s185,s184,s183,s182,s181,s180,s179,P_1_0};
	wire [26:0] Sum;
	unsignedBrentKungAdder26bit uut392(operandA,operandB,Sum);
	assign Product[0] = P_0_0;
	assign Product[1] = Sum[0];
	assign Product[2] = Sum[1];
	assign Product[3] = Sum[2];
	assign Product[4] = Sum[3];
	assign Product[5] = Sum[4];
	assign Product[6] = Sum[5];
	assign Product[7] = Sum[6];
	assign Product[8] = Sum[7];
	assign Product[9] = Sum[8];
	assign Product[10] = Sum[9];
	assign Product[11] = Sum[10];
	assign Product[12] = Sum[11];
	assign Product[13] = Sum[12];
	assign Product[14] = Sum[13];
	assign Product[15] = Sum[14];
	assign Product[16] = Sum[15];
	assign Product[17] = Sum[16];
	assign Product[18] = Sum[17];
	assign Product[19] = Sum[18];
	assign Product[20] = Sum[19];
	assign Product[21] = Sum[20];
	assign Product[22] = Sum[21];
	assign Product[23] = Sum[22];
	assign Product[24] = Sum[23];
	assign Product[25] = Sum[24];
	assign Product[26] = Sum[25];
endmodule
module unsignedBrentKungAdder26bit(input [25:0]A, input [25:0]B, output [26:0]Sum);
    

	wire carry0;
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
	wire carry5;
	wire carry6;
	wire carry7;
	wire carry8;
	wire carry9;
	wire carry10;
	wire carry11;
	wire carry12;
	wire carry13;
	wire carry14;
	wire carry15;
	wire carry16;
	wire carry17;
	wire carry18;
	wire carry19;
	wire carry20;
	wire carry21;
	wire carry22;
	wire carry23;
	wire carry24;
	wire carry25;
	wire carry26;
	wire P00; wire G00;
	wire P01; wire G01;
	wire P02; wire G02;
	wire P03; wire G03;
	wire P04; wire G04;
	wire P05; wire G05;
	wire P06; wire G06;
	wire P07; wire G07;
	wire P08; wire G08;
	wire P09; wire G09;
	wire P010; wire G010;
	wire P011; wire G011;
	wire P012; wire G012;
	wire P013; wire G013;
	wire P014; wire G014;
	wire P015; wire G015;
	wire P016; wire G016;
	wire P017; wire G017;
	wire P018; wire G018;
	wire P019; wire G019;
	wire P020; wire G020;
	wire P021; wire G021;
	wire P022; wire G022;
	wire P023; wire G023;
	wire P024; wire G024;
	wire P025; wire G025;
	wire P10; wire G10;
	wire P11; wire G11;
	wire P12; wire G12;
	wire P13; wire G13;
	wire P14; wire G14;
	wire P15; wire G15;
	wire P16; wire G16;
	wire P17; wire G17;
	wire P18; wire G18;
	wire P19; wire G19;
	wire P110; wire G110;
	wire P111; wire G111;
	wire P112; wire G112;
	wire P113; wire G113;
	wire P114; wire G114;
	wire P115; wire G115;
	wire P116; wire G116;
	wire P117; wire G117;
	wire P118; wire G118;
	wire P119; wire G119;
	wire P120; wire G120;
	wire P121; wire G121;
	wire P122; wire G122;
	wire P123; wire G123;
	wire P124; wire G124;
	wire P125; wire G125;
	wire P20; wire G20;
	wire P21; wire G21;
	wire P22; wire G22;
	wire P23; wire G23;
	wire P24; wire G24;
	wire P25; wire G25;
	wire P26; wire G26;
	wire P27; wire G27;
	wire P28; wire G28;
	wire P29; wire G29;
	wire P210; wire G210;
	wire P211; wire G211;
	wire P212; wire G212;
	wire P213; wire G213;
	wire P214; wire G214;
	wire P215; wire G215;
	wire P216; wire G216;
	wire P217; wire G217;
	wire P218; wire G218;
	wire P219; wire G219;
	wire P220; wire G220;
	wire P221; wire G221;
	wire P222; wire G222;
	wire P223; wire G223;
	wire P224; wire G224;
	wire P225; wire G225;
	wire P30; wire G30;
	wire P31; wire G31;
	wire P32; wire G32;
	wire P33; wire G33;
	wire P34; wire G34;
	wire P35; wire G35;
	wire P36; wire G36;
	wire P37; wire G37;
	wire P38; wire G38;
	wire P39; wire G39;
	wire P310; wire G310;
	wire P311; wire G311;
	wire P312; wire G312;
	wire P313; wire G313;
	wire P314; wire G314;
	wire P315; wire G315;
	wire P316; wire G316;
	wire P317; wire G317;
	wire P318; wire G318;
	wire P319; wire G319;
	wire P320; wire G320;
	wire P321; wire G321;
	wire P322; wire G322;
	wire P323; wire G323;
	wire P324; wire G324;
	wire P325; wire G325;
	wire P40; wire G40;
	wire P41; wire G41;
	wire P42; wire G42;
	wire P43; wire G43;
	wire P44; wire G44;
	wire P45; wire G45;
	wire P46; wire G46;
	wire P47; wire G47;
	wire P48; wire G48;
	wire P49; wire G49;
	wire P410; wire G410;
	wire P411; wire G411;
	wire P412; wire G412;
	wire P413; wire G413;
	wire P414; wire G414;
	wire P415; wire G415;
	wire P416; wire G416;
	wire P417; wire G417;
	wire P418; wire G418;
	wire P419; wire G419;
	wire P420; wire G420;
	wire P421; wire G421;
	wire P422; wire G422;
	wire P423; wire G423;
	wire P424; wire G424;
	wire P425; wire G425;
	wire P50; wire G50;
	wire P51; wire G51;
	wire P52; wire G52;
	wire P53; wire G53;
	wire P54; wire G54;
	wire P55; wire G55;
	wire P56; wire G56;
	wire P57; wire G57;
	wire P58; wire G58;
	wire P59; wire G59;
	wire P510; wire G510;
	wire P511; wire G511;
	wire P512; wire G512;
	wire P513; wire G513;
	wire P514; wire G514;
	wire P515; wire G515;
	wire P516; wire G516;
	wire P517; wire G517;
	wire P518; wire G518;
	wire P519; wire G519;
	wire P520; wire G520;
	wire P521; wire G521;
	wire P522; wire G522;
	wire P523; wire G523;
	wire P524; wire G524;
	wire P525; wire G525;
	BitwisePG uut0(A[0], B[0], P00, G00);
	BitwisePG uut1(A[1], B[1], P01, G01);
	BitwisePG uut2(A[2], B[2], P02, G02);
	BitwisePG uut3(A[3], B[3], P03, G03);
	BitwisePG uut4(A[4], B[4], P04, G04);
	BitwisePG uut5(A[5], B[5], P05, G05);
	BitwisePG uut6(A[6], B[6], P06, G06);
	BitwisePG uut7(A[7], B[7], P07, G07);
	BitwisePG uut8(A[8], B[8], P08, G08);
	BitwisePG uut9(A[9], B[9], P09, G09);
	BitwisePG uut10(A[10], B[10], P010, G010);
	BitwisePG uut11(A[11], B[11], P011, G011);
	BitwisePG uut12(A[12], B[12], P012, G012);
	BitwisePG uut13(A[13], B[13], P013, G013);
	BitwisePG uut14(A[14], B[14], P014, G014);
	BitwisePG uut15(A[15], B[15], P015, G015);
	BitwisePG uut16(A[16], B[16], P016, G016);
	BitwisePG uut17(A[17], B[17], P017, G017);
	BitwisePG uut18(A[18], B[18], P018, G018);
	BitwisePG uut19(A[19], B[19], P019, G019);
	BitwisePG uut20(A[20], B[20], P020, G020);
	BitwisePG uut21(A[21], B[21], P021, G021);
	BitwisePG uut22(A[22], B[22], P022, G022);
	BitwisePG uut23(A[23], B[23], P023, G023);
	BitwisePG uut24(A[24], B[24], P024, G024);
	BitwisePG uut25(A[25], B[25], P025, G025);

	//first processing stage

	assign P10 = P00;
	assign G10 = G00;

	GrayCell uut26(P01,G01,G00, P11, G11);

	assign P12 = P02;
	assign G12 = G02;

	BlackCell uut27(P03,G03, G02,P02,P13,G13);

	assign P14 = P04;
	assign G14 = G04;

	BlackCell uut28(P05,G05, G04,P04,P15,G15);

	assign P16 = P06;
	assign G16 = G06;

	BlackCell uut29(P07,G07, G06,P06,P17,G17);

	assign P18 = P08;
	assign G18 = G08;

	BlackCell uut30(P09,G09, G08,P08,P19,G19);

	assign P110 = P010;
	assign G110 = G010;

	BlackCell uut31(P011,G011, G010,P010,P111,G111);

	assign P112 = P012;
	assign G112 = G012;

	BlackCell uut32(P013,G013, G012,P012,P113,G113);

	assign P114 = P014;
	assign G114 = G014;

	BlackCell uut33(P015,G015, G014,P014,P115,G115);

	assign P116 = P016;
	assign G116 = G016;

	BlackCell uut34(P017,G017, G016,P016,P117,G117);

	assign P118 = P018;
	assign G118 = G018;

	BlackCell uut35(P019,G019, G018,P018,P119,G119);

	assign P120 = P020;
	assign G120 = G020;

	BlackCell uut36(P021,G021, G020,P020,P121,G121);

	assign P122 = P022;
	assign G122 = G022;

	BlackCell uut37(P023,G023, G022,P022,P123,G123);

	assign P124 = P024;
	assign G124 = G024;

	BlackCell uut38(P025,G025, G024,P024,P125,G125);

	assign P20 = P10;
	assign G20 = G10;

	assign P21 = P11;
	assign G21 = G11;

	assign P22 = P12;
	assign G22 = G12;

	GrayCell uut39(P13,G13,G11, P23, G23);

	assign P24 = P14;
	assign G24 = G14;

	assign P25 = P15;
	assign G25 = G15;

	assign P26 = P16;
	assign G26 = G16;

	BlackCell uut40(P17,G17, G15,P15,P27,G27);

	assign P28 = P18;
	assign G28 = G18;

	assign P29 = P19;
	assign G29 = G19;

	assign P210 = P110;
	assign G210 = G110;

	BlackCell uut41(P111,G111, G19,P19,P211,G211);

	assign P212 = P112;
	assign G212 = G112;

	assign P213 = P113;
	assign G213 = G113;

	assign P214 = P114;
	assign G214 = G114;

	BlackCell uut42(P115,G115, G113,P113,P215,G215);

	assign P216 = P116;
	assign G216 = G116;

	assign P217 = P117;
	assign G217 = G117;

	assign P218 = P118;
	assign G218 = G118;

	BlackCell uut43(P119,G119, G117,P117,P219,G219);

	assign P220 = P120;
	assign G220 = G120;

	assign P221 = P121;
	assign G221 = G121;

	assign P222 = P122;
	assign G222 = G122;

	BlackCell uut44(P123,G123, G121,P121,P223,G223);

	assign P224 = P124;
	assign G224 = G124;

	assign P225 = P125;
	assign G225 = G125;

	assign P30 = P20;
	assign G30 = G20;

	assign P31 = P21;
	assign G31 = G21;

	assign P32 = P22;
	assign G32 = G22;

	assign P33 = P23;
	assign G33 = G23;

	assign P34 = P24;
	assign G34 = G24;

	assign P35 = P25;
	assign G35 = G25;

	assign P36 = P26;
	assign G36 = G26;

	GrayCell uut45(P27,G27,G23, P37, G37);

	assign P38 = P28;
	assign G38 = G28;

	assign P39 = P29;
	assign G39 = G29;

	assign P310 = P210;
	assign G310 = G210;

	assign P311 = P211;
	assign G311 = G211;

	assign P312 = P212;
	assign G312 = G212;

	assign P313 = P213;
	assign G313 = G213;

	assign P314 = P214;
	assign G314 = G214;

	BlackCell uut46(P215,G215, G211,P211,P315,G315);

	assign P316 = P216;
	assign G316 = G216;

	assign P317 = P217;
	assign G317 = G217;

	assign P318 = P218;
	assign G318 = G218;

	assign P319 = P219;
	assign G319 = G219;

	assign P320 = P220;
	assign G320 = G220;

	assign P321 = P221;
	assign G321 = G221;

	assign P322 = P222;
	assign G322 = G222;

	BlackCell uut47(P223,G223, G219,P219,P323,G323);

	assign P324 = P224;
	assign G324 = G224;

	assign P325 = P225;
	assign G325 = G225;

	assign P40 = P30;
	assign G40 = G30;

	assign P41 = P31;
	assign G41 = G31;

	assign P42 = P32;
	assign G42 = G32;

	assign P43 = P33;
	assign G43 = G33;

	assign P44 = P34;
	assign G44 = G34;

	assign P45 = P35;
	assign G45 = G35;

	assign P46 = P36;
	assign G46 = G36;

	assign P47 = P37;
	assign G47 = G37;

	assign P48 = P38;
	assign G48 = G38;

	assign P49 = P39;
	assign G49 = G39;

	assign P410 = P310;
	assign G410 = G310;

	assign P411 = P311;
	assign G411 = G311;

	assign P412 = P312;
	assign G412 = G312;

	assign P413 = P313;
	assign G413 = G313;

	assign P414 = P314;
	assign G414 = G314;

	GrayCell uut48(P315,G315,G37, P415, G415);

	assign P416 = P316;
	assign G416 = G316;

	assign P417 = P317;
	assign G417 = G317;

	assign P418 = P318;
	assign G418 = G318;

	assign P419 = P319;
	assign G419 = G319;

	assign P420 = P320;
	assign G420 = G320;

	assign P421 = P321;
	assign G421 = G321;

	assign P422 = P322;
	assign G422 = G322;

	assign P423 = P323;
	assign G423 = G323;

	assign P424 = P324;
	assign G424 = G324;

	assign P425 = P325;
	assign G425 = G325;

	assign P50 = P40;
	assign G50 = G40;

	assign P51 = P41;
	assign G51 = G41;

	assign P52 = P42;
	assign G52 = G42;

	assign P53 = P43;
	assign G53 = G43;

	assign P54 = P44;
	assign G54 = G44;

	assign P55 = P45;
	assign G55 = G45;

	assign P56 = P46;
	assign G56 = G46;

	assign P57 = P47;
	assign G57 = G47;

	assign P58 = P48;
	assign G58 = G48;

	assign P59 = P49;
	assign G59 = G49;

	assign P510 = P410;
	assign G510 = G410;

	assign P511 = P411;
	assign G511 = G411;

	assign P512 = P412;
	assign G512 = G412;

	assign P513 = P413;
	assign G513 = G413;

	assign P514 = P414;
	assign G514 = G414;

	assign P515 = P415;
	assign G515 = G415;

	assign P516 = P416;
	assign G516 = G416;

	assign P517 = P417;
	assign G517 = G417;

	assign P518 = P418;
	assign G518 = G418;

	assign P519 = P419;
	assign G519 = G419;

	assign P520 = P420;
	assign G520 = G420;

	assign P521 = P421;
	assign G521 = G421;

	assign P522 = P422;
	assign G522 = G422;

	assign P523 = P423;
	assign G523 = G423;

	assign P524 = P424;
	assign G524 = G424;

	assign P525 = P425;
	assign G525 = G425;

	//second processing stage

	assign P60 = P50;
	assign G60 = G50;

	assign P61 = P51;
	assign G61 = G51;
	assign P62 = P52;
	assign G62 = G52;
	assign P63 = P53;
	assign G63 = G53;
	assign P64 = P54;
	assign G64 = G54;
	assign P65 = P55;
	assign G65 = G55;
	assign P66 = P56;
	assign G66 = G56;
	assign P67 = P57;
	assign G67 = G57;
	assign P68 = P58;
	assign G68 = G58;
	assign P69 = P59;
	assign G69 = G59;
	assign P610 = P510;
	assign G610 = G510;
	assign P611 = P511;
	assign G611 = G511;
	assign P612 = P512;
	assign G612 = G512;
	assign P613 = P513;
	assign G613 = G513;
	assign P614 = P514;
	assign G614 = G514;
	assign P615 = P515;
	assign G615 = G515;
	assign P616 = P516;
	assign G616 = G516;
	assign P617 = P517;
	assign G617 = G517;
	assign P618 = P518;
	assign G618 = G518;
	assign P619 = P519;
	assign G619 = G519;
	assign P620 = P520;
	assign G620 = G520;
	assign P621 = P521;
	assign G621 = G521;
	assign P622 = P522;
	assign G622 = G522;
	GrayCell uut49(P523,G523,G515, P623, G623);
	assign P624 = P524;
	assign G624 = G524;
	assign P625 = P525;
	assign G625 = G525;

	assign P70 = P60;
	assign G70 = G60;

	assign P71 = P61;
	assign G71 = G61;
	assign P72 = P62;
	assign G72 = G62;
	assign P73 = P63;
	assign G73 = G63;
	assign P74 = P64;
	assign G74 = G64;
	assign P75 = P65;
	assign G75 = G65;
	assign P76 = P66;
	assign G76 = G66;
	assign P77 = P67;
	assign G77 = G67;
	assign P78 = P68;
	assign G78 = G68;
	assign P79 = P69;
	assign G79 = G69;
	assign P710 = P610;
	assign G710 = G610;
	GrayCell uut50(P611,G611,G67, P711, G711);
	assign P712 = P612;
	assign G712 = G612;
	assign P713 = P613;
	assign G713 = G613;
	assign P714 = P614;
	assign G714 = G614;
	assign P715 = P615;
	assign G715 = G615;
	assign P716 = P616;
	assign G716 = G616;
	assign P717 = P617;
	assign G717 = G617;
	assign P718 = P618;
	assign G718 = G618;
	GrayCell uut51(P619,G619,G615, P719, G719);
	assign P720 = P620;
	assign G720 = G620;
	assign P721 = P621;
	assign G721 = G621;
	assign P722 = P622;
	assign G722 = G622;
	assign P723 = P623;
	assign G723 = G623;
	assign P724 = P624;
	assign G724 = G624;
	assign P725 = P625;
	assign G725 = G625;

	assign P80 = P70;
	assign G80 = G70;

	assign P81 = P71;
	assign G81 = G71;
	assign P82 = P72;
	assign G82 = G72;
	assign P83 = P73;
	assign G83 = G73;
	assign P84 = P74;
	assign G84 = G74;
	GrayCell uut52(P75,G75,G73, P85, G85);
	assign P86 = P76;
	assign G86 = G76;
	assign P87 = P77;
	assign G87 = G77;
	assign P88 = P78;
	assign G88 = G78;
	GrayCell uut53(P79,G79,G77, P89, G89);
	assign P810 = P710;
	assign G810 = G710;
	assign P811 = P711;
	assign G811 = G711;
	assign P812 = P712;
	assign G812 = G712;
	GrayCell uut54(P713,G713,G711, P813, G813);
	assign P814 = P714;
	assign G814 = G714;
	assign P815 = P715;
	assign G815 = G715;
	assign P816 = P716;
	assign G816 = G716;
	GrayCell uut55(P717,G717,G715, P817, G817);
	assign P818 = P718;
	assign G818 = G718;
	assign P819 = P719;
	assign G819 = G719;
	assign P820 = P720;
	assign G820 = G720;
	GrayCell uut56(P721,G721,G719, P821, G821);
	assign P822 = P722;
	assign G822 = G722;
	assign P823 = P723;
	assign G823 = G723;
	assign P824 = P724;
	assign G824 = G724;
	GrayCell uut57(P725,G725,G723, P825, G825);

	assign P90 = P80;
	assign G90 = G80;

	assign P91 = P81;
	assign G91 = G81;
	GrayCell uut58(P82,G82,G81, P92, G92);
	assign P93 = P83;
	assign G93 = G83;
	GrayCell uut59(P84,G84,G83, P94, G94);
	assign P95 = P85;
	assign G95 = G85;
	GrayCell uut60(P86,G86,G85, P96, G96);
	assign P97 = P87;
	assign G97 = G87;
	GrayCell uut61(P88,G88,G87, P98, G98);
	assign P99 = P89;
	assign G99 = G89;
	GrayCell uut62(P810,G810,G89, P910, G910);
	assign P911 = P811;
	assign G911 = G811;
	GrayCell uut63(P812,G812,G811, P912, G912);
	assign P913 = P813;
	assign G913 = G813;
	GrayCell uut64(P814,G814,G813, P914, G914);
	assign P915 = P815;
	assign G915 = G815;
	GrayCell uut65(P816,G816,G815, P916, G916);
	assign P917 = P817;
	assign G917 = G817;
	GrayCell uut66(P818,G818,G817, P918, G918);
	assign P919 = P819;
	assign G919 = G819;
	GrayCell uut67(P820,G820,G819, P920, G920);
	assign P921 = P821;
	assign G921 = G821;
	GrayCell uut68(P822,G822,G821, P922, G922);
	assign P923 = P823;
	assign G923 = G823;
	GrayCell uut69(P824,G824,G823, P924, G924);
	assign P925 = P825;
	assign G925 = G825;

	assign carry0 = G90;
	assign carry1 = G91;
	assign carry2 = G92;
	assign carry3 = G93;
	assign carry4 = G94;
	assign carry5 = G95;
	assign carry6 = G96;
	assign carry7 = G97;
	assign carry8 = G98;
	assign carry9 = G99;
	assign carry10 = G910;
	assign carry11 = G911;
	assign carry12 = G912;
	assign carry13 = G913;
	assign carry14 = G914;
	assign carry15 = G915;
	assign carry16 = G916;
	assign carry17 = G917;
	assign carry18 = G918;
	assign carry19 = G919;
	assign carry20 = G920;
	assign carry21 = G921;
	assign carry22 = G922;
	assign carry23 = G923;
	assign carry24 = G924;
	assign carry25 = G925;
	assign Sum[0] = P00;
	XorGate uut70(P01, carry0, Sum[1]);
	XorGate uut71(P02, carry1, Sum[2]);
	XorGate uut72(P03, carry2, Sum[3]);
	XorGate uut73(P04, carry3, Sum[4]);
	XorGate uut74(P05, carry4, Sum[5]);
	XorGate uut75(P06, carry5, Sum[6]);
	XorGate uut76(P07, carry6, Sum[7]);
	XorGate uut77(P08, carry7, Sum[8]);
	XorGate uut78(P09, carry8, Sum[9]);
	XorGate uut79(P010, carry9, Sum[10]);
	XorGate uut80(P011, carry10, Sum[11]);
	XorGate uut81(P012, carry11, Sum[12]);
	XorGate uut82(P013, carry12, Sum[13]);
	XorGate uut83(P014, carry13, Sum[14]);
	XorGate uut84(P015, carry14, Sum[15]);
	XorGate uut85(P016, carry15, Sum[16]);
	XorGate uut86(P017, carry16, Sum[17]);
	XorGate uut87(P018, carry17, Sum[18]);
	XorGate uut88(P019, carry18, Sum[19]);
	XorGate uut89(P020, carry19, Sum[20]);
	XorGate uut90(P021, carry20, Sum[21]);
	XorGate uut91(P022, carry21, Sum[22]);
	XorGate uut92(P023, carry22, Sum[23]);
	XorGate uut93(P024, carry23, Sum[24]);
	XorGate uut94(P025, carry24, Sum[25]);
	assign Sum[26] = carry25;
endmodule

 module HalfAdder(input a, input b, output sum, output cout);

     assign sum = a ^ b;
     assign cout = a & b;
 endmodule

 module FullAdder(input a, input b, input cin, output sum, output cout);

     assign sum = a ^ b ^ cin;
     assign cout = (a & b) | (cin & b) | (cin & a);
 endmodule