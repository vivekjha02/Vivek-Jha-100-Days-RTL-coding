


`timescale 1ns / 1ps

module test_bench;
reg clk, reset;
wire clk_by5;

freq_div_by5 dut(clk, reset, clk_by5);

initial begin
clk= 1'b0;
forever #10 clk= ~clk;
end

initial begin
reset= 1'b1;
#20
reset= 1'b0;
#380 $finish;
end

endmodule
