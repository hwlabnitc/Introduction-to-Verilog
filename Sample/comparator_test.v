module comparator_test;
reg [3:0]a, b;
wire g, e, l;
comparator gate(g, e, l, a, b);
integer count1, count2;
initial begin
	for(count1=0; count1<16; count1=count1+1)
		begin
			for(count2=0; count2<16; count2=count2+1)
				begin
					#10 {a[0], a[1], a[2], a[3]} = count1;{b[0], b[1], b[2], b[3]} = count2;
					#10;
				end
		end
end
endmodule 