module quad_21_mux(output [3:0]y, input [3:0]a, b, input s);
	mux g0(y[0], a[0], b[0], s);
	mux g1(y[1], a[1], b[1], s);	
	mux g2(y[2], a[2], b[2], s);
	mux g3(y[3], a[3], b[3], s);
endmodule 
module mux(output o, input a, b, s);
	assign o = ((~s) & a) | (s & b);
endmodule 