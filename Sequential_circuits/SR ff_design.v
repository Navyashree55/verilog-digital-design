// Code your design here
module sr_flipflop (
  input wire S,R,clk,
  output wire Q,Qbar
);
  wire A,B;
  assign A = ~(S & clk );
  assign B = ~(R & clk );
  assign Q = ~ (A & Qbar);
  assign Qbar = ~(B & Q);
endmodule
