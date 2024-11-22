module tb;
reg a,b;
wire yand,yor,ynot;
mux_gates dut(a,b,yand,yor,ynot);

always
begin

a=$random;
b=$random;
#10;
end

initial begin
$monitor("a=%b, b=%b, yand=%b, yor=%b, ynot=%b",a,b,yand,yor,ynot);
#100 $finish;
end

endmodule