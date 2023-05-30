module bcd_adder3(cout, s1, s2, s3, cin, A, B, C, X, Y, Z);
	output cout;
	output [3:0]s1,s2, s3;
	input cin;
	input [3:0]A,B,C,X,Y,Z;
	wire co1, co2;
	bcd_adder gate1(s1, co1, A, X, cin);
	bcd_adder gate2(s2, co2, B, Y, co1);
	bcd_adder gate3(s3, cout, C, Z, co2);
	endmodule 

	
module bcd_adder(S,Cout,A,B,Cin);

	input [3:0]A,B;
	input Cin;
	output [3:0]S;
	output Cout;

	wire [1:0]connectors;
	wire [3:0]sumb;
	wire coutb;
	wire cout2; // floating

	full_adder4 gate1(sumb,coutb,A,B,Cin);
	full_adder4 gate2(S,cout2,sumb,{1'b0,Cout,Cout,1'b0},1'b0);

	and(connectors[0],sumb[3],sumb[2]);
	and(connectors[1],sumb[3],sumb[1]);
	or (Cout,connectors[1],connectors[0],coutb);
endmodule

module full_adder4(s, co, a, b, cin);
	output [3:0]s;
	output co;
	input [3:0]a, b;
	input cin;
	wire c1,c2,c3;
	full_adder_bcd g1(s[0],c1,a[0],b[0],cin);
	full_adder_bcd g2(s[1],c2,a[1],b[1],c1);
	full_adder_bcd g3(s[2],c3,a[2],b[2],c2);
	full_adder_bcd g4(s[3],co,a[3],b[3],c3);
endmodule

module full_adder_bcd(output  s, output  cout,input a,b,cin);
	wire o1, o2, o3;
	xor(s, cin , a , b);
	xor g2(o1, a, b);
	and g3(o2, cin, o1);
	and g4(o3, a, b);
	or (cout, o2, o3);
endmodule
