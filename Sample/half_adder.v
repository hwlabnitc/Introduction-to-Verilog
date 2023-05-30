module half_adder(output reg s, c, input a, b);
always@(a,b)
begin
	s =  a ^ b;
	c = a & b;
end
endmodule 