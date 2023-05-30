module ripple_carry8_test;
	reg[7:0] in1, in2;
	reg c;
	wire[7:0] o1;
	wire co;
	ripple_carry8 g1(o1, co, in1, in2,c);
	integer count1,count2;
	initial
	for(count1=0;count1<256 ;count1=count1+1) begin
	
		for(count2=0;count2<256;count2=count2+1)begin
			#10 in1=count1;in2=count2; c=0;
			#10 in1=count1;in2=count2; c=1;
			#10 ;
			
		end
	end
endmodule
