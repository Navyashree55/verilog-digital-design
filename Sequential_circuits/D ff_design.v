module D_flipflop(
  input wire D, clk,
  output wire Q,Qbar
);

  assign Qbar = ~Q;

  always @(posedge clk)
    Q <= D;

endmodule
