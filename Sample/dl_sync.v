module dl_sync(output reg q, input pre, clr, d, e); 
always@(d, e) begin 
if (e == 1) 
q = d; 
end 
endmodule 
