module half_sub(output d, b, input a,bin);
	assign d = ((~a)&bin) | (a&(~bin));
	assign b = (~a)&bin;
endmodule 