module even_parity_g (in, parity);
input wire [7:0]in;
output wire parity;

assign parity = ^in;

endmodule