module func_81(output f, input a,b,c,d);
	mux8 g(f, {d,~d,2'b0, ~d, 2'b0, 2'b1, d, 2'b1}, {a,b,c});
endmodule 
module mux8(output f, input [7:0]e, input [2:0] s);
	wire [7:0]o;
	assign o[0]=(e[0]& ~s[0] & ~s[1] & ~s[2]);
	assign o[1]=(e[1]& s[0] & ~s[1] & ~s[2]);
	assign o[2]=(e[2]& ~s[0] & s[1] & ~s[2]);
	assign o[3]=(e[3]& s[0] & s[1] & ~s[2]);
	assign o[4]=(e[4]& ~s[0] & ~s[1] & s[2]);
	assign o[5]=(e[5]& s[0] & ~s[1] & s[2]);
	assign o[6]=(e[6]& ~s[0] & s[1] & s[2]);
	assign o[7]=(e[7]& s[0] & s[1] & s[2]);
	assign f = o[0] | o[1] | o[2] | o[3] | o[4] | o[5] | o[6] | o[7] ;
endmodule 