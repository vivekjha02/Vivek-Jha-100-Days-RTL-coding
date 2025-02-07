module tb;
reg [8:0]number;
wire is_armstrong ;

armstrong dut(number,is_armstrong);

always
begin

number = 9'd153; #10;
number = 9'd300; #10;
number = 9'd370; #10;
number = 9'd190; #10;
number = 9'd407; #10;
number = 9'd420; #10;

$finish;

end
endmodule
