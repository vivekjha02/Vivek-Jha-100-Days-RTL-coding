module async_sync_reset (in,clk,rst,async,sync);
input in,clk,rst;
output reg async,sync;

always@(posedge clk)
begin
if(rst)
sync <= 1'b0;
else
sync <= in;
end

always @(posedge clk,posedge rst)
begin
if(rst)
async <= 1'b0;
else
async <= in;
end

endmodule
