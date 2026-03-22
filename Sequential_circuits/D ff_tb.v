module tb_D_flipflop;

  reg D, clk;
  wire Q, Qbar;

  D_flipflop dut (D, clk, Q, Qbar);

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    D = 0; #10;
    $display("D=%b clk=%b | Q=%b Qbar=%b", D, clk, Q, Qbar);

    D = 1; #10;
    $display("D=%b clk=%b | Q=%b Qbar=%b", D, clk, Q, Qbar);

    
    $finish;
  end

endmodule
