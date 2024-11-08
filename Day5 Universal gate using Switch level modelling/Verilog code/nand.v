module nand_gate(a,b,out);
input a,b;
output out;
wire w;

supply1 vdd;
supply0 gnd;

pmos(out,vdd,a);
pmos (out,vdd,b);
nmos (out,w,a);
nmos(w,gnd,b);

endmodule