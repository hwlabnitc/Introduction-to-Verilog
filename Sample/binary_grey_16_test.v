module binary_grey_16_test;
	wire [15:0]b;
	reg [15:0]g;
	grey_binary_16 gate(b, g);
	initial begin
	g = 2'b0000000000000000;
	repeat(65535)
		begin
			#10 g = g + 2'b0000000000000001;
		end
		#10;
	end
endmodule 