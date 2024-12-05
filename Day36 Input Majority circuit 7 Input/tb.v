module tb;
reg [7:0]in;
wire out;

majority_input dut(in,out);

initial
begin
in= 7'd99; #10;
in= 7'd28; #10;
in= 7'd119; #10;
in= 7'd101; #10;
in= 7'd32; #10;
in= 7'd45; #10;
in= 7'd76; #10;
in= 7'd1; #10;
in= 7'd75; #10;
end

initial
begin
$monitor("%b is a majority input of number %b",out,in);
#80 $finish;
end
endmodule