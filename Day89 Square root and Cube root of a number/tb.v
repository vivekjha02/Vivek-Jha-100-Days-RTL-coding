
module tb;
reg [31:0] number;
wire [31:0] sq_root, cube_root;

root dut(number, sq_root, cube_root);

initial begin
	#10 number = 27;
	#10 number = 121;
	#10 number = 961;
	#10 number = 512;
	#10 number = 1764;
	#10 number = 1000;
	#10 number = 4761;
	#10 number = 5832;
	#10 $finish;
end
endmodule
