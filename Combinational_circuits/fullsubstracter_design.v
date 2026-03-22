// Code your design here
module full_substracter(
  input wire A, B,Bin,
  output wire D,Bout

);

  assign D = A ^ B^Bin;   
  assign Bout = Bin & (~(A ^ B))| (~A) & B;   

endmodule
 
