module number_pattern_3;

integer i,j;
integer n=1;

initial begin
for(i=0; i<=8; i=i+1)
begin
for(j=0; j<=i; j=j+1)
begin
$write("%0d", n+i);
end
$display("");
end
end
endmodule