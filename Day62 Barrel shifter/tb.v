module tb;
reg [7:0]data;
reg [2:0]amt;
wire [7:0]out;

barrel_shifter dut(data,amt,out);

initial
begin
data = 8'hf0;
amt = 0;
forever #10 amt = amt+1;
end

initial
begin
$monitor("\t\t data: = %b shifting amount: %d output = %b",data,amt,out);
#80 $finish;
end
endmodule