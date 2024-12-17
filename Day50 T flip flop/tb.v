module tb;
reg t,clk,rst;
wire Q;

tff dut(t,rst,clk,Q);

initial begin
clk =1;
t=0;
forever #5 clk = ~clk;
end

initial
begin
rst =1; #10;
rst =0;
forever 
begin
#10 t=1'b1;
#20 t=1'b0;
end
end

initial
begin
$monitor("clk=%b,t=%b, Q = %b",clk,t,Q);
#80 $finish;
end
endmodule