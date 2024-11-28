module tb;
reg a;
wire y;

demux_not dut(a,y);
always 
begin
a=$random;
 #10;
end

initial
begin
$monitor("a=%b, y=%b",a,y);
#100 $finish;
end
endmodule