module parallel_adder_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]s;
wire carry;

parallel_adder dut(a,b,cin,s,carry);

always 
begin
a = $random;
b= $random;
cin = $random;
#10;
end

initial
begin
$monitor ("a=%b; b=%b, cin=%b, s=%b; carry=%b", a,b,cin,s,carry);
#60 $finish;
end

endmodule
