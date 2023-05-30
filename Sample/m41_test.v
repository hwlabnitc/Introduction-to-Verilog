module m41_test;
	wire out;
	reg a, b, c, d, s1, s0;
	m41 gate(a, b, c, d, s0, s1, out);
	integer count1, count2;
	initial begin 
		for(count1=0; count1<16; count1=count1+1)begin
			for(count2=0; count2<4; count2=count2+1) begin
				#10 {a,b,c,d} = count1; {s0, s1} = count2;
			end
		end 
	end 
endmodule 