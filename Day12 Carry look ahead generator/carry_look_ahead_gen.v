module carry_look_ahead_gen(a,b,cin,sum,carry);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]sum;
output carry;

wire [3:0]c;
wire p0,p1,p2,p3,g0,g1,g2,g3;

and (g0,a[0],b[0]),(g1,a[1],b[1]),(g2,a[2],b[2]),(g3,a[3],b[3]);
xor (p0,a[0],b[0]),(p1,a[1],b[1]),(p2,a[2],b[2]),(p3,a[3],b[3]);
xor (sum[0],p0,cin),(sum[1],p1,c[0]),(sum[2],p2,c[1]),(sum[3],p3,c[2]);

assign c[0] = g0 | (p0&cin);
assign c[1] = g1|(p1&g0)|(p1&p0&cin);
assign c[2] = g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
assign c[3] = g3| (p3&g2)|(p3&p2&g1)| (p3&p2&p1&g0)|(p3&p2&p1&p0&cin);

assign carry = c[3];

endmodule