module dff_sync(output reg q, input pre, clr, d, clk); 
always@(posedge clk) begin 
if (clk == 1) 
q = d; 
end 
endmodule 