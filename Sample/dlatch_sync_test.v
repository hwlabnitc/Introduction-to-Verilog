module dlatch_sync_test; 
reg pre, cr, d, e; 
wire q; 
dl_sync gate(q, pre, clr, d, e); 
integer count; 
initial begin 
pre=0; 
clr=0; 
for (count = 0; count < 4; count = count+1) begin 
{d, e} = count; 
#10; 
end 
end 
endmodule 