//BCD to Excess-3 code converter

module bcd_tb;
	reg a, b, c, d;
	wire w, x, y, z;
	bcd inst0(w, x, y, z, a, b, c, d);
	initial begin
		repeat(10) begin 
			a = $random;
			b = $random;
			c = $random;
			d = $random;
			#50;
		end
	end
endmodule


