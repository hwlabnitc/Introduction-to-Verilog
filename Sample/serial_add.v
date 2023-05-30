module serial_add(output reg [4:0]out, input [3:0]x,y, input clk);
reg c, s, cin;
reg [3:0]a, b;
initial begin
a=x;
b=y;
c = 1'b0;
out = 4'b0000;
end
integer count;
initial begin
for(count=0; count<4; count= count + 1) begin
	{s,c} = full_add(a[0], b[0], c);
	out = {s,c,1'b0, 1'b0};
	a = {1'b0, a[3:1]};
	b = {1'b0, b[3:1]};
	c = dff(c, clk);
	end
end 
function [1:0]full_add (input X, Y, Z);
	full_add = {X^Y^Z, (X&Y)|(Y&Z)|(Z&X)};
endfunction 

function dff(input d, clk);
	dff = clk ? d : 1'b0;
endfunction 

endmodule 