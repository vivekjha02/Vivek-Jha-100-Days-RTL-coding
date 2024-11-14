module fa (a,b,c,sum,carry);
input a,b,c;
output reg sum,carry;

always @(*)
begin
sum = a^b^c;
carry = (a&b)|(b&c)|(c&b);
end
endmodule

module mux(a,b,sel,y);
input a,b,sel;
output reg y;

always @(*)
begin
y = (~sel&a)|(sel&b);
end
endmodule

module carry_select (a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output [3:0]sum;
output carry;

wire [16:1]w;

fa fa1 (a[0], b[0], 1'b0, w[1], w[2]);
fa fa2 (a[1], b[1], w[2], w[3], w[4]);
fa fa3 (a[2], b[2], w[4], w[5], w[6]);
fa fa4 (a[3], b[3], w[6], w[7], w[8]);

fa fa5 (a[0], b[0], 1'b1, w[9], w[10]);
fa fa6 (a[1], b[1], w[10], w[11], w[12]);
fa fa7 (a[2], b[2], w[12], w[13], w[14]);
fa fa8 (a[3], b[3], w[14], w[15], w[16]);

 mux m1(w[1], w[9], cin, sum[0]);
 mux m2(w[3], w[11], cin, sum[1]);
 mux m3(w[5], w[13], cin, sum[2]);
 mux m4(w[7], w[15], cin, sum[3]);
 mux m5(w[8], w[16], cin, carry);

endmodule

