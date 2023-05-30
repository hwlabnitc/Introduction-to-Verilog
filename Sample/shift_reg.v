module shift_reg(output reg [8:0]prod, input [4:0]x, y);
reg [7:0]result;
integer count;
reg [3:0]a,b;
always@(*)
	begin
	a = x[3:0];
	b = y[3:0];
		result =0;
		for(count=0; count<4; count=count+1) begin
			if(b[count] == 1'b1) begin
					result = result + (a<<count);
			end
		end
	if(x[4] == y[4]) begin
		prod = {1'b0, result};
	end
	else begin
		prod = {1'b1, result};
	end
end
endmodule 