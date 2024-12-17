module dff(d,rst,clk,Q);
input d,clk,rst;
output reg Q;

always @(posedge clk)
begin
if(rst)
Q=1'b0;
else
Q<= d;
end
endmodule