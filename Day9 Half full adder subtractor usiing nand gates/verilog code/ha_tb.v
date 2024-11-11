module ha_tb;
reg a,b; 
wire sum, carry;
ha dut (a,b,sum,carry);


initial
begin

a= 1'b0; b = 1'b0; 
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
#5 a= 1'b0; b = 1'b1;
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
#5 a= 1'b1; b = 1'b0;
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);
#5 a= 1'b1; b = 1'b1;
$strobe("a =%b; b =%b, sum =%b, carry =%b",a,b,sum,carry);


#60 $finish;
end
endmodule