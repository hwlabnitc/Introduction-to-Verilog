module binary_grey(output [7:0]b, input [7:0]g);
	assign b[7] = g[7];
	assign b[6] = g[7]^g[6];
	assign b[5] = g[7]^g[6]^g[5];
	assign b[4] = g[7]^g[6]^g[5]^g[4];
	assign b[3] = g[7]^g[6]^g[5]^g[4]^g[3];
	assign b[2] = g[7]^g[6]^g[5]^g[4]^g[3]^g[2];
	assign b[1] = g[7]^g[6]^g[5]^g[4]^g[3]^g[2]^g[1];
	assign b[0] = g[7]^g[6]^g[5]^g[4]^g[3]^g[2]^g[1]^g[0];
endmodule 