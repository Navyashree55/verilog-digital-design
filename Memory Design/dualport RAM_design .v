module dualport_RAM (clk_a,clk_b,We_a,We_b,Data_in_a,Data_in_b,addr_a,addr_b,Dataout_a,Dataout_b);

  parameter data_width = 4;
  parameter addr_width = 4;
  parameter Depth = 16;
  
  input clk_a,clk_b,We_a,We_b;
  input reg[data_width-1:0] Data_in_a,Data_in_b;   
  input reg [addr_width-1:0] addr_a,addr_b;      
  output reg [data_width-1:0] Dataout_a,Dataout_b;  
  
  reg [data_width-1:0] mem [Depth-1:0]; 
  
  always @(posedge clk_a) 
 begin
    if(We_a)
      mem[addr_a] <= Data_in_a;
    else
      Dataout_a <= mem[addr_a];
  end
  always @(posedge clk_b) 
 begin
    if(We_b)
      mem[addr_b] <= Data_in_b;
    else
      Dataout_b <= mem[addr_b];
  end

endmodule

