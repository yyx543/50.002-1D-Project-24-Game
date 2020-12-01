/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_23 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] boole
  );
  
  
  
  integer x;
  integer y;
  
  always @* begin
    for (x = 1'h0; x < 5'h10; x = x + 1) begin
      y = {b[(x)*1+0-:1], a[(x)*1+0-:1]};
      
      case (y)
        2'h0: begin
          boole[(x)*1+0-:1] = alufn[0+0-:1];
        end
        2'h1: begin
          boole[(x)*1+0-:1] = alufn[1+0-:1];
        end
        2'h2: begin
          boole[(x)*1+0-:1] = alufn[2+0-:1];
        end
        2'h3: begin
          boole[(x)*1+0-:1] = alufn[3+0-:1];
        end
        default: begin
          boole[(x)*1+0-:1] = alufn[0+0-:1];
        end
      endcase
    end
  end
endmodule
