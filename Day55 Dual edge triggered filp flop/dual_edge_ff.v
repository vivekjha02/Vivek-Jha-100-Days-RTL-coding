module dual_edge_ff(clk,rst,d,q);
input clk,rst,d;
output q;
reg q1,q2;


assign q = clk?q1:q2;

always @(posedge clk)
begin
if(rst)
q1<= 1'b0;
else
q1 <= d;
end 

always @(negedge clk)
begin
if(rst)
q2<= 1'b0;
else
q2 <= d;
end 

endmodule