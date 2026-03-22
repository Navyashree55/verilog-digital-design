module tb_half_adder;

  reg A,B;
  wire S,C;

  half_adder dut(A,B,S,C);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    A=0; B=0; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,C);

    A=0; B=1; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,C);


    A=1; B=0; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,C);

    A=1; B=1; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,C);

    $finish;
  end

endmodule

