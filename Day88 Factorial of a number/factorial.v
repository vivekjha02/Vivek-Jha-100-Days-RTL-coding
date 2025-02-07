module factorial(n,result);
input [3:0]n;
output reg [31:0]result;

function automatic integer fact;
input integer i;

begin
if(i>1)
fact = i * fact(i-1);
else
fact = 1;
end
endfunction

always @(n)
result = fact(n);
endmodule