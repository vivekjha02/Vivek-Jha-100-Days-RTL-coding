module ring_counter (clk,rst,counter);
parameter N=4;
input clk,rst;
output reg [N-1:0]counter;

always @(posedge clk)
begin
if(rst)
counter <= 1;
else
counter <= {counter[0],counter[N-1:1]};
end
endmodule