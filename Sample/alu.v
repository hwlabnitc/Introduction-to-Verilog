module test(output reg [3:0]o, input [3:0]a, b, input [2:0]s);
wire [3:0]u, v, w, x, y, z;
assign u = less(a,b);
assign w = or_g(a,b);
assign x = and_g(a,b);
assign y = add(a,b);
assign z = sub(a,b);
always @(u,z,w,x,y,s)
begin
	case(s)
	3'b000 : 
		o = w;
	3'b001:
		o = x;
	3'b010:
		o = y;
	3'b011:
		o = z;
	default :
		o = u;
	endcase
end
function [3:0]or_g;
	input [3:0]a, b;
	or_g=a|b;
endfunction
function [3:0]and_g;
	input [3:0]a, b;
	and_g=a&b;
endfunction
function [3:0]add;
	input [3:0]a, b;
	add=a+b;
endfunction
function [3:0]sub;
	input [3:0]a, b;
	sub=a-b;
endfunction
function [3:0]less;
	input [3:0]a, b;
	less = (a>b) ? b : a;
endfunction
endmodule 
