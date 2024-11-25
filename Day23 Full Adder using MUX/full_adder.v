module mux4to1(i,s,y);
input [0:3]i;
input [0:1]s;
output reg y;

always@(*)
case(s)
2'b00: y<=i[0];
2'b01: y<=i[1];
2'b10: y<=i[2];
2'b11: y<=i[3];
endcase
endmodule

module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;

mux4to1 f1({cin,~cin,~cin,cin},{a,b},sum);
mux4to1 f2({1'b0,cin,cin,1'b1},{a,b},carry);
endmodule

