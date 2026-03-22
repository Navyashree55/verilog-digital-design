
module tb_sr_flipflop;
  reg S,R,clk;
  wire Q,Qbar;
  sr_flipflop dut(S,R,clk,Q,Qbar);
  initial begin
  $dumpfile ("dump.vcd");
  $dumpvars(1);
  #1
  S=1;
  R=0;
  clk = 1;
    #1 $display("S=%b R=%b clk=%b | Q=%b Qbar=%b ",S,R,clk,Q,Qbar);
  #1
  S=0;
  R=0;
  clk = 1;
      #1 $display("S=%b R=%b clk=%b | Q=%b Qbar=%b ",S,R,clk,Q,Qbar);
  #1
  S=0;
  R=1;
  clk = 1;
      #1 $display("S=%b R=%b clk=%b | Q=%b Qbar=%b ",S,R,clk,Q,Qbar);
  #1
  S=1;
  R=1;
  clk = 1;
      #1 $display("S=%b R=%b clk=%b | Q=%b Qbar=%b ",S,R,clk,Q,Qbar);
  end 
endmodule;
