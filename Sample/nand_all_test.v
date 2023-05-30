module nand_all_test;
	reg in1;
	wire out1; 
	nand_all g1(out1, in1);
	initial begin
		in1=0; 
		#20 in1=1; 
	end
endmodule 
