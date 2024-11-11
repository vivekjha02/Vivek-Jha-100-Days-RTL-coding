module ha(a,b,sum,carry);
input a,b;
output sum,carry;
wire [2:0]w;
nand n1(w[0],a,b);
nand n2(w[1],w[0],a);
nand n3(w[2],w[0],b);
nand n4(sum,w[1],w[2]);
nand n5(carry,w[0],w[0]);

endmodule