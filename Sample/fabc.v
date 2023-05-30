module fabc(output o,input a,b,c);
	wire a1,b1,o1,o2,o3;
	assign a1 = ~(a);
	assign b1 = ~(b);
	assign o1 = ~(a1 & b);
	assign o2 = (b & c);
	assign o3 = (a1 & b1);
	assign o = (o1 | o2 | o3);
endmodule  
