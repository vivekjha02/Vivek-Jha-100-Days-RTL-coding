module prime(number, prime_or_composite);
input [7:0]number;
output reg prime_or_composite;

parameter PRIME = 1'b1, COMPOSITE = 1'b0;

always @(number)
begin
prime_or_composite = check_prime(number);

if(prime_or_composite==1'b1)
$display("\t %d is a Prime number",number);
else
$display("\t %d is a Composite number",number);
end

function automatic integer check_prime;
input [7:0]num;
integer i;
integer count;
begin
count = 0;
for(i=2; i<num/2; i=i+1) begin
if(num%i == 0) 
begin
count = count+1;
end
end

if(count == 0) 
check_prime = PRIME;
else
check_prime = COMPOSITE;
end
endfunction
endmodule