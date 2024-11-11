module hs_tb;
reg a,b; 
wire difference, borrow;
//reg clk;
hs dut (a,b,difference,borrow);

//always #5 clk = ~clk;

initial
begin
//clk = 0 ;

a= 1'b0; b = 1'b0; 
$strobe("a =%b; b =%b, difference =%b, borrow =%b",a,b,difference,borrow);
#5 a= 1'b0; b = 1'b1;
$strobe("a =%b; b =%b, difference =%b, borrow =%b",a,b,difference,borrow);
#5 a= 1'b1; b = 1'b0;
$strobe("a =%b; b =%b, difference =%b, borrow =%b",a,b,difference,borrow);
#5 a= 1'b1; b = 1'b1;
$strobe("a =%b; b =%b, difference =%b, borrow =%b",a,b,difference,borrow);


#10 $finish;
end

//always @(posedge clk)
//begin
//$display("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
//end
endmodule