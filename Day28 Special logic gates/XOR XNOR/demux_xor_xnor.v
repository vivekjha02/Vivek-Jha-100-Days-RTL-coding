module demux1x2(s,i,y0,y1);
input i,s;
output y0,y1;

assign {y0,y1} = s?{1'b0,i}:{i,1'b0};
endmodule

module demux_xor_xnor(a,b,yxor,yxnor);
input a,b;
output yxor,yxnor;
wire w1,w2,w3,w4;
demux1x2 d1(b,a,w1,w2);
demux1x2 d2(~b,~a,w3,w4);

assign yxor = w1|w3;
assign yxnor = w2|w4;

endmodule