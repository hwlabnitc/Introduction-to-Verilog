module mux16_test;
	reg [15:0] d;
	reg [3:0] s;
	wire y;
	mux16_4 gate1(y, d, s);
	integer count1,count2;
	initial begin
	for(count1=0;count1<65536 ;count1=count1+1) begin
		for(count2=0;count2<15;count2=count2+1)begin
			#10 {d}=count1;{s}=count2;
			#10;
		end
	end
	end
endmodule
