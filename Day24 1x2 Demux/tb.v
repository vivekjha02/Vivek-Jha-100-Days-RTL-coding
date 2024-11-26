module tb;
reg i,s;
wire y0,y1;

Demux1x2 dut(i,s,y0,y1);

always
begin
i=$random;
s=$random;
#10;
end

initial
begin
$monitor("i=%b, s=%b, y0=%b, y1=%b",i,s,y0,y1);
end
endmodule