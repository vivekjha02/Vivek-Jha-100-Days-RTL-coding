module demux1x2(i,s,y0,y1);
input i;
input s;
output y0,y1;

assign {y0,y1}= s?{1'b0,i}:{i,1'b0};

endmodule

module demux_and(a,b,y);
input a,b;
output y;
wire w;

demux1x2 d1(b,a,w,y);
endmodule