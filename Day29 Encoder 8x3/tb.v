module tb;
reg [7:0]d;
wire [2:0]y;
encoder8x3 dut(d,y);

initial
begin
d= 8'b00000000;
#5 d= 8'b00000001;
#5 d= 8'b00000010;
#5 d= 8'b00000100;
#5 d= 8'b00001000;
#5 d= 8'b00010000;
#5 d= 8'b00100000;
#5 d= 8'b01000000;
#5 d= 8'b10000000;

#5 $finish;
end

initial
begin
$monitor("d=%b, y=%b",d,y);
end


endmodule