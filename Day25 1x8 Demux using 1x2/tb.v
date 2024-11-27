module tb;
reg [2:0]sel;
reg i;
wire y0, y1, y2, y3, y4, y5, y6, y7;

demux1x8 dut(sel,i,y0, y1, y2, y3, y4, y5, y6, y7);

always 
begin

sel=$random;
i=1'b1;
#10;
end

initial
begin
$monitor("sel=%b,i=%b,y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b",sel,i,y0,y1,y2,y3,y4,y5,y6,y7);
#200 $finish;
end
endmodule