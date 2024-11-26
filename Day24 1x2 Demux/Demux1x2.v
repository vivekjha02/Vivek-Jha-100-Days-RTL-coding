module Demux1x2(i,s,y0,y1);
input i,s;
output y0,y1;

assign {y0,y1} = s?{1'b0,i}:{i,1'b0};

endmodule