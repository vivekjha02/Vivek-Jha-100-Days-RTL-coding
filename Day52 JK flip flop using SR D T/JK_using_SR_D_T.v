module JK_using_SR_D_T(J,K,clk,rst,Qsr,Qd,Qt);
input J,K,clk,rst;
output Qsr,Qd,Qt;
wire w1,w2,w3,w4,w5,w6,w7,w8;

assign w1 = J&(~Qsr);
assign w2 = K&Qsr;
SR_flipflop SR(clk,rst,w1,w2,Qsr);

assign w3 = J&(~Qd);
assign w4 = (~K) & Qd;
assign w5 = w3|w4;
D_flipflop D(clk,rst,w5,Qd);

assign w6 = J &(~Qt);
assign w7 = K&Qt;
assign w8 = w6|w7;
T_flipflop T(w8,clk,rst,Qt);

endmodule