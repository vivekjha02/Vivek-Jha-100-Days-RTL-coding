module fs_tb;
reg a,b,c; 
wire difference,borrow;
//reg clk;
fs dut (a,b,c,difference,borrow);

//always #5 clk = ~clk;
initial
begin
//clk = 0 ;

a= 1'b0; b = 1'b0; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);
#5 a= 1'b0; b = 1'b0; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);
#5 a= 1'b0; b = 1'b1; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);
#5 a= 1'b0; b = 1'b1; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);
#5 a= 1'b1; b = 1'b0; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);
#5 a= 1'b1; b = 1'b0; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);
#5 a= 1'b1; b = 1'b1; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);
#5 a= 1'b1; b = 1'b1; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; difference =%b, borrow =%b",a,b,c,difference,borrow);


#60 $finish;
end

//always @(posedge clk)
//begin
//$display("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
//end
endmodule