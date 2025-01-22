
module fsm_1011(clk,rst,din,y);
    input clk,rst,din;
    output reg y;

parameter	S0=3'b000,
            S1=3'b001,
            S2=3'b010,
            S3=3'b011,
            S4=3'b100;

reg[2:0] cs, nst;

always @(posedge clk)
begin
	if(rst)
		cs<=S0;
	else
		cs<=nst;
end	

always @(cs,din)
begin
	case(cs)
		S0: begin
		y<=0;
				if(din==1)
					nst<=S1;
				else
					nst<=S0;
			 end
			 
		S1: begin
		y<=0;
				if(din==1)
					nst<=S1;
				else
					nst<=S2;
			 end
			 
		S2: begin
		y<=0;
				if(din==1)
					nst<=S3;
				else
					nst<=S0;
			 end
			 
		S3: begin
		y<=0;
				if(din==1)
					nst<=S4;
				else
					nst<=S0;
			 end
			 
		S4: begin
		y<=1;
				if(din==1)
					nst<=S1;
				else
					nst<=S0;
			 end
		default: nst<=S0;
	endcase
end

//always @(cs)
//begin
//	case(cs)
//		S0: y<=0;
//		S1: y<=0;
//		S2: y<=0;
//		S3: y<=0;
//		S4: y<=1;
//		default: y<=0;
//	endcase
//end

endmodule
