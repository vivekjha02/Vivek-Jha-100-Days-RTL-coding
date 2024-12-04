module tb;
parameter n=4;
reg [n-1:0]num;
wire [2*n-1:0]result;

n_bit_square dut(num,result);

always
begin
num = $random;
#10;
end

initial
begin
$monitor("Square of %d : %d^2 = %d",num,num,result);
#80 $finish;
end

endmodule