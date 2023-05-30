//8-bit Register

module reg_8(D,clk,clr,pre,Q,Qnot);

	parameter n=8;
	input [n-1:0] D;
	input clk,clr,pre;
	output reg [n-1:0]Q,Qnot;


	always @(negedge clr,negedge pre,posedge clk)
	begin
		if(!clr) begin
			if(!pre) begin
				Q<=8'bx;
				Qnot=Q;
			end
			else begin
				Q<=8'b00000000;
				Qnot<=8'b11111111;
			end
		end
		else begin
			if(!pre) begin
				Q<=8'b11111111;
				Qnot<=8'b00000000;
			end
			else begin
				Q<=D;
				Qnot<=!D;
			end
		end
	end
endmodule
