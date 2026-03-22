module tb_decoder_2to4;

  reg A,B;
  wire D0,D1,D2,D3;

  decoder_2to4 dut (A,B,D0,D1,D2,D3);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    A=0; B=1; #1;
    $display("A=%b B=%b | D0=%b D1=%b D2=%b D3=%b",A,B,D0,D1,D2,D3);

    A=0; B=0; #1;
    $display("A=%b B=%b | D0=%b D1=%b D2=%b D3=%b",A,B,D0,D1,D2,D3);

    A=1; B=0; #1;
    $display("A=%b B=%b | D0=%b D1=%b D2=%b D3=%b",A,B,D0,D1,D2,D3);

    A=1; B=1; #1;
    $display("A=%b B=%b | D0=%b D1=%b D2=%b D3=%b",A,B,D0,D1,D2,D3);

    $finish;
  end

endmodule
