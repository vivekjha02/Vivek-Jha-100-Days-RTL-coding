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

module decoder_nand(a,b,nand_g);
input a,b;
output nand_g;
wire [3:0]w;
decoder2x4 nand_gate({a,b},w);
assign nand_g = w[0]|w[1]|w[2];

endmodule







