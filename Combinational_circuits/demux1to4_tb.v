module tb_de_mux1to4 ;
  reg A ,S1,S0;
  wire Y0,Y1,Y2,Y3;

  de_mux1to4 dut(A,S1,S0,Y0,Y1,Y2,Y3);

  initial begin 
    $dumpfile ("dump.vcd");
    $dumpvars(1);

    A=0; S1=0; S0=0; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

    A=0; S1=0; S0=1; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

    A=0; S1=1; S0=0; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

    A=0; S1=1; S0=1; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

    A=1; S1=0; S0=0; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

    A=1; S1=0; S0=1; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

    A=1; S1=1; S0=0; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

    A=1; S1=1; S0=1; #1;
    $display("A=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",A,S1,S0,Y0,Y1,Y2,Y3);

  end
endmodule
