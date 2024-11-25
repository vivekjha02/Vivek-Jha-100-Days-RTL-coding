module tb;
reg a,b,cin;
wire sum,carry;

full_adder dut(a,b,cin,sum,carry);

always
begin
a=$random;
b=$random;
cin=$random;
#10;
end

initial
begin
$monitor("a=%b, b=%b, cin=%b, sum=%b, carry=%b",a,b,cin,sum,carry);
#200 $finish;
end
endmodule