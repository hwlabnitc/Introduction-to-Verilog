module serial_sub_test;
wire [3:0]x;
reg [3:0]a, b;
serial_sub gate(x, a, b);
integer count1, count2;
initial begin
for(count1=0; count1<16; count1=count1+1) begin
	for(count2=0; count2<16; count2=count2+1) begin
		a = count1;
		b = count2;
		#10;
	end
end
end
endmodule 