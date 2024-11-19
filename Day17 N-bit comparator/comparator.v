module N_bit_comparator(a,b,Lesser,Greater,Equal);
    parameter N=8;
    input [N-1:0]a,b;
    output Lesser,Greater,Equal;
    reg Lesser=0,Greater=0,Equal=0;
    always@(*) begin
        if(a<b)
            begin
                Lesser=1'b1;
                Equal=1'b0;
                Greater=1'b0;
            end
        else if (a>b)
            begin
                Lesser=1'b0;
                Equal=1'b0;    
                Greater=1'b1;
            end
        else
            begin
                Lesser=1'b0;
                Equal=1'b1;
                Greater=1'b0;
            end
    end
endmodule
