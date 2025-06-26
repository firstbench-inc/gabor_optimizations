module fxp_mul # (
    parameter IN_IWA = 2,
    parameter IN_FWA = 6,
    parameter IN_IWB = 8,
    parameter IN_FWB = 0,
    parameter ROUND= 1
)(
  input  logic [IN_IWA+IN_FWA-1:0] ina,
    input  logic [IN_IWB+IN_FWB-1:0] inb,
    output logic [IN_IWA+IN_IWB + IN_FWA+IN_FWB - 1:0] out
);

assign out =  ($signed(ina) * $signed(inb)); 

endmodule


