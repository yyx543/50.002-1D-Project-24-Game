/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift_right_28 (
    input [15:0] a,
    input [3:0] b,
    input alufn1,
    output reg [15:0] right
  );
  
  
  
  reg [15:0] x;
  
  reg [15:0] y;
  
  reg [15:0] z;
  
  reg msb;
  
  always @* begin
    msb = a[15+0-:1] & alufn1;
    
    case (b[0+0-:1])
      1'h0: begin
        x = a;
      end
      1'h1: begin
        x[0+14-:15] = a[1+14-:15];
        x[15+0-:1] = msb;
      end
      default: begin
        x = a;
      end
    endcase
    
    case (b[1+0-:1])
      1'h0: begin
        y = x;
      end
      1'h1: begin
        y[0+13-:14] = x[2+13-:14];
        y[14+1-:2] = {2'h2{msb}};
      end
      default: begin
        y = x;
      end
    endcase
    
    case (b[2+0-:1])
      1'h0: begin
        z = y;
      end
      1'h1: begin
        z[0+11-:12] = y[4+11-:12];
        z[12+3-:4] = {3'h4{msb}};
      end
      default: begin
        z = y;
      end
    endcase
    
    case (b[3+0-:1])
      1'h0: begin
        right = z;
      end
      1'h1: begin
        right[0+7-:8] = z[8+7-:8];
        right[8+7-:8] = {4'h8{msb}};
      end
      default: begin
        right = z;
      end
    endcase
  end
endmodule
