module fa_tb;
reg a,b,c; 
wire sum, carry;
//reg clk;
fa dut (a,b,c,sum,carry);

//always #5 clk = ~clk;
initial
begin
//clk = 0 ;

a= 1'b0; b = 1'b0; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);
#5 a= 1'b0; b = 1'b0; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);
#5 a= 1'b0; b = 1'b1; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);
#5 a= 1'b0; b = 1'b1; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);
#5 a= 1'b1; b = 1'b0; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);
#5 a= 1'b1; b = 1'b0; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);
#5 a= 1'b1; b = 1'b1; c= 1'b0;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);
#5 a= 1'b1; b = 1'b1; c= 1'b1;
$strobe("a =%b; b =%b, c=%b; sum =%b, carry =%b",a,b,c,sum,carry);


#60 $finish;
end

//always @(posedge clk)
//begin
//$display("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
//end
endmodule