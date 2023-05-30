module comparator(output g, e, l, input [3:0]a,b);
assign e = (a==b) ? 1 : 0;
assign g = (a>b) ? 1 : 0;
assign l = (a<b) ? 1 : 0;
endmodule 