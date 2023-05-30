module ripple_carry8(output [7:0]s, output co, input [7:0]a,b, input cin);
	wire c[6:0];
	full_adder_8 g1(s[0],c[0],a[0],b[0],cin);
	full_adder_8 g2(s[1],c[1],a[1],b[1],c[0]);
	full_adder_8 g3(s[2],c[2],a[2],b[2],c[1]);
	full_adder_8 g4(s[3],c[3],a[3],b[3],c[2]);
	full_adder_8 g5(s[4], c[4], a[4], b[4], c[3]);
	full_adder_8 g6(s[5], c[5], a[5], b[5], c[4]);
	full_adder_8 g7(s[6], c[6], a[6], b[6], c[5]);
	full_adder_8 g8(s[7], co, a[7], b[7], c[6]);
endmodule

module full_adder_8(output s, output cout,input a,b,cin);
	wire o1, o2, o3;
	xor g1(o1, a, b);		//a^b
	xor g2(s, o1, cin);	//a^b^cin
	and g3(o2, a, b);		//ab
	and g4(o3, cin, o1);	// cin(a^b)
	or g5(cout, o2, o3);	// ab + cin(a^b)
endmodule 