module csr_latch_test; 
reg s, r, e; 
wire q, qbar; 
csr_latch gate(q, qbar, s, r, e); 
integer count; 
initial begin 
for(count = 0; count < 8; count = count + 1) begin 
{e, s, r} = count; 
#10; 
end 
end 
endmodule 