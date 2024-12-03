module tb;
reg a,b;
wire xor_g,xnor_g;

decoder_xor_xnor dut(a,b,xor_g,xnor_g);

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
$monitor("a=%b, b=%b, xor_g=%b, xnor_g=%b",a,b,xor_g,xnor_g);
end
endmodule