`timescale 1ns / 1ps

module tb;
    reg [3:0]a,b;
    reg cin;
    wire[3:0]sum;
    wire carry ;
    carry_select dut(a,b,cin,sum,carry);

    initial begin
            cin=1'b0;a=4'b1011;b=4'b1010;
        #10 cin=1'b1;a=4'b1001;b=4'b1110;
        #10 cin=1'b0;a=4'b0001;b=4'b1010;
        #10 cin=1'b1;a=4'b1100;b=4'b0011;
    end

    initial begin 
	$monitor("a=%b b=%b carry=%b sum=%b carry=%b",a,b,cin,sum,carry);
      #40 $finish;
    end 
endmodule
