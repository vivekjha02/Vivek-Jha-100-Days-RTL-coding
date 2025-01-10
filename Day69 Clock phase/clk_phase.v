module clk_phase(clk,rst,clk0,clk90,clk180,clk270);
input clk,rst;
output clk0,clk90,clk180,clk270;
reg [1:0]count;
reg div_2;

always @(posedge clk or posedge rst)
begin
if(rst)
count<=0;
else
count<= {~count[0],count[1]};
end

always @(posedge clk or posedge rst)
begin
if(rst)
div_2 <= 0;
else 
div_2 = ~div_2;
end

assign clk0 = count[1];
assign clk90 = count[1]^div_2;
assign clk180 = ~count[1];
assign clk270 = ~clk90;

endmodule