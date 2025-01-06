module tb;
parameter N=6;
parameter LENGTH =3;

reg clk,rst;
wire [LENGTH-1:0]counter;

modNcounter dut(clk,rst,counter);

initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
rst = 1;
#10;
rst = 0;
end

initial
begin
$monitor("/t/t counter :%d",counter);
#125 $finish;
end
endmodule