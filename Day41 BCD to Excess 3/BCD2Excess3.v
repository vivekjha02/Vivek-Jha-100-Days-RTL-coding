module bcd2excess3 (bcd, excess3);
input [3:0]bcd;
output reg [3:0]excess3;

always @(bcd)
begin
case (bcd)
4'b0000: excess3 = 4'b0011;
4'b0001: excess3 = 4'b0100;
4'b0010: excess3 = 4'b0101;
4'b0011: excess3 = 4'b0110;
4'b0100: excess3 = 4'b0111;
4'b0101: excess3 = 4'b1000;
4'b0110: excess3 = 4'b1001;
4'b0111: excess3 = 4'b1010;
4'b1000: excess3 = 4'b1011;
4'b1001: excess3 = 4'b1100;
default: excess3 = 4'bxxxx;

endcase
end
endmodule