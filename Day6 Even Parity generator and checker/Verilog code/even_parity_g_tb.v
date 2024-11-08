module even_parity_g_tb;
reg [7:0]in;
wire parity;
reg clk;
even_parity_g dut (in, parity);

always #5 clk = ~clk;
initial
begin
clk = 0;

in = 8'b00000000; #10;
in = 8'b00000001; #10;
in = 8'b00000011; #10;
in = 8'b10000000; #10;
in = 8'b11011111; #10;
in = 8'b01010101; #10;
in = 8'b10101010; #10;
$finish;
end

always @(posedge clk)
begin
$display ("in=%b , parity = %b",in,parity);
end
endmodule