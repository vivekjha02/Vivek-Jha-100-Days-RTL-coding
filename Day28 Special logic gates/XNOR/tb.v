module tb;
reg a,b;
wire yxor,yxnor;

demux_xor_xnor dut (a,b,yxor,yxnor);

initial
begin

a=0; b=0;
#5 a = 0 ; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#5 $finish;
end

initial
begin
$monitor("a=%b, b=%b, yxor=%b, yxnor=%b",a,b,yxor,yxnor);
end
endmodule