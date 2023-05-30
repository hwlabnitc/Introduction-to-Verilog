//8-bit Binary to Gray Code Converter

module gray_binary_tb;
	reg [7:0]bin;
	wire [7:0]gray;
	gray_binary gate7(bin,gray);
	initial begin
		bin=$random();
		#100;
	end
endmodule





