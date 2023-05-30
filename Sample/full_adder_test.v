module full_adder_test;
reg a0,a1,a2,a3,b0,b1,b2,b3,cin;
wire s, s1, s2, s3, cout;
full_adder gate1(a0,a1,a2,a3,b0,b1,b2,b3,cin,s,s1,s2,s3,cout);
	reg [4:0] count1;
	reg [4:0] count2;
	initial
	for(count1 =0;count1<16;count1=count1+1)begin
		for(count2 =0;count2<16;count2=count2+1)begin
			{b0,b1,b2,b3}=count1;
			{a0,a1,a2,a3}=count2;
			cin=0;
			#10;
		end
	end
endmodule 