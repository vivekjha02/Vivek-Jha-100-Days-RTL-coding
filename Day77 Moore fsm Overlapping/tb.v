module tb;
reg clk,rst,din;
wire y;

fsm_1011 dut(clk,rst,din,y);

initial
begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial begin
rst = 1'b1;
#10 rst = 1'b0;
#5 din = 1'b0;
#10 din = 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
end

initial
begin
$monitor("\t\t clk=%d input: %d detect: %d",clk,din,y);
#160 $finish;
end
endmodule