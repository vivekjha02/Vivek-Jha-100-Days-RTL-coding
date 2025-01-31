module test_bench;
reg [7:0] a;
reg [7:0] b;
reg [3:0] sel;
wire [7:0] result;
wire e_bit;

ALU dut(a, b, sel, result, e_bit);

initial begin
    a = 8'd15;
    b = 8'd3;
    sel = 0;
    $display(" Inputs are: %b and %b \n", a,b);
end
always #20 sel=sel+1;
      
initial begin
$monitor("\t Result= %b \n", result);
#320 $finish;
end
endmodule
