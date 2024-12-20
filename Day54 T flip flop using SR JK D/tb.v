`timescale 1ns / 1ps

module tb;
reg clk,rst,t;
wire Q_sr, Q_jk, Q_d;
  T_using_SR_JK_D dut(clk, rst, t, Q_sr, Q_jk, Q_d);
  
  initial 
  begin 
       clk=0;
       t=0;
       forever #4 clk=~clk;
  end
    
  initial 
      begin
          rst=1;
          #10;
          rst=0;
          forever
          begin   
          #10 t = 1'b1;
          #20  t = 1'b0; 
          end
      end
    initial begin
    $monitor("\t clock: %b  T: %b  Q_sr: %d  Q_jk: %d  Q_d: %b",clk,t,Q_sr, Q_jk, Q_d);
    #100$finish;
    end
endmodule
