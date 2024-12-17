module tb;
reg d,clk,rst;
wire Q;

dff dut(d,rst,clk,Q);

initial begin
clk =1;
forever #5 clk = ~clk;
end

initial
begin
rst =1;
d=1'b0; #10;

rst =0; #10;
d=1'b1; #10;
d=1'b0; #10;
d=1'b1; #10;
d=1'b0; #10;
d=1'b1; #10;
d=1'b0; #10;
d=1'b1; #10;
d=1'b0; #10;
end

initial
begin
$monitor("d=%b, Q = %b",d,Q);
#120 $finish;
end
endmodule