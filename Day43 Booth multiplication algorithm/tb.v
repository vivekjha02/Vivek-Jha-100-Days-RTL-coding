module tb;
reg signed [3:0]Q,M;
wire signed [7:0]result;

booth_algorithm dut (Q,M,result);

initial
begin
Q=3; M=7; #10;
Q=-3; M=7; #10;
Q=3; M=-7; #10;
Q=-3; M=-7; #10;
Q=5; M=6; #10;
Q=-5; M=6; #10;
Q=5; M=-6; #10;
Q=-5; M=-6; #10;
end

initial
begin
$monitor ("%d * %d = %d",Q,M,result);
#90 $finish;
end

initial
begin
$monitor ("%b * %b = %b",Q,M,result);
#90 $finish;
end

endmodule