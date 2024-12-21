module tb;

reg clk,rst,d;
wire q;
dual_edge_ff dut(clk,rst,d,q);


  initial begin 
  clk=0;
  d=0;
  forever #9 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;  
     rst=0;
    forever #6 d= ~d;
    end 
    
    initial begin
    $monitor("\t\t\t clk: %d  D: %d  Q: %d", clk, d, q);
    #80 $finish;
    end
endmodule
