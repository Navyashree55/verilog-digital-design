// Code your testbench here
// or browse Examples
module tb_singleport_RAM;
  
  reg clk,We;
  reg [3:0] Data_in,addr;  
  wire [3:0] Dataout;  
  
  singleport_RAM dut(clk,We,Data_in,addr,Dataout);
   initial begin
    clk = 1;
    forever #1 clk = ~clk;  
  end
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
   #10;
    addr = 4'b0011;
    Data_in = 4'b0001;
    We = 1;
    #5; 
    $display("clk=%b addr=%b Data_in=%b We=%b | Dataout=%b",clk,addr,Data_in,We,Dataout);

    #20;
     We = 0;
    addr = 4'b0011;      
  
    #10; 
    $display("clk=%b addr=%b Data_in=%b We=%b | Dataout=%b",clk,addr,Data_in,We,Dataout);
    
    $finish;

  end
endmodule

 
