module demux1x2(i,s,y0,y1);
input i;
input s;
output y0,y1;

assign {y0,y1}= s?{1'b0,i}:{i,1'b0};

endmodule

module demux_nand(a,b,y);
input a,b;
output y;
wire w1,w2,w3;

demux1x2 d1(b,a,w1,w2);
demux1x2 d2(1'b1,w2,y,w3);
endmodule