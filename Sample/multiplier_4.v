module multiplier_4(output [7:0]p, input [3:0]a, b);
	wire [3:0]c, s0, s1, s2;
	assign p[0] = b[0] & a[0];
	adder_4 gate1(s0, c[0], {(b[1]&a[3]), (b[1]&a[2]), (b[1]&a[1]), (b[1]&a[0])}, {2'b0, (b[0]&a[3]), (b[0]&a[2]), (b[0]&a[1])});
	assign p[1] = s0[0];
	adder_4 gate2(s1, c[1], {(b[2]&a[3]), (b[2]&a[2]), (b[2]&a[1]), (b[2]&a[0])}, {c[0], s0[3], s0[2], s0[1]});
	assign p[2] = s1[0];
	adder_4 gate3(s2, c[2], {(b[3]&a[3]), (b[3]&a[2]), (b[3]&a[1]), (b[3]&a[0])}, {c[1], s1[3], s1[2], s1[1]});
	assign p[3] = s2[0];
	assign p[4] = s2[1];
	assign p[5] = s2[2];
	assign p[6] = s2[3];
	assign p[7] = c[2];
endmodule 
module adder_4(output [3:0]s, output co, input [3:0]a, b);
	wire [3:0]c;
	full_adder g1(s[0],c[0],a[0],b[0],2'b0);
	full_adder g2(s[1],c[1],a[1],b[1],c[0]);
	full_adder g3(s[2],c[2],a[2],b[2],c[1]);
	full_adder g4(s[3],co,a[3],b[3],c[2]);
endmodule

module full_adder(output s, c, input a,b,cin);
	assign s = cin ^ (a ^ b);
	assign c = ((a&b) | (cin & (a^b)));
endmodule 