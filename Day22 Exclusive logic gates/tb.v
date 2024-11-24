module tb;
reg a,b;
wire xor_out, xnor_out;

gates_mux dut(a,b,xor_out,xnor_out);

always
begin
a=$random;
b=$random;
#10;
end
initial
begin
$monitor("a=%b; b=%b; xor_out=%b; xnor_out=%b",a,b,xor_out,xnor_out);
#200 $finish;
end
endmodule