module tb;
reg [3:0]bcd;
wire [3:0]excess3;

bcd2excess3 dut(bcd,excess3);
always
begin
bcd = 4'd0; #10;
bcd = 4'd1; #10;
bcd = 4'd2; #10;
bcd = 4'd3; #10;
bcd = 4'd4; #10;
bcd = 4'd5; #10;
bcd = 4'd6; #10;
bcd = 4'd7; #10;
bcd = 4'd8; #10;
bcd = 4'd9; #10;
bcd = 4'd10; #10;
bcd = 4'd11; #10;
bcd = 4'd12; #10;
bcd = 4'd13; #10;
bcd = 4'd14; #10;
bcd = 4'd15; #10;
end

initial
begin
$monitor ("bcd = %b  excess3 = %b",bcd,excess3);
#160 $finish;
end
endmodule
