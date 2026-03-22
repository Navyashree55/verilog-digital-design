module tb_full_adder;

  reg A,B,Cin;
  wire S,Cout;

  full_adder dut(A,B,Cin,S,Cout);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    A=0; B=0; Cin=0; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
    A=0; B=0; Cin=1; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);

    A=0; B=1; Cin=0; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);

    A=0; B=1; Cin=1; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
    
A=1; B=0; Cin=0; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
    A=1; B=0; Cin=1; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
    A=1; B=1; Cin=0; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
    A=1; B=1; Cin=1; #1
    $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
    $finish;
  end

endmodule

