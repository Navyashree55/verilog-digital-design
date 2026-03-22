// Code your design here
// Code your design here
module encoder_4to2(
  input wire Y0,Y1,Y2,Y3,
  output wire A0,A1
);
  assign A0 = Y2|Y3;
  assign A1 = Y1|Y3;
endmodule
  
