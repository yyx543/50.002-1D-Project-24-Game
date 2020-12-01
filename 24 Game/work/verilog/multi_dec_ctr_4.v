/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     DIGITS = 2
*/
module multi_dec_ctr_4 (
    input clk,
    input rst,
    input dec,
    input set_sixty,
    output reg [7:0] digits
  );
  
  localparam DIGITS = 2'h2;
  
  
  wire [(2'h2+0)-1:0] M_dctr_uvf;
  wire [(2'h2+0)*4-1:0] M_dctr_value;
  reg [(2'h2+0)-1:0] M_dctr_dec;
  reg [(2'h2+0)*4-1:0] M_dctr_set;
  
  genvar GEN_dctr0;
  generate
  for (GEN_dctr0=0;GEN_dctr0<2'h2;GEN_dctr0=GEN_dctr0+1) begin: dctr_gen_0
    decimal_counter_16 dctr (
      .clk(clk),
      .rst(rst),
      .dec(M_dctr_dec[GEN_dctr0*(1)+(1)-1-:(1)]),
      .set(M_dctr_set[GEN_dctr0*(3'h4)+(3'h4)-1-:(3'h4)]),
      .uvf(M_dctr_uvf[GEN_dctr0*(1)+(1)-1-:(1)]),
      .value(M_dctr_value[GEN_dctr0*(3'h4)+(3'h4)-1-:(3'h4)])
    );
  end
  endgenerate
  
  always @* begin
    if (set_sixty) begin
      M_dctr_set[4+3-:4] = 3'h6;
      M_dctr_set[0+3-:4] = 1'h0;
    end else begin
      M_dctr_set[4+3-:4] = 4'ha;
      M_dctr_set[0+3-:4] = 4'ha;
    end
    M_dctr_dec[0+0-:1] = dec;
    digits = M_dctr_value;
    M_dctr_dec[1+0-:1] = M_dctr_uvf[0+0-:1];
  end
endmodule