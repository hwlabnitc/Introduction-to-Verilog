module fa_test;
	wire s,c;
	reg [2:0]a;
	fa g( s, c,a);
	initial begin
	a = 3'b000;
	repeat(7)
		begin
			#10 a=a+3'b001;
		end
		#10;
	end
endmodule 