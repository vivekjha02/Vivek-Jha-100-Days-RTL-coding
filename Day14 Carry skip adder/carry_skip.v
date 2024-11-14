

module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry; 
    assign sum = a ^ b ^ cin;
    assign carry = (a&b) | cin&(a^b);
endmodule

module parallel_adder( a,b,cin,sum,carry);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output carry;
   
   
    wire [2:0] c;

    full_adder fa1(a[0], b[0], cin, sum[0], c[0]);
    full_adder fa2(a[1], b[1], c[0], sum[1], c[1]);
    full_adder fa3(a[2], b[2], c[1], sum[2], c[2]);
    full_adder fa4(a[3], b[3], c[2], sum[3], carry);
endmodule

module carry_skip_adder( a,b,cin,sum,carry );
   
    input [3:0]a, b;
    input cin;
   output [3:0]sum;
    output carry;
    
    wire c, sel;
    wire [3:0]p;

    parallel_adder pa(a, b, cin, sum, c);

    xor (p[0], a[0], b[0]),
        (p[1], a[1], b[1]),
        (p[2], a[2], b[2]),
        (p[3], a[3], b[3]);
        
    and (sel, p[0],p[1], p[2], p[3]);

    assign carry = sel ? cin : c;
endmodule
