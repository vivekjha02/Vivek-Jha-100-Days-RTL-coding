module tb;
reg in1,in2;
wire out;
nand_gate dut(in1,in2,out);
initial
begin

in1 = 1'b0;
in2 = 1'b0;

#100 $stop;
end
begin
always #5 in1 = ~in1;
always #10 in2 = ~in2;
end
endmodule