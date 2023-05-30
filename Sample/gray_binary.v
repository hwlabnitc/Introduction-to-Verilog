//8-bit Binary to Gray Code Converter

module gray_binary(input [7:0]bin,output [7:0]gray);
	assign gray[0]=^bin[1:0];
	assign gray[1]=^bin[2:1];
	assign gray[2]=^bin[3:2];
	assign gray[3]=^bin[4:3];
	assign gray[4]=^bin[5:4];
	assign gray[5]=^bin[6:5];
	assign gray[6]=^bin[7:6];
	assign gray[7]=^bin[7];
endmodule




