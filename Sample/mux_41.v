module mux_41(output z, input [3:0]i, input [1:0]s);
	wire [3:0]m, d;
	decoder_24 gate(m, s);
	tristate_buffer g1(d[0], m[0], i[0]);
	tristate_buffer g2(d[1], m[1], i[1]);
	tristate_buffer g3(d[2], m[2], i[2]);
	tristate_buffer g4(d[3], m[3], i[3]);
	assign z = d[0] & d[1] & d[2] & d[3];
endmodule 
module decoder_24(output [3:0]m, input [1:0]a, input e);
	assign m[0] = (~a[1]) & (~a[0]);
	assign m[1] = (~a[1]) & (a[0]);
	assign m[2] = (a[1]) & (~a[0]);
	assign m[3] = (a[1]) & (a[0]);
endmodule 
module tristate_buffer(output y, input m, i);
	assign y = m?i:1'b1;
endmodule 