// Code your design here
module de_mux1to2 (
  input wire A,S0,
  output wire Y0,Y1
);
  assign Y0 = A& (~S0);
  assign Y1 = A & S0;
endmodule
