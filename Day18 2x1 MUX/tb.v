module tb;
reg [1:0]i;
reg s;
wire y;

mux2X1 dut (i,s,y);
always begin

i = $random;
s= $random;
#10;
end

initial
begin
$monitor("i=%b; s=%b; y = %b",i,s,y);
#100 $finish;
end

endmodule