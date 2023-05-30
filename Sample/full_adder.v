module full_adder(input a0,a1,a2,a3,b0,b1,b2,b3,cin,output s0,s1,s2,s3,co);
	wire c1,c2,c3;
	full_adder_gate g1(s0,c1,a0,b0,cin);
	full_adder_gate g2(s1,c2,a1,b1,c1);
	full_adder_gate g3(s2,c3,a2,b2,c2);
	full_adder_gate g4(s3,co,a3,b3,c3);
endmodule

module full_adder_gate(output s,output reg cout,input a,b,cin);
wire in1,in2,in3;
	halfadder g1(in1,in2,a,b);
	halfadder g2(s,in3,in1,cin);
	always@(a,b)
	begin
	cout = in3 | in2;
	end
endmodule

module halfadder(output reg s,c , input a,b);
always@(a,b)
begin
	s = a ^ b;
	c = a & b;
end
endmodule
