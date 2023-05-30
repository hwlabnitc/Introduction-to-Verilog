//BCD to Excess-3 code converter

module bcd(output w, x, y, z, input a, b, c, d);
	assign w = a | b & c | b & d;
	assign x = (~b)&c|(~b)&d|b&(~c)&(~d);
	assign y = c&d|(~c)&(~d);
	assign z = ~d;
endmodule

