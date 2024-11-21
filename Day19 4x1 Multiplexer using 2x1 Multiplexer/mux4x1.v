module mux2X1(i,s,y);
input [1:0]i;
input s;
output y;

assign y = s?i[1]:i[0];

endmodule

module mux4x1 (i,s,y);
input [3:0]i;
input [1:0]s;
output y;
wire [1:0]w;
mux2X1 m1(i[1:0],s[0],w[0]); 
mux2X1 m2(i[3:2],s[0],w[1]);
mux2X1 m3(w,s[1],y);


endmodule