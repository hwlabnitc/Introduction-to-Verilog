module serial_sub(output reg [3:0]x, input [3:0]a, b);
	reg c, s;
	reg [3:0]y;
	integer count;
always@(*)
begin
		x=a;
		y=b;
		c=1'b0;
		for(count=4; count>0; count=count-1) begin
			{c, s} = full_sub(x[0], y[0], c);
			x = {s, x[3:1]};
			y = {1'b0, y[3:1]};
		end
	end
function [1:0]full_sub (input X, Y, Z);
	full_sub = {(~X&Y) | (((~X) | Y)&Z), X^Y^Z};
endfunction 
endmodule 