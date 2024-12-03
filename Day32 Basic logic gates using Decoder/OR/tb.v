module tb;
reg a,b;
wire or_g;

decoder_or dut(a,b,or_g);

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
$monitor("a=%b, b=%b, or_g=%b",a,b,or_g);
end
endmodule