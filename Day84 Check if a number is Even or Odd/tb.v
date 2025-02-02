module tb;
reg [3:0]number;
wire even_odd;

even_or_odd dut(number,even_odd);

always
begin
number = 4'd6;
#10 number = 4'd3;
#10 number = 4'd7;
#10 number = 4'd8;
#10 number = 4'd15;
#10 number = 4'd13;
#10 number = 4'd12;
#10 number = 4'd11;
#10 number = 4'd10;
#10 number = 4'd9;
#10;
end

initial
#90 $finish;
endmodule
