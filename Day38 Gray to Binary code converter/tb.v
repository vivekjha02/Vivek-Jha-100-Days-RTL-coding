module tb;
reg [3:0]gray_in;
wire [3:0]binary_out;

gray2binary dut(gray_in,binary_out);

initial
begin
//for(integer i=0; i<=15;i=i+1)
//begin
//binary_in = i;
//#10;
//end
gray_in = 4'd0; #10;
gray_in = 4'd1; #10;
gray_in = 4'd2; #10;
gray_in = 4'd3; #10;
gray_in = 4'd4; #10;
gray_in = 4'd5; #10;
gray_in = 4'd6; #10;
gray_in = 4'd7; #10;
gray_in = 4'd8; #10;
gray_in = 4'd9; #10;
gray_in = 4'd10; #10;
gray_in = 4'd11; #10;
gray_in = 4'd12; #10;
gray_in = 4'd13; #10;
gray_in = 4'd14; #10;
gray_in = 4'd15; #10;


end

initial
begin
$monitor ("gray_in=%b  -> binary_out= %b",gray_in,binary_out);
#160 $finish;
end
endmodule