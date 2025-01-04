module universal_shift_register(clk,rst,shift_left,shift_right,parallel_in,parallel_out);
input clk,rst,shift_left,shift_right;
input [7:0]parallel_in;
output [7:0]parallel_out;

reg [7:0]reg_data;
always @(posedge clk)
begin
if(rst)
reg_data <= 8'b0;
else if(shift_left)
reg_data <= {reg_data[6:0],1'b0};
else if(shift_right)
reg_data <= {1'b0,reg_data[7:1]};
else
reg_data <= parallel_in;
end
assign parallel_out = reg_data;

endmodule