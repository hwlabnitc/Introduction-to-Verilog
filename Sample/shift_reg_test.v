module shift_reg_test;
wire [8:0]prod;
reg [4:0]a,b;
shift_reg gate(prod, a, b);
integer count1, count2;
initial begin
for(count1=0; count1<32; count1=count1+1) begin
	for(count2=0; count2<32;  count2=count2+1)begin
	a=count1;
	b=count2;
	#10;
	end
end
end
endmodule 