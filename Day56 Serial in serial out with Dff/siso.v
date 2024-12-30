module dff(clk,rst,d,q);
input clk,rst,d;
output reg q;

always @(posedge clk)
begin
if(rst)
q <=1'b0;
else
q <=d;
end
endmodule

module siso(clk,rst,serial_in,serial_out);
input clk,rst,serial_in;
output serial_out;
wire q1,q0;

dff d1(clk,rst,serial_in,q1);
dff d2(clk,rst,q1,q0);
dff d3(clk,rst,q0,serial_out);

endmodule

