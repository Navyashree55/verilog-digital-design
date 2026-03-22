module jk_flipflop(
  input wire J, K, clk,
  output reg Q,
  output wire Qbar
);

  assign Qbar = ~Q;

  always @(posedge clk) begin
    Q <= (J & ~Q) | (~K & Q);
  end 

endmodule
