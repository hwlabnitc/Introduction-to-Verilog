module multiplier_4_test;
	wire [7:0]p;
	reg [3:0]a, b;
	multiplier_4 gate(p, a, b);
	integer count1,count2;
	initial
	for(count1=0; count1<16; count1=count1+1) begin
		for(count2=0; count2<16; count2=count2+1) begin
			#10 a=count1; b=count2;
		end
	#10;
	end
endmodule 