module full_sub_test;
	reg a,b,bin;
	wire d,bo;
	full_sub gate(d, bo, a, b, bin);
	initial begin
	{a,b,bin} = 2'b000;
	repeat(7)
		begin
			#10 {a,b,bin} = {a,b,bin} + 2'b001;
		end
	end
endmodule 