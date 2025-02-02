module even_or_odd(number,even_odd);
input [3:0]number;
output reg even_odd;

parameter EVEN = 1'b1, ODD = 1'b0;

always @(number)
begin

even_odd = check_even_odd(number);

if(even_odd == 1'b1)
$display("\t %d is an Even Number",number);

else
$display("\t %d is an Odd number",number);
end

function check_even_odd;
input [3:0]num;
begin
if(num%2==0)
check_even_odd = EVEN;
else
check_even_odd = ODD;
end
endfunction

endmodule