module bcd_adder_test;
reg [3:0] i1, i2, i3, i4, i5, i6;			//4 bit 3 digit numbers
reg c1;
wire [3:0] s1, s2, s3;			//4 bit sum for each digit
wire co;								//carry out

bcd_adder3 gate(co, s1, s2, s3, c1, i1, i2, i3, i4, i5, i6);
	integer count1;
	integer count2;
	initial
	for(count1 =0;count1<64;count1=count1+1)begin
		for(count2 =0;count2<64;count2=count2+1)begin
			{i1,i2,i3}=count1;
			{i4,i5,i6}=count2;
			c1=0;
			#10;
		end
	end 
endmodule 