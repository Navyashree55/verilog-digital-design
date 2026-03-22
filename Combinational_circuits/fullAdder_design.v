// full Adder Module
module full_adder(
  input wire A, B,Cin,
  output wire S,Cout

);

  assign S = A ^ B^Cin;   
  assign Cout = Cin & (A ^ B)| A&B;   

endmodule
 

