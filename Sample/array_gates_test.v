module array_gates_test;
	reg[15:0] in1, in2;
	wire[15:0] o1;
	array_gates g1(o1, in1, in2);
	integer count1,count2;
	initial
	for(count1=0;count1<65536 ;count1=count1+1) begin
	
		for(count2=0;count2<65536;count2=count2+1)begin
		
			#10 in1=count1;in2=count2;
			#10;
			
		end
	end
endmodule
