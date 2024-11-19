module tb;
    reg [3:0]dividend,divisor;
    wire [3:0]quotient,remainder;

    divide dut(dividend,divisor,quotient,remainder);
		always begin
			
			dividend =$random;
			divisor =$random;
            #10;
		end
    initial
    begin $monitor("%0d / %0d = %0d with remainder %0d ",dividend,divisor,quotient,remainder);
    #100 $finish;
    end
endmodule
