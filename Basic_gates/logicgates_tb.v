module tb_all_gates;

  reg A, B;
  wire X, Y, Z, W, R, T, S;

  all_gates dut(A, B, X, Y, Z, W, R, T, S);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_all_gates);

    $monitor("A=%b B=%b | X=%b Y=%b Z=%b W=%b R=%b T=%b S=%b",
              A, B, X, Y, Z, W, R, T, S);

    // Apply inputs with delays
    A = 0; B = 0;
    #5 A = 0; B = 1;
    #5 A = 1; B = 0;
    #5 A = 1; B = 1;

    #5 $finish;   // delay before finishing
  end

endmodule
