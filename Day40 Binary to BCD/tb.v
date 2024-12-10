module tb;
reg [7:0]data;
wire [3:0]bit0,bit1,bit2;
wire [11:0]BCD;

binary2bcd dut(data,bit0,bit1,bit2,BCD);

always
begin
data= $random; #10;
end

initial
begin

$monitor("data=%d  BCD=%b",data,BCD);
#80 $finish;

end
endmodule