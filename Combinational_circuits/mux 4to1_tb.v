module tb_mux_4to1;

  reg D0,D1,D2,D3;
  reg S0,S1;
  wire Y;

  mux_4to1 dut(D0,D1,D2,D3,S0,S1,Y);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_mux_4to1);

    D0=1; D1=0; D2=0; D3=0;
    S0=0; S1=0; #1;
    $display("Y=%b",Y);

    D0=0; D1=1; D2=0; D3=0;
    S0=1; S1=0; #1;
    $display("Y=%b",Y);

    D0=0; D1=0; D2=1; D3=0;
    S0=0; S1=1; #1;
    $display("Y=%b",Y);

    D0=0; D1=0; D2=0; D3=1;
    S0=1; S1=1; #1;
    $display("Y=%b",Y);

  end

endmodule
