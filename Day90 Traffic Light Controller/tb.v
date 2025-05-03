module tb;
reg sensor, clk,clr;
wire [1:0] highway, small_road;

traffic_light_control dut(highway, small_road, sensor,clk,clr);

initial begin
clk = 1'b0;
forever #10 clk = ~clk;

end

initial
begin
clr = 1'b1;
sensor = 1'b0;
#20 clr = 1'b0;
#10 sensor = 1'b1;
#50 sensor = 1'b0;
#70 sensor = 1'b1;
#60 $stop;
end
endmodule
