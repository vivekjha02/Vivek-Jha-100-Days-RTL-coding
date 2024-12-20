`timescale 1ns / 1ps

module tb;
reg clk,rst,D;
wire Qsr, Qjk, Qt;

  D_using_SR_JK_T dut(clk,rst,D,Qsr, Qjk, Qt);
  
  initial begin 
  clk=0;
  D=0;
  forever #4 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;  
     rst=0;
    forever #10 D= ~D;
    end 
    
    initial begin
    $monitor("\t clk: %d  D: %d  Qsr: %d  Qjk: %d  Qt: %d", clk, D, Qsr, Qjk, Qt);
    #80 $finish;
    end
endmodule
