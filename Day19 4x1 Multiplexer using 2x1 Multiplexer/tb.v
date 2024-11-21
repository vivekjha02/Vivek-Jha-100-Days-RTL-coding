module tb;
reg [3:0]i;
reg [1:0]s;
wire y;

mux4x1 dut(i,s,y);
always
begin
i= $random;
s= $random;
#10;
end

initial
begin
$monitor("input=%b; select=%b; output=%b",i,s,y);
#100 $finish;
end
endmodule