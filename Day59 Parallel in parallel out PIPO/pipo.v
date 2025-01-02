module dff(clk,rst,d,q);
input clk,rst,d;
output reg q;

always @(posedge clk)
begin
if(rst)
q<=1'b0;
else
q<=d;
end
endmodule

module pipo(clk,rst,parallel_in,parallel_out);
input clk,rst;
input [2:0]parallel_in;
output [2:0]parallel_out;

dff d1(clk,rst,parallel_in[2],parallel_out[2]);
dff d2(clk,rst,parallel_in[1],parallel_out[1]);
dff d3(clk,rst,parallel_in[0],parallel_out[0]);

endmodule