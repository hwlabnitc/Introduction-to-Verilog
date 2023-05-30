//4-bit Counter

module counter_tb;
	reg clk,reset,load,ud;
	reg [3:0] data;
	wire [3:0] count;

	counter ct_1(.ud(up_down),.*);

	initial begin clk = 1'b0; repeat(30) #3 clk= ~clk;end

	initial begin
		reset=1'b1;
		#7 reset=1'b0;
		#35 reset=1'b1;
	end
	initial begin
		#12 load=1'b1;
		#5 load=1'b0;
	end
	initial begin
		#5 ud=1'b1;
		#24 ud=1'b0;
	end
	initial begin
		data=4'b1000;
		#14 data=4'b1101;
		#2 data=4'b1111;
	end
	initial begin 
		$monitor("time=%0d,reset=%b,load=%b,ud=%b,data=%d,count=%d", $time,reset,load,ud,data,count);
	end
endmodule

