module multiplexer(output out, input a, b, c, d, s0, s1);
	wire o1, o2, o3, o4, o5, o6;
	not g1(o1, s0);		//S0'
	not g2(o2, s1);		//S1'
	and g3(o3, a, o1, o2);	//AS0'S1'
	and g4(o4, b, o1, s1);	//BS0'S1
	and g5(o5, c, s0, o2);	//CS0S1'
	and g6(o6, d, s0, s1);	//DS0S1
	or g7(out, o3, o4, o5, o6);
endmodule
