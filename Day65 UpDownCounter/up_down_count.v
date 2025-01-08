module up_down_count(clk,rst,upordown,count);
parameter N=4;
input clk,rst,upordown;
output reg [N-1:0]count;

always @(posedge clk)
begin
if(rst)
count <= 0;
else if(upordown==1) //upmode is selected
if(count==2*N-1)
count<=0;
else 
count <= count+1; //increment counter
else if(count==0)
count<= 2*N-1;
else
count<=count-1; //derement counter
end
endmodule