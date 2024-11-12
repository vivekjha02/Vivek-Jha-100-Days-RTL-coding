module fa (a,b,c,sum,carry);
input a,b,c;
output sum,carry;

assign sum = a^b^c;
assign carry = (a&b)|(b&c)|(c&a);
endmodule

module parallel_adder (a,b,cin,s,carry);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]s;
output carry;
wire [2:0]c;

fa fa1(a[0],b[0],cin,s[0],c[0]);
fa fa2(a[1],b[1],c[0],s[1],c[1]);
fa fa3(a[2],b[2],c[1],s[2],c[2]);
fa fa4(a[3],b[3],c[2],s[3],carry);

endmodule
