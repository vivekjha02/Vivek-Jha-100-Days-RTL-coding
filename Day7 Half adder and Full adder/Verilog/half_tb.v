module half_tb;
reg a,b; 
wire sum, carry;
//reg clk;
half_adder dut (a,b,sum,carry);

//always #5 clk = ~clk;

initial
begin
//clk = 0 ;

#5 a= 1'b0; b = 1'b0; 
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
#5 a= 1'b0; b = 1'b1;
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
#5 a= 1'b1; b = 1'b0;
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
#5 a= 1'b1; b = 1'b1;
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);


#60 $finish;
end

//always @(posedge clk)
//begin
//$display("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
//end
endmodule