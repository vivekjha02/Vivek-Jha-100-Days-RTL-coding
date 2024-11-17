module tb;
    reg [3:0]a,b;
	wire [7:0]mul_out;

    multiplier dut(a, b, mul_out);
		always begin
			
			a=$random;
			b=$random;
            #10;
		end
    initial
    begin $monitor("%0d * %0d = %0d ",a, b, mul_out);
    #100 $finish;
    end
endmodule
