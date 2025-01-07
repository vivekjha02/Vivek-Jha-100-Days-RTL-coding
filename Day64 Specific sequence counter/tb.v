module tb;
reg clk,rst;
wire [3:0]counter;

sequence_count dut(clk,rst,counter);

initial
begin
clk = 0;
rst = 1;
#10 rst = 0;
end

always #5 clk = ~clk;


initial
begin
$monitor("\t\t clk:%b  counter:%b",clk,counter);
#140 $finish;
end
endmodule