module dff_sync_test; 
reg preset, clear, d, clk; 
wire q; 
dff_sync gate(q, pre, clr, d, clk); 
integer count; 
initial begin 
pre=0;clr=0; 
for (count = 0; count < 4; count = count + 1) begin 
{d, clk} = count; 
#10; 
end 
end 
endmodule 