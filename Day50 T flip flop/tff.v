module tff(t,rst,clk,Q);
input t,clk,rst;
output reg Q;

always @(posedge clk)
begin
if(rst)
Q=1'b0;
else 
begin
if (t)
Q <= ~Q;
else
Q <= Q;
end
end
endmodule




