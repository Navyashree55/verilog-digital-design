// Code your design here
module de_mux1to4 (
  input wire A,S1,S0,
  output wire Y0,Y1,Y2,Y3
);
  assign Y0 = A & (~S1) & (~S0);
assign Y1 = A & (~S1) & S0;
assign Y2 = A & S1 & (~S0);
assign Y3 = A & S1 & S0;
endmodule
  
  
