module even_parity_c(in,parity,error);
input [7:0]in;
input parity;
output  error;

assign error = ^({parity,in});

endmodule