module tb;
reg [2:0]d;
wire [7:0]y;

decoder3x8 dut(d,y);

initial
	begin
		d=3'b000;
		#10;
	end

always
begin
d= 3'b000;
#5 d=3'b001;
#5 d=3'b010;
#5 d=3'b011;
#5 d=3'b100;
#5 d=3'b101;
#5 d=3'b110;
#5 d=3'b111;
#10 $finish;
end


initial 
begin
$monitor("d=%b, y=%b",d,y);
end

endmodule