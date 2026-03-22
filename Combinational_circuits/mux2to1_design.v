// Code your design here
module mux_2to1 (
  input wire So,Do,D1,
  output wire Y
);
  assign Y = ~So & Do | So & D1;
endmodule

