module tb;
reg in,clk,rst;
wire async,sync;

async_sync_reset dut(in,clk,rst,async,sync);

initial begin
clk = 0;
rst = 0;
in = 1;
end

initial forever #130 clk <= ~clk;
initial forever #450 rst <= ~rst;
initial forever #400 in <= ~in;

initial #6000 $stop;
endmodule