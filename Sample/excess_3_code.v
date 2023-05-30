module excess_3_code(output reg w,x,y,z, input a,b,c,d);
always@(a,b,c,d)
begin
	w = a | (b&c) | (c&d);
	x = (b&(~c)) | (d&(~b)) | (b&(~c)&(~d));
	y = (c&d) | ((~c)&(~d));
	z = (~d);
end
endmodule 