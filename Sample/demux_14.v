module demux_14(output reg y0, y1, y2, y3, input d, input [1:0]s);
always@(d, s)
begin
	y0 = d& (~s[0]) & (~s[1]);
	y1 = d & s[0] & (~s[1]);
	y2 = d & (~s[0]) & s[1];
	y3 = d & s[0] & s[1];
end
endmodule 