module even_parity_c_tb;
reg [7:0]in;
reg parity;
wire error;
reg clk;
even_parity_c dut(in,parity,error);

always #5 clk = ~clk;
initial
begin
clk = 0;

in = 8'b00000000; parity =1; #10;
in = 8'b00000001; parity =0; #10;
in = 8'b00000011; parity =1; #10;
in = 8'b10000000; parity =0; #10;
in = 8'b11011111; parity =1; #10;
in = 8'b01010101; parity =0; #10;
in = 8'b10101010; parity =1; #10;
$finish;
end

always @(posedge clk)
begin
$display ("in=%b , parity = %b, error=%b",in,parity,error);
end

endmodule