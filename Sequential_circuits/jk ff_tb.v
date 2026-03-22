module tb_jk_flipflop;

  reg J, K, clk;
  wire Q, Qbar;


  jk_flipflop dut (J, K, clk, Q, Qbar);

  
  initial begin
    clk = 0;
    forever #1 clk = ~clk;  
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

 
    #2;
    J = 0; K = 1;
    #2;
    $display("J=%b K=%b clk=%b | Q=%b Qbar=%b", J, K, clk, Q, Qbar);

    #2;
    J = 0; K = 0;
    #2;
    $display("J=%b K=%b clk=%b | Q=%b Qbar=%b", J, K, clk, Q, Qbar);

    #2;
    J = 1; K = 0;
    #2;
    $display("J=%b K=%b clk=%b | Q=%b Qbar=%b", J, K, clk, Q, Qbar);

    #2;
    J = 1; K = 1;
    #2;
    $display("J=%b K=%b clk=%b | Q=%b Qbar=%b", J, K, clk, Q, Qbar);

    #5;
    $finish;
  end

endmodule

