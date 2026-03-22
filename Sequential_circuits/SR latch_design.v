// Code your design here
module SR_latch(
  input wire S,R,
  output wire Q,Qbar
);
  assign Qbar = ~Q;
  assign Q = S & Qbar;
endmodule
  
