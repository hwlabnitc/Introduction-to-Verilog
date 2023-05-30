module mux16_4(output y, input [15:0]d, input [3:0]s);
	wire o1, o2, o3, o4, o5;
	mux g1(o1, d[0], d[1], d[2], d[3], s[0], s[1]);
	mux g2(o2, d[4], d[5], d[6], d[7], s[0], s[1]);
	mux g3(o3, d[8], d[9], d[10], d[11], s[0], s[1]);
	mux g4(o4, d[12], d[13], d[14], d[15], s[0], s[1]);
	mux g5(y, o1, o2, o3, o4, s[2], s[3]);
endmodule

module mux(output reg out, input a, b, c, d, s0, s1);
	always@(a, b, c, d, s0, s1)
	begin
		out = ((a&(~s0)&(~s1)) | (b&(~s0)&(s1)) | (c&s0&(~s1)) | (d&(s0)&(s1)));
	end

endmodule 