module tb;
reg J,K,clk,rst;
wire Q;

jkff dut(J,K,rst,clk,Q);

initial begin
clk =1;
forever #5 clk = ~clk;
end

initial
begin

rst =1;
J=1'b0; K=1'b0; #10;

rst =0; #10
J=1'b0; K=1'b1; #10;
J=1'b1; K=1'b0; #10;
J=1'b1; K=1'b1; #10;
end

initial
begin
$monitor("J=%b, K=%b, Q = %b",J,K,Q);
#100 $finish;
end
endmodule
