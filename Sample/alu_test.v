module test_test;
	wire [3:0]o;
	reg [3:0]a,b;
	reg [2:0]s;
	integer count1, count2, count3;
	test gate(o,a,b,s);
	initial begin
	for(count1=0; count1<16; count1=count1+1) begin
		for(count2=0; count2<16; count2=count2+1) begin
			for(count3=0; count3<8; count3=count3+1) begin
				#10 a=count1; b=count2; s=count3;
				end
			end
		end
	#10;
	end
endmodule 	
	