module tb;
reg a,b;
wire y;

demux_and dut(a,b,y);

initial begin

a=0; b=0; #5 
$display("a=%b, b=%b, y=%b",a,b,y);
a=0; b=1; #5 
$display("a=%b, b=%b, y=%b",a,b,y);
a=1; b=0; #5 
$display("a=%b, b=%b, y=%b",a,b,y);
a=1; b=1; #5
$display("a=%b, b=%b, y=%b",a,b,y);

 #10 $finish;
end

endmodule