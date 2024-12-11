
module BCD_to_7segment(BCD, segment7);
    input [3:0]BCD;
    output [6:0]segment7;
    
    wire a,b,c,d,e,f,g;
    
    assign a = BCD[3] | BCD[1] | (BCD[2]~^BCD[0]);
    
    assign b = (~BCD[2])| (BCD[1]~^BCD[0]);
    
    assign c = BCD[2] | (~BCD[1]) | (BCD[0]);
    
    assign d = BCD[3] | ((~BCD[2])&(~BCD[0])) | ((~BCD[2])&BCD[1]) | (BCD[1]&(~BCD[0])) | (BCD[2]&(~BCD[1])&BCD[0]);
    
    assign e = ~BCD[0]&(~BCD[2]|BCD[1]);
    
    assign f = BCD[3] | (BCD[2]&(~BCD[1]|~BCD[0])) | ((~BCD[1])&(~BCD[0]));
    
    assign g = BCD[3] | (BCD[2]&(~BCD[1])) | (BCD[1]&(~BCD[2]|~BCD[0]));
    
    assign segment7= {a,b,c,d,e,f,g};

endmodule
