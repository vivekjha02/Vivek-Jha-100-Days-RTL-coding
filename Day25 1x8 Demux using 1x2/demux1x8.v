module demux1x2(s,i,y0,y1);
input i,s;
output y0,y1;

assign {y0,y1} = s?{1'b0,i}:{i,1'b0};

endmodule

module demux1x8(sel,i,y0, y1, y2, y3, y4, y5, y6, y7);
    input [2:0]sel;
    input  i;
    output y0, y1, y2, y3, y4, y5, y6, y7;
    
    wire [5:0]z;
    
    demux1x2 d1(sel[2], i, z[0], z[1]);

    demux1x2 d2(sel[1], z[0], z[2], z[3]);
    demux1x2 d3(sel[1], z[1], z[4], z[5]);

    demux1x2 d4(sel[0], z[2], y0, y1);
    demux1x2 d5(sel[0], z[3], y2, y3);
    demux1x2 d6(sel[0], z[4], y4, y5);  
    demux1x2 d7(sel[0], z[5], y6, y7);
endmodule