module demux1x2(i,s,y0,y1);
input i;
input s;
output y0,y1;

//assign {y0,y1}= s?{1'b0,i}:{i,1'b0};
assign y0 = i&(~s);
assign y1 = i&s;

endmodule

module demux_not(a,y);
input a;
output y;
wire w;

demux1x2 d1(1'b1,a,y,w);
endmodule


