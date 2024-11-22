module mux2X1(i,s,y);
input [1:0]i;
input s;
output y;

assign y = s?i[1]:i[0];

endmodule

module mux_gates(a,b,yand,yor,ynot);
input a,b;
output yand,yor,ynot;

mux2X1 mand({b,1'b0},a,yand); 
mux2X1 mor({1'b1,b},a,yor);
mux2X1 mnot({1'b0,1'b1},a,ynot);
endmodule