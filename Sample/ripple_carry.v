module ripple_carry(input a0,a1,a2,a3,b0,b1,b2,b3,cin,output s0,s1,s2,s3,co);
	wire c1,c2,c3;
	full_adder_gate g1(s0,c1,a0,b0,cin);
	full_adder_gate g2(s1,c2,a1,b1,c1);
	full_adder_gate g3(s2,c3,a2,b2,c2);
	full_adder_gate g4(s3,co,a3,b3,c3);
endmodule
module full_adder_gate(output s, cout,input a,b,cin);
	wire o1, o2, o3;
	xor g1(o1, a, b);		// A xor B
	xor g2(s, cin, o1);		// CIN xor (A xor B)
	and g3(o2, a, b);		// AB
	and g4(o3, cin, o1); // CIN(A XOR B)
	or g5(cout, o2, o3);
endmodule
