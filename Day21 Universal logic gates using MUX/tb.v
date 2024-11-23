module tb;
reg a,b;
wire ynand,ynor;
mux_universal dut(a,b,ynand,ynor);

always
begin
a=$random;
b=$random;
#10;
end

initial
begin
$monitor("a=%b, b=%b, ynand=%b, ynor=%b",a,b,ynand,ynor);
//#100 $finish;
end
endmodule