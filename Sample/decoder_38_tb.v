//3:8 Decoder (Enable Input)

module decoder_38_tb;
	reg en,a1,a2,a3;
	wire a,b,c,d,e,f,g,h;
	integer i;
	
        decoder_38 gate3(en,a1,a2,a3,a,b,c,d,e,f,g,h);
        initial begin
	        en=0;
	        #100 for(i=0;i<8;i=i+1)begin
		        en=1;
		        {a1,a2,a3}=i;
		        #100;
		end
        end
endmodule




