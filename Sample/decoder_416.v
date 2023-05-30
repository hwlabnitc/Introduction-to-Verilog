//4:16 Decoder with two 3:8 Decoders (Enable Input)

module decoder_416(input a1,a2,a3,a4, output a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);
	wire q;
	decoder_38 gate1(~a1,a2,a3,a4,a,b,c,d,e,f,g,h);
	decoder_38 gate2(a1,a2,a3,a4,i,j,k,l,m,n,o,p);
endmodule


