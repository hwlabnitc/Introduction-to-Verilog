//4:16 Decoder with two 3:8 Decoders (Enable Input)

module decoder_416_tb;
	wire a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
	reg a1,a2,a3,a4;
	integer q;
	
	decoder_416 gate4(a1,a2,a3,a4,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);
	initial begin
		for(q=0;q<8;q=q+1)begin
			{a1,a2,a3,a4}=q;
			#100;
		end
		for(q=8;q<16;q=q+1)begin
			{a1,a2,a3,a4}=q;
			#100;
		end
	end
endmodule



