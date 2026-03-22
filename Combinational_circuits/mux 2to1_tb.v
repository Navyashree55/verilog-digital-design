module tb_mux_2to1;

  reg So,Do,D1;
  wire Y;

  mux_2to1 dut(So,Do,D1,Y);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    So=0; Do=0; D1=0; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    
    So=0; Do=0; D1=1; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    
    So=0; Do=1; D1=0; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    
	So=0; Do=1; D1=1; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    
	So=1; Do=0; D1=0; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    
    So=1; Do=0; D1=1; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    
    So=1; Do=1; D1=0; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    
    So=1; Do=1; D1=1; #1
    $display("So=%b Do=%b D1=%b | Y=%b ", So,Do,D1,Y);
    $finish;
  end

endmodule


