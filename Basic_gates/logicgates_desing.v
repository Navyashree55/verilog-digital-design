module all_gates(A,B,X,Y,Z,W,R,T,S);
  input  A,B;
  output  X,Y,Z,W,R,T,S;

  assign X = A & B;
  assign Y = A | B;
  assign Z = ~(A | B);
  assign W = ~(A & B);
  assign R = ~A ;
  assign T = A ^ B;
  assign S = ~(A ^ B);
endmodule

  
