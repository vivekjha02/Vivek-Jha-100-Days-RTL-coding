module SRlatch(en,rst,S,R,Q);
input en,rst,S,R;
output reg Q;

always @(*)
begin
if(rst)
Q <= 1'b0;
else if(en)
begin
case({S,R})
2'b00: Q<=Q;
2'b01: Q<=0;
2'b10: Q<=1;
default: Q<=2'bxx;
endcase
end
end
endmodule
