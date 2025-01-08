module tb;
parameter N=4;
reg clk,rst;
wire [N-1:0]counter;

ring_counter dut(clk,rst,counter);

initial
begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial
begin
rst =1;
#10 rst = 0;
end

initial
begin
$monitor ("\t\t counter =%d",counter);
#100 $finish;
end
endmodule
