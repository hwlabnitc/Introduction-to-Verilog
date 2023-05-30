module nand_all(output reg o, input a);
always @(a)
begin
	o = ~(a & a);
end
endmodule 