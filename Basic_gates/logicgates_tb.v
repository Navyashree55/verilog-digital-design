module tb_all_gates;
  wire A,B;
  reg  X,Y,Z,R,T,S;
  all_gates dut(A,B,X,Y,Z,R,T,S);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    #1 A = 0;  B=0;
    #1 A = 0;  B=1;
    #1 A = 1;  B=0;
    #1 A = 1;  B=1;
    $monitor("A=%b B=%b | X=%b Y=%b Z=%b R=%b T=%b S=%b ",A,B,X,Y,Z,R,T,S);
  end 
endmodule
    
    
