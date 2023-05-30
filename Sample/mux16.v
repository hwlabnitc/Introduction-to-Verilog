module mux16( output Y, input [15:0]d, input [3:0]s);
	wire [15:0]o;
	assign o[0]=(d[0]& ~s[0] & ~s[1] & ~s[2] & ~s[3]);
	assign o[1]=(d[1]& s[0] & ~s[1] & ~s[2] & ~s[3]);
	assign o[2]=(d[2]& s[1] & ~s[0] & ~s[2] & ~s[3]);
	assign o[3]=(d[3]& s[0] & s[1] & ~s[2] & ~s[3]);
	assign o[4]=(d[4]& ~s[0] & ~s[1] & s[2] & ~s[3]);
	assign o[5]=(d[5]& s[0] & ~s[1] & s[2] & ~s[3]);
	assign o[6]=(d[6]& ~s[0] & s[1] & s[2] & ~s[3]);
	assign o[7]=(d[7]& s[0] & s[1] & s[2] & ~s[3]);
	assign o[8]=(d[8]& ~s[0] & ~s[1] & ~s[2] & s[3]);
	assign o[9]=(d[9]& s[0] & ~s[1] & ~s[2] & s[3]);
	assign o[10]=(d[10]& ~s[0] & s[1] & ~s[2] & s[3]);
	assign o[11]=(d[11]& s[0] & s[1] & ~s[2] & s[3]);
	assign o[12]=(d[12]& ~s[0] & ~s[1] & s[2] & s[3]);
	assign o[13]=(d[13]& s[0] & ~s[1] & s[2] & s[3]);
	assign o[14]=(d[14]& ~s[0] & s[1] & s[2] & s[3]);
	assign o[15]=(d[15]& s[0] & s[1] & s[2] & s[3]);
	assign Y=(o[0]|o[1]|o[3]|o[4]|o[5]|o[6]|o[7]|o[8]|o[9]|o[10]|o[11]|o[12]|o[13]|o[14]|o[15]);
	
endmodule 