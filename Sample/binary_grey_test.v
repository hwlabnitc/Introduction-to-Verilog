module binary_grey_test;
	wire [7:0]b;
	reg [7:0]g;
	grey_binary gate(b, g);
	initial begin
	g = 2'b00000000;
	repeat(255)
		begin
			#10 g = g + 2'b00000001;
		end
		#10;
	end
endmodule 