module fa(output s, c, input [2:0]a);
	wire [7:0]d;
	decoderh_38 gate(d, a, 2'b01);
	assign s = d[1] | d[2] | d[4] | d[7];
	assign c = d[3] | d[5] | d[6] | d[7];
endmodule 
module decoderh_38(output [7:0]d, input [2:0]a, input e);
	assign d[7] = e & a[0] & a[1] & a[2];
	assign d[6] = e & (~a[0]) & a[1] & a[2];
	assign d[5] = e & a[0] & (~a[1]) & a[2];	
	assign d[4] = e & (~a[0]) & (~a[1]) & a[2];	
	assign d[3] = e & a[0] & a[1] & (~a[2]);	
	assign d[2] = e & (~a[0]) & a[1] & (~a[2]);	
	assign d[1] = e & a[0] & (~a[1]) & (~a[2]);
	assign d[0] = e & (~a[0]) & (~a[1]) & (~a[2]);
endmodule 