module dff (clk,rst,d,q);
input clk,rst,d;
output reg q;

always @(posedge clk)
begin
if(rst)
q<=1'b0;
else
q<=d;
end
endmodule

module freq_div_4(clk,rst,clkby4);
input clk,rst;
output clkby4;
wire clkby2;

dff d1(clk,rst,~clkby4,clkby2);
dff d2(clk,rst,clkby2,clkby4);
endmodule