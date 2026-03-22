module all_gates(
  input wire A,B,
  output wire X,Y,Z,R,T,S
);
  assign X = A & B;
  assign Y = A | B;
  assign Z = ~(A | B);
  assign Y = ~(A & B);
  assign R = ~A ;
  assign T = A ^ B;
  assign S = ~(A ^ B);
endmodule

  
