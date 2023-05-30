module mux_41_test;
	wire z;
	reg [3:0]i;
	reg [1:0]s;
	mux_41 gate(z,i,s);
	integer count1, count2;
	initial begin 
	for(count1=0; count1<16; count1=count1+1) begin
		for(count2=0; count2<4; count2=count2+1) begin
			#10 i=count1; s=count2;
		end
	end
	end
endmodule 