module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;

assign sum = a^b;
assign carry = a&b;
endmodule


module vedic_mul_2x2 (a,b,out);
input [1:0]a,b;
output [3:0]out;
wire [3:0]w;

and a1 (out[0],a[0],b[0]);
and a2 (w[0],a[0],b[1]);
and a3 (w[1],a[1],b[0]);
and a4 (w[2],a[1],b[1]);

half_adder h1(w[0],w[1],out[1],w[3]);
half_adder h2(w[2],w[3],out[2],out[3]);
endmodule
