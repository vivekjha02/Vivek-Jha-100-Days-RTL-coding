module decoder2x4(d,y);
input [1:0]d;
output reg [3:0]y;

always @(d)
begin
y=0;
case(d)
2'b00: y[0]=1'b1;
2'b01: y[1]=1'b1;
2'b10: y[2]=1'b1;
2'b11: y[3]=1'b1;
endcase
end
endmodule

module decoder_nor(a,b,nor_g);
input a,b;
output nor_g;
wire [3:0]w;
decoder2x4 nor_gate({a,b},w);
assign nor_g = w[0];

endmodule







