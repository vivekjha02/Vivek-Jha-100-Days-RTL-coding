module tb;
reg [3:0]data;
wire [3:0]out;
complement_2s dut(data,out);
initial
begin
data = 4'd0; #10;
data = 4'd1; #10;
data = 4'd2; #10;
data = 4'd3; #10;
data = 4'd4; #10;
data = 4'd5; #10;
data = 4'd6; #10;
data = 4'd7; #10;
data = 4'd8; #10;
data = 4'd9; #10;
data = 4'd10; #10;
data = 4'd11; #10;
data = 4'd12; #10;
data = 4'd13; #10;
data = 4'd14; #10;
data = 4'd15; #10;

end

initial
begin
$monitor ("Input = %b; 2's complement = %b",data,out);
#160 $finish;
end

endmodule