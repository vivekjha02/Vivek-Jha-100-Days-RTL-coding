module tb;
reg clk,rst,load;
reg [2:0]parallel_in;
wire serial_out;

piso dut(clk,rst,load,parallel_in,serial_out);

initial
begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial
begin
rst = 1'b1;
#10 rst = 1'b0;
load = 1'b1;
parallel_in = 3'b001;
#10 load = 1'b0;
#30 load = 1'b1;

parallel_in = 3'b100;
#10 load = 1'b0;
#30 load = 1'b1;

parallel_in = 3'b101;
#10 load = 1'b0;

end

initial
begin
$monitor("clk: %d  load= %d parallel_in= %b serial_out=%b ",clk,load,parallel_in,serial_out);
#120 $finish;
end
endmodule
