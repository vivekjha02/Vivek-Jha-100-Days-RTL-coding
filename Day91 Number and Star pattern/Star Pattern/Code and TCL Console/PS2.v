module pattern_star2;

integer i,j;

initial begin
for (i=1; i<=10; i=i+1)begin
for (j=0; j<=10-i; j=j+1)begin
$write("*");
end
$display("");
end
end
endmodule