module tb;
reg en,rst,S,R;
wire Q;

SRlatch dut(en,rst,S,R,Q);

initial
begin

rst = 1;
en = 0;
S=0;
R=0; #10;

rst =0;
en =1;

end

always begin

S=0; R=0; #10;
S=0; R=1; #10;
S=1; R=0; #10;
S=1; R=1; #10;
end

initial begin
$monitor ("en: %b  S:%b  R:%b Q:%b",en,S,R,Q);
#100 $finish;
end

endmodule