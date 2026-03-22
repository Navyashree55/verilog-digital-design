// Code your testbench here
// or browse Examples
module tb_encoder_4to2;

  reg Y0,Y1,Y2,Y3;
  wire A0,A1;

  encoder_4to2 dut (Y0,Y1,Y2,Y3,A0,A1);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    Y0=1; Y1=0; Y2=0; Y3=0; #1;
    $display("Y0=%b Y1=%b Y2=%b Y3=%b | A0=%b A1=%b",Y0,Y1,Y2,Y3,A0,A1);

    Y0=1; Y1=1; Y2=0; Y3=0; #1;
    $display("Y0=%b Y1=%b Y2=%b Y3=%b | A0=%b A1=%b",Y0,Y1,Y2,Y3,A0,A1);

    Y0=1; Y1=0; Y2=1; Y3=0; #1;
    $display("Y0=%b Y1=%b Y2=%b Y3=%b | A0=%b A1=%b",Y0,Y1,Y2,Y3,A0,A1);
    
    Y0=1; Y1=0; Y2=0; Y3=1; #1;
    $display("Y0=%b Y1=%b Y2=%b Y3=%b | A0=%b A1=%b",Y0,Y1,Y2,Y3,A0,A1);
    $finish;
  end
endmodule
