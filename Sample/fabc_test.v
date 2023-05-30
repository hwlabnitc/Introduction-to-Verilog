module fabc_test;
	reg a,b,c;
	wire o;
	fabc g4(o,a,b,c);
	integer count;
	initial begin
		for(count=0; count<8; count=count+1)
		begin
			{a,b,c}=count[2:0];
			#20;
		end
	end
endmodule
