module tb;
reg clk,rst;
wire [7:0]lfsr_out;

lfsr dut(clk,rst,lfsr_out);

initial
begin
clk = 1'b0;
rst = 1'b1;
#10 rst =1'b0;
end

always #5 clk = ~clk;

initial
begin
$monitor("\t\t clk = %b rst = %b lfsr_out= %b",clk,rst,lfsr_out);
#200 $finish;
end

endmodule
