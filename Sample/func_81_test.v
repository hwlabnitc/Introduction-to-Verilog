module func_81_test;
	wire f;
	reg a,b,c,d;
	func_81 g(f,a,b,c,d);
	initial begin
	{a,b,c,d} = 2'b000;
	repeat(15)
		begin
		#10		{a,b,c,d} = {a,b,c,d} + 2'b0001;
		end
		#10;
	end
endmodule 
		