module tb;
reg a;
wire not_g;

decoder_not dut(a,not_g);

initial
begin
a=0;
#5 a=1;
#5 a=0;
#5 a=1;
#10 $finish;
end

initial
begin
$monitor("a=%b, not_g=%b",a,not_g);
end
endmodule