module mux2to1(i,s,y);
input [1:0]i;
input s;
output y;
assign y = s?i[1]:i[0];
endmodule

module mux4to1(i,s,y);
input [3:0]i;
input [1:0]s;
output y;
wire [1:0]w;
mux2to1 m1(i[1:0],s[0],w[0]);
mux2to1 m2(i[3:2],s[0],w[1]);
mux2to1 m3(w,s[1],y);
endmodule

module mux8to1(i,s,y);
input [7:0]i;
input [2:0]s;
output y;
wire [1:0]w;
mux4to1 m1(i[3:0],s[1:0],w[0]);
mux4to1 m2(i[7:4],s[1:0],w[1]);
mux2to1 m3(w,s[2],y);
endmodule

module barrel_shifter(data,amt,out);
input [7:0]data;
input [2:0]amt;
output [7:0]out;

mux8to1 m0(data,amt,out[0]);
mux8to1 m1({data[0],data[7:1]},amt,out[1]);
mux8to1 m2({data[1:0],data[7:2]},amt,out[2]);
mux8to1 m3({data[2:0],data[7:3]},amt,out[3]);
mux8to1 m4({data[3:0],data[7:4]},amt,out[4]);
mux8to1 m5({data[4:0],data[7:5]},amt,out[5]);
mux8to1 m6({data[5:0],data[7:6]},amt,out[6]);
mux8to1 m7({data[6:0],data[7]},amt,out[7]);

endmodule
