module mux2X1(i,s,y);
input [1:0]i;
input s;
output y;

assign y = s?i[1]:i[0];

endmodule

module mux_universal(a,b,ynand,ynor);
input a,b;
output ynand,ynor;

mux2X1 mnand({b,1'b1},a,ynand); 
mux2X1 mnor({1'b0,(~b)},a,ynor);
endmodule


