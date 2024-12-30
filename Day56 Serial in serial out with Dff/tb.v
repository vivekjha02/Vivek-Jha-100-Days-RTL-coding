module tb;
reg clk,rst,serial_in;
wire serial_out;

siso dut(clk,rst,serial_in,serial_out);

initial
begin
clk = 1'b0;
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
#10 serial_in = 1'b0;
end

initial begin
$monitor ("\t\t clk: %d   serial_in = %d  serial_out = %d",clk,serial_in,serial_out);
#100 $finish;
end

endmodule
