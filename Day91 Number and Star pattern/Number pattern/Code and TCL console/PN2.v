module number_pattern_2;

integer i,j;

initial begin
for(i=0; i<10; i=i+1)
begin
for(j=1; j<=10-i; j=j+1)
begin
$write("%0d", j);
end
$display("");
end
end
endmodule