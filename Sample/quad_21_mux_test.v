module quad_21_mux_test;
	wire [3:0]y;
	reg [3:0]a, b;
	reg s;
	quad_21_mux g(y,a,b,s);
	integer count1;
	integer count2;
	initial begin
	for(count1=0; count1<16; count1=count1+1) begin
		for(count2=0; count2<16; count2=count2+1) begin
			#10 a=count1; b=count2; s=0;
			#10 a=count1; b=count2; s=1;
		end
	end
end
endmodule 
		