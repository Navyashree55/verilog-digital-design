// Code your testbench here
// or browse Examples
module tb_half_substracter;

  reg A,B;
  wire S,Bin;

  half_Substracter dut(A,B,S,Bin);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    A=0; B=0; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,Bin);

    A=0; B=1; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,Bin);


    A=1; B=0; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,Bin);

    A=1; B=1; #1;
    $display("A = %b B = %b | S =%b C=%b", A,B,S,Bin);

    $finish;
  end

endmodule
