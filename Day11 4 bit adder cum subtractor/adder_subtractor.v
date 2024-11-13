module fa(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum = a^b^c;
assign carry = a&b|b&c|c&a;
endmodule

module adder_subtractor(a,b,en,sum,carry);
input [3:0]a;
input [3:0]b;
input en;
output [3:0]sum;
output carry;
wire [2:0]c;

fa fa1(a[0],(b[0]^en),en,sum[0],c[0]);
fa fa2(a[1],(b[1]^en),c[0],sum[1],c[1]);
fa fa3(a[2],(b[2]^en),c[1],sum[2],c[2]);
fa fa4(a[3],(b[3]^en),c[2],sum[3],carry);

endmodule


