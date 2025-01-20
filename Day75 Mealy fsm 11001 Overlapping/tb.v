
module tb;
reg din,clk,rst;
wire y;

fsm_11001 dut(din,clk,rst,y);

initial begin
clk= 1'b0;
forever #5 clk= ~clk;
end

initial begin
rst= 1'b1;
#10 rst= 1'b0;
#5 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b0;
#10 din= 1'b1;
end

initial begin
$monitor("\t\t clock: %d  input: %d   detect: %d",clk, din, y);
#180 $finish;
end
endmodule
