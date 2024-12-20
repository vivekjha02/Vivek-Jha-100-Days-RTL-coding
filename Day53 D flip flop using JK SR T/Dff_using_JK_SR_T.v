module D_using_SR_JK_T(clk,rst,D,Qsr,Qjk,Qt);
input clk,rst,D;
output Qsr,Qjk,Qt;

wire w;

SR_flipflop SR(clk,rst,D,~D,Qsr);

JK_flipflop JK(D,~D,clk,rst,Qjk);

assign w = D^Qt;

T_flipflop T(w,clk,rst,Qt);

endmodule