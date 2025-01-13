module tb;
reg clk,rst;
wire clkby4;

freq_div_4 dut(clk,rst,clkby4);

initial
begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial
begin
rst = 1'b1;
#20;
rst = 1'b0;
end

endmodule