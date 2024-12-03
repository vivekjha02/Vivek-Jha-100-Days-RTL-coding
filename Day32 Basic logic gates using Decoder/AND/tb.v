module tb;
reg a,b;
wire and_g;

decoder_and dut(a,b,and_g);

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
$monitor("a=%b, b=%b, and_g=%b",a,b,and_g);
end
endmodule