module tb;
reg clk,rst;
wire clk0,clk90,clk180,clk270;

clk_phase dut(clk,rst,clk0,clk90,clk180,clk270);

initial
begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial
begin
rst = 1'b1;
#10;
rst = 1'b0;
end

initial
begin
$monitor("\t\t clk=%b clk0=%b,clk90=%b,clk180=%b,clk270=%b",clk,clk0,clk90,clk180,clk270);
#120 $finish;
end
endmodule