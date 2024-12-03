module tb;
reg a,b;
wire nand_g;

decoder_nand dut(a,b,nand_g);

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
$monitor("a=%b, b=%b, nand_g=%b",a,b,nand_g);
end
endmodule