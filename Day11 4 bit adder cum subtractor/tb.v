module tb;
reg [3:0]a;
reg [3:0]b;
reg en;
wire [3:0]sum;
wire carry;

adder_subtractor dut(a,b,en,sum,carry);
initial
begin

a= 4'b1010;
b = 4'b0101;
en = 1'b0;
#10;
$display("a=%b, b = %b , en = %b, sum = %b, carry = %b",a,b,en,sum,carry);
en = 1'b1;
#10;
$display ("a=%b, b=%b, en=%b, difference= %b, borrow=%b",a,b,en,sum,carry);

a= 4'b1110;
b = 4'b0111;
en = 1'b0;
#10;
$display("a=%b, b = %b , en = %b, sum = %b, carry = %b",a,b,en,sum,carry);

en = 1'b1;
#10;
$display ("a=%b, b=%b, en=%b, difference= %b, borrow=%b",a,b,en,sum,carry);

a= 4'b0010;
b = 4'b0001;
en = 1'b0;
#10;
$display("a=%b, b = %b , en = %b, sum = %b, carry = %b",a,b,en,sum,carry);

en = 1'b1;
#10;
$display ("a=%b, b=%b, en=%b, difference= %b, borrow=%b",a,b,en,sum,carry);

a= 4'b1111;
b = 4'b1111;
en = 1'b0;
#10;
$display("a=%b, b = %b , en = %b, sum = %b, carry = %b",a,b,en,sum,carry);

en = 1'b1;
#10;
$display ("a=%b, b=%b, en=%b, difference= %b, borrow=%b",a,b,en,sum,carry);



a= 4'b0101;
b = 4'b1110;
en = 1'b0;
#10;
$display("a=%b, b = %b , en = %b, sum = %b, carry = %b",a,b,en,sum,carry);

en = 1'b1;
#10;
$display ("a=%b, b=%b, en=%b, difference= %b, borrow=%b",a,b,en,sum,carry);

$finish;
end

endmodule