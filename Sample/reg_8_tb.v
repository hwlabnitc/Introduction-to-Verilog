//8-bit Register

module reg_8_tb;
	reg [7:0] d;
        reg clk,clr,pre;
	wire [7:0] q,qnot;
	reg_8 a1(d,clk,clr,pre,q,qnot);
	initial begin
		repeat(10) begin
			d=$random();
			{clk,clr}=$random();
			pre=1;
			#10;
		end
	end
endmodule
