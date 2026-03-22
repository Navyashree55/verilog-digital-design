// Code your testbench here
// or browse Examples
module tb_de_mux1to2 ;
  reg A ,S0;
  wire Y0,Y1;
  de_mux1to2 dut(A,S0,Y0,Y1);
  initial begin 
    $dumpfile ("dump.vcd");
    $dumpvars(1);
    A = 0; S0 = 1; #1
    $display("A=%b S0=%b | Y0 = %b Y1 = %b",A,S0,Y0,Y1);
    
    A = 0; S0 = 0; #1
    $display("A=%b S0=%b | Y0 = %b Y1 = %b",A,S0,Y0,Y1);
    #1
    A = 1; S0= 0; #1
    $display("A=%b S0=%b | Y0 = %b Y1 = %b",A,S0,Y0,Y1);
    #1
    A = 1; S0= 1; #1
    $display("A=%b S0=%b | Y0 = %b Y1 = %b",A,S0,Y0,Y1);
    
  end 
endmodule
