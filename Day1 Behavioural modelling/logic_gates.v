module logic_gates(a,b,or_g,and_g,nand_g,nor_g,not_g,xor_g,xnor_g);
input a,b;
output reg or_g,and_g,nand_g,nor_g,not_g,xor_g,xnor_g;

always @(*)
begin 
or_g = a|b;
and_g = a&b;
nor_g = ~(a|b);
nand_g = ~(a&b);
not_g = ~a;
xor_g = a^b;
xnor_g = ~(a^b);
end
endmodule