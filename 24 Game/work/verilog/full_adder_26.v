/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module full_adder_26 (
    input x,
    input y,
    input cin,
    output reg s,
    output reg cout
  );
  
  
  
  reg i;
  reg j;
  reg k;
  
  always @* begin
    s = x ^ y ^ cin;
    i = x & y;
    j = x & cin;
    k = y & cin;
    cout = i | j | k;
  end
endmodule
