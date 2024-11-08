module nor_gate(a,b,out);
input a,b;
output out;
wire w;

supply1 vdd;
supply0 gnd;

pmos(out,w,b);
pmos (w,vdd,a);
nmos (out,gnd,a);
nmos(out,gnd,b);

endmodule