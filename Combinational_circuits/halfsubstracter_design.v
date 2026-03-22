// Code your design here
module half_Substracter(
  input wire A,
  input wire B,
  output wire S,
  output wire Bin
);

  assign S = A ^ B;   
  assign Bin = ~A & B;   

endmodule

