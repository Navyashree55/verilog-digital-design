// Code your testbench here
// or browse Examples

module tb_SR_latch;
  reg S,R;
  wire Q,Qbar;
  SR_latch dut(S,R,Q,Qbar);
  initial begin
  $dumpfile ("dump.vcd");
  $dumpvars(1);
  #1
  S=1;
  R=0;
    #1 $display("S=%b R=%b | Q=%b Qbar=%b ",S,R,Q,Qbar);
  #1
  S=0;
  R=0;
      #1 $display("S=%b R=%b | Q=%b Qbar=%b ",S,R,Q,Qbar);
  #1
  S=0;
  R=1;
      #1 $display("S=%b R=%b clk=%b | Q=%b Qbar=%b ",S,R,clk,Q,Qbar);
  #1
  S=1;
  R=1;
      #1 $display("S=%b R=%b | Q=%b Qbar=%b ",S,R,Q,Qbar);
  end
endmodule
