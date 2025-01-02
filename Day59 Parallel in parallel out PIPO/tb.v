module tb;
reg clk,rst;
reg [2:0]parallel_in;
wire [2:0]parallel_out;

pipo dut(clk,rst,parallel_in,parallel_out);

initial
begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial
begin
rst = 1'b1;
parallel_in = 3'b000;
#10 rst = 1'b0;
end

always #10 parallel_in = $random;

initial
begin
$monitor("\t\t clk=%d rst=%d parallel_in=%b parallel_out=%b",clk,rst,parallel_in,parallel_out);
#120 $finish;
end

endmodule

