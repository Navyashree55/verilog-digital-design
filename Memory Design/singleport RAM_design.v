module singleport_RAM (clk,We,Data_in,addr,Dataout);

  parameter data_width = 4;
  parameter addr_width = 4;
  parameter Depth = 16;
  
  input clk,We;
  input reg[data_width-1:0] Data_in;   
  input reg [addr_width-1:0] addr;      
  output reg [data_width-1:0] Dataout;  
  
  reg [data_width-1:0] mem [Depth-1:0]; 
  
  always @(posedge clk) 
  begin
    if(We)
      mem[addr] <= Data_in;
    else
      Dataout <= mem[addr];
  end

endmodule
