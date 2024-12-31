module tb;
reg clk,rst,serial_in;
wire [2:0]parallel_out;

sipo dut(clk,rst,serial_in,parallel_out);

initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
rst = 1'b1;
serial_in = 1'b0;

#10 rst = 1'b0;
#0 serial_in = 1'b1;
#10 serial_in = 1'b0;
#10 serial_in = 1'b1;
#10 serial_in = 1'b0;
#10 serial_in = 1'b1;
#10 serial_in = 1'b0;
#10 serial_in = 1'b1;
#10 serial_in = 1'b0;
#10 serial_in = 1'b1;
#10 serial_in = 1'bx;
end

initial
begin
$monitor("\t\t clk: %d  serial_in = %d  parallel_out= %d",clk,serial_in,parallel_out);
#150 $finish;
end

endmodule