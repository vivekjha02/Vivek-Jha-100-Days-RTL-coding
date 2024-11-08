module tb;
reg in;
wire out;
not_gate dut(in,out);
initial
begin
in = 1'b0;


#100 $stop ;
end
begin
always #5 in = ~in;
end
endmodule