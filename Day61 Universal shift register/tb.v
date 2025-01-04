module tb;
  reg clk, rst, shift_left, shift_right;
  reg [7:0] parallel_in;
  wire [7:0] parallel_out;
  
  universal_shift_register dut (clk, rst, shift_left, shift_right, parallel_in, parallel_out);

  initial begin
    clk = 1'b0;
    forever #5 clk= ~clk;
  end

  initial begin
    rst = 1'b1;
    shift_left = 1'b0;
    shift_right = 1'b0;
    parallel_in = 8'he5;
    #10;
    
    rst = 1'b0;
    #10;

    shift_left = 1'b1;
    shift_right = 1'b0;
    #10;

    shift_left = 1'b0;
    shift_right = 1'b1;
    #10;
        
    shift_left = 1'b1;
    shift_right = 1'b0;
    #10;
    
    shift_left = 1'b1;
    shift_right = 1'b0;
    #10;

    shift_left = 1'b0;
    shift_right = 1'b1;
  end
  
  initial begin
  $monitor("\t input: %b right shift: %b  left shift: %b  output: %b", parallel_in, shift_right, shift_left, parallel_out);
  #75 $finish;
  end
endmodule