module excess_3_code_test;
reg a,b,c,d;
wire  w,x,y,z;
excess_3_code gate(w,x,y,z, a,b,c,d);
integer count;
initial begin 
	for (count=0; count<16; count=count+1) begin
		{a,b,c,d} = count;
		#20;
	end 
end 
endmodule 