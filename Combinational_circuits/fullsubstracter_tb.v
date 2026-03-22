module tb_full_substracter;

  reg A,B,Bin;
  wire D,Bout;

  full_substracter dut(A,B,Bin,D,Bout);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    A=0; B=0; Bin=0; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
    A=0; B=0; Bin=1; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
    A=0; B=1; Bin=0; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
    A=0; B=1; Bin=1; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
A=1; B=0; Bin=0; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
    A=1; B=0; Bin=1; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
    A=1; B=1; Bin=0; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
    A=1; B=1; Bin=1; #1
    $display("A=%b B=%b Bin=%b | D=%b Bout=%b", A, B, Bin, D, Bout);
    $finish;
  end

endmodule

