
module tb;
reg a,b;
wire or_g,and_g,nand_g,nor_g,not_g,xor_g,xnor_g;
logic_gates dut (a,b,or_g,and_g,nand_g,nor_g,not_g,xor_g,xnor_g);
initial
begin

a= 1'b0; b =1'b0;
#10 a= 1'b0; b =1'b1;
#10 a= 1'b1; b =1'b0;
#10 a= 1'b1; b =1'b1;

#10 $stop;
end
endmodule
