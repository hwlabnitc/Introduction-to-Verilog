module multiplexer_test;
wire out;
reg a,b, c, d;
reg s0, s1;
integer count, count1;
multiplexer gate(out, a, b, c, d, s0, s1);
initial begin
	for(count=0; count<16; count=count+1)
	begin
	for(count1=0; count1<4; count1=count1+1)
	begin
		{a,b,c,d} = count;
		{s0, s1} = count1;
		#10;
	end
	end
	end
endmodule 