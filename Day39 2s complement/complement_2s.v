module complement_2s(data,out);
input [3:0]data;
output signed [3:0]out;
wire [3:0]temp;

assign temp = 4'b1111 - data;
assign out = temp + 4'b0001;
endmodule