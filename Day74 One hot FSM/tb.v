module tb;
reg  clk,rst;
wire [3:0]state;
wire [1:0]out;

one_hot_fsm dut(clk,rst,state,out);

initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
rst = 1;
#20 rst = 0;
end

initial
begin
$monitor ("\t\t state:%b output:%b",state,out);
#170 $finish;
end
endmodule