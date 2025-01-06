module modNcounter (clk,rst,counter);
parameter N = 6;
parameter LENGTH=3;
input clk,rst;
output reg [LENGTH - 1:0]counter;


always @(posedge clk)
begin
if(rst)
counter <= 0 ;
else
if(counter == N)
counter <=0;
else 
counter <= counter+1;
end
endmodule