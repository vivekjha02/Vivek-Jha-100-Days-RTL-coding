module logic_gates(a,b,or_g, and_g, not_g, nor_g, nand_g, xor_g ,xnor_g);
input a,b;
output or_g, and_g, not_g, nor_g, nand_g, xor_g ,xnor_g;

or orgate(or_g, a,b);
and andgate(and_g, a,b);
not notgate(not_g,a);
nor norgate(nor_g,a,b);
nand nandgate(nand_g,a,b);
xor xorgate(xor_g,a,b);
xnor xnorgate(xnor_g,a,b);

endmodule