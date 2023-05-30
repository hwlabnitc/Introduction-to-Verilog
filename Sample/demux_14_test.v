module demux_14_test;
	wire y0, y1, y2, y3;
	reg d;
	reg [1:0]s;
	demux_14 g(y0, y1, y2, y3,d, s);
	initial begin 
		s=2'b00; d=1;
		repeat(3)
		begin
			#10 s=s+2'b01; d=1;
		end
		#10;
	end
endmodule 