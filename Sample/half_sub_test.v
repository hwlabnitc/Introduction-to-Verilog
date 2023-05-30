module half_sub_test;
	wire d,b;
	reg a, bin;
	half_sub gate(d,b,a,bin);
	initial begin
		{a, bin} = 2'b00;
		repeat(4)
			begin
				#10 {a, bin} = {a, bin} + 2'b01;
			end
		end
endmodule 