module hs(a,b,difference,borrow);
input a,b;
output difference, borrow;
wire [2:0]w;
nand n1(w[0],a,b);
nand n2(w[1],w[0],a);
nand n3(w[2],w[0],b);
nand n4(difference,w[1],w[2]);
nand n5(borrow,w[2],w[2]);

endmodule