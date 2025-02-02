`timescale 1ns / 1ps

module test_bench;
reg [7:0] number;
wire prime_or_composite;

prime dut(number, prime_or_composite);

always begin
number=8'd36;
#10;
number=8'd71;
#10;
number=8'd49;
#10;
number=8'd11;
#10;
number=8'd3;
#10;
number=8'd91;
#10;
#10;
end

initial #60 $finish;
endmodule
