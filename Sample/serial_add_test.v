module serial_add_test;
wire [4:0]x;
reg [3:0]a, b;
reg clk;
serial_add gate(x, a, b, clk);
integer count1, count2;
initial begin
for(count1=0; count1<16; count1=count1+1) begin
	for(count2=0; count2<16; count2=count2+1) begin
		a = count1;
		b = count2;
		clk = 1'b1;
		#10;
	end
end
end
endmodule 