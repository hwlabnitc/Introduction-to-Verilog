module full_sub(output d, bo, input a, b,bin);
	wire di, b1, b2;
	half_subr g1(di, b1, a, b);
	half_subr g2(d, b2, di, bin);
	assign bo = b2|b1;
endmodule 
module half_subr(output d, b, input a,bin);
	assign d = ((~a)&bin) | (a&(~bin));
	assign b = (~a)&bin;
endmodule 