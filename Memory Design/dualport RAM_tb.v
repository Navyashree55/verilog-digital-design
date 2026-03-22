
module tb_dualport_RAM ;
  
  parameter data_width = 4;
  parameter addr_width = 4;
  parameter Depth = 16;
  
  reg clk_a,clk_b,We_a,We_b;
  reg[data_width-1:0] Data_in_a,Data_in_b;   
  reg [addr_width-1:0] addr_a,addr_b;      
  wire [data_width-1:0] Dataout_a,Dataout_b;
  
  dualport_RAM dut(clk_a,clk_b,We_a,We_b,Data_in_a,Data_in_b,addr_a,addr_b,Dataout_a,Dataout_b);
   initial begin
    clk_a = 1;
    forever #5 clk_a = ~clk_a;  
  end
  initial begin
    clk_b = 1;
    forever #5 clk_b = ~clk_b;  
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
   #10;
    addr_a = 4'b0011;       addr_b = 4'b0010;
    Data_in_a = 4'b0001;    Data_in_b = 4'b0111;
    We_a= 1;                We_b = 1; 
    #5; 
    $display("clk_a=%b clk_b=%b addr_a=%b addr_b=%b Data_in_a=%b Data_in_b=%b We_a=%b We_b=%b | Dataout_a=%b Dataout_b=%b",clk_a,clk_b,addr_a,addr_b,Data_in_a,Data_in_b,We_a,We_b,Dataout_a,Dataout_b);

    #20;
     We_b = 0;				We_a = 1;
    addr_b = 4'b0010;       addr_a = 4'b0001;
    						Data_in_a = 4'b0011; 
  
    #10; 
  $display("clk_a=%b clk_b=%b addr_a=%b addr_b=%b Data_in_a=%b Data_in_b=%b We_a=%b We_b=%b | Dataout_a=%b Dataout_b=%b",clk_a,clk_b,addr_a,addr_b,Data_in_a,Data_in_b,We_a,We_b,Dataout_a,Dataout_b);

     #20;
     We_a = 0;				We_b = 1;
    addr_a = 4'b0011;       addr_b = 4'b0101;
    						Data_in_b = 4'b1000; 
     #20; 
   $display("clk_a=%b clk_b=%b addr_a=%b addr_b=%b Data_in_a=%b Data_in_b=%b We_a=%b We_b=%b | Dataout_a=%b Dataout_b=%b",clk_a,clk_b,addr_a,addr_b,Data_in_a,Data_in_b,We_a,We_b,Dataout_a,Dataout_b);

     #20;
     We_a = 0;				We_b = 0;				
    addr_b = 4'b0101;       addr_a = 4'b0011;
    
     #10; 
    $display("clk_a=%b clk_b=%b addr_a=%b addr_b=%b Data_in_a=%b Data_in_b=%b We_a=%b We_b=%b | Dataout_a=%b Dataout_b=%b",clk_a,clk_b,addr_a,addr_b,Data_in_a,Data_in_b,We_a,We_b,Dataout_a,Dataout_b);



    $finish;

  end
endmodule

 
