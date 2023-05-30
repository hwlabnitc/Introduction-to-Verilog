module grey_binary_16(output [15:0]b, input [15:0]g);
	assign b[15] = g[15];
	assign b[14] = g[15]^g[14];
	assign b[13] = g[14]^g[13];
	assign b[12] = g[13]^g[12];
	assign b[11] = g[12]^g[11];
	assign b[10] = g[11]^g[10];
	assign b[9] = g[10]^g[9];
	assign b[8] = g[9]^g[8];
	assign b[7] = g[8]^g[7];
	assign b[6] = g[7]^g[6];
	assign b[5] = g[6]^g[5];
	assign b[4] = g[5]^g[4];
	assign b[3] = g[4]^g[3];
	assign b[2] = g[3]^g[2];
	assign b[1] = g[2]^g[1];
	assign b[0] = g[1]^g[0];
endmodule 