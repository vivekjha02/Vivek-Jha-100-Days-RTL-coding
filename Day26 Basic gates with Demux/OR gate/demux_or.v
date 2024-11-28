module demux1x2(i,s,y0,y1);
input i;
input s;
output y0,y1;

assign {y0,y1}= s?{1'b0,i}:{i,1'b0};

endmodule

module demux_or(a,b,y);
input a,b;
output y;
wire w0,w1,w2;

demux1x2 d1(~a,b,w0,w1);
demux1x2 d2(1'b1,w0,y,w2);
endmodule
