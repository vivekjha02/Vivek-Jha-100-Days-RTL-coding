module lfsr(clk,rst,lfsr_out);
input clk,rst;
output [7:0]lfsr_out;
reg [7:0]data;

always @(posedge clk)
begin
if(rst)
data <= 8'hff;
else
data <= {data[6:0],data[7]^data[5]^data[3]^data[1]};
end

assign lfsr_out = data;

endmodule