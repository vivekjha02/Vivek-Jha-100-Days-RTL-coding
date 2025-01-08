module tb;
reg clk,rst,upordown;
wire [3:0]count;
up_down_count dut(clk,rst,upordown,count);

initial
begin
clk = 0;
rst = 1;
#50 rst = 0;
upordown =0;
#220 upordown =1;
#200 upordown =0;
end

always #10 clk = ~clk;

initial
begin
$monitor("\t\t upordown = %b count = %b count decimal = %d",upordown,count,count);
#550 $finish;
end
endmodule