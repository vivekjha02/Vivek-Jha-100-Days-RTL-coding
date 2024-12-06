module tb;
reg [3:0]binary_in;
wire [3:0]gray_out;

binary2gray dut(binary_in,gray_out);

initial
begin
//for(integer i=0; i<=15;i=i+1)
//begin
//binary_in = i;
//#10;
//end
binary_in = 4'd0; #10;
binary_in = 4'd1; #10;
binary_in = 4'd2; #10;
binary_in = 4'd3; #10;
binary_in = 4'd4; #10;
binary_in = 4'd5; #10;
binary_in = 4'd6; #10;
binary_in = 4'd7; #10;
binary_in = 4'd8; #10;
binary_in = 4'd9; #10;
binary_in = 4'd10; #10;
binary_in = 4'd11; #10;
binary_in = 4'd12; #10;
binary_in = 4'd13; #10;
binary_in = 4'd14; #10;
binary_in = 4'd15; #10;

end

initial
begin
$monitor ("binary_in=%b  -> gray_out= %b",binary_in,gray_out);
#160 $finish;
end
endmodule