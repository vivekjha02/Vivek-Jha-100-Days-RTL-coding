module tb;
reg [7:0]d;
wire [2:0]y;

priority_encoder dut(d,y);

initial
begin

d=8'b11110011;
#5 d=8'b00111111;
#5 d=8'b00011111;
#5 d=8'b00001111;
#5 d=8'b00000111;
#5 d=8'b00000011;
#5 d=8'b00000001;
#5 d=8'b00000000;
#5 d=8'b01010101;
#10 $finish;

end
initial
begin
$monitor("d=%b, y=%b",d,y);
end
endmodule
