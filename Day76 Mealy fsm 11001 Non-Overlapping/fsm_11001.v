module fsm_11001(din,clk,rst,y);
input din,clk,rst;
output reg y;

reg [2:0]cst,nst;
parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011,S4=3'b100;

always @(posedge clk)
begin
if(rst)
cst <= S0;
else
cst <= nst;
end

always @(cst or din)
begin
case(cst)

S0: if(din==1'b1)
begin
nst<= S1;
y<=1'b0;
end
else
begin
nst<=S0;
y<=1'b0;
end

S1: if(din==1'b1)
begin
nst<=S2;
y<=1'b0;
end
else
begin
nst<=S0;
y<=1'b0;
end

S2: if(din==1'b0)
begin
nst<=S3;
y<=1'b0;
end
else
begin
nst<=S0;
y<=1'b0;
end

S3: if(din==1'b0)
begin
nst<=S4;
y<=1'b0;
end
else
begin
nst<=S0;
y<=1'b0;
end

S4: if(din==1'b1)
begin
nst<=S0;
y<=1'b1;
end
else
begin
nst<=S0;
y<=1'b0;
end

default: nst<=S0;
endcase
end
endmodule