module tb;
reg a,b;
wire nor_g;

decoder_nor dut(a,b,nor_g);

initial
begin
a=1'b0; b=1'b0;
#5 a=1'b0; b=1'b1;
#5 a=1'b1; b=1'b0;
#5 a=1'b1; b=1'b1;
#10 $finish;
end

initial
begin
$monitor("a=%b, b=%b, nor_g=%b",a,b,nor_g);
end
endmodule