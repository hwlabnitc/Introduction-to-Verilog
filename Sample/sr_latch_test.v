module sr_latch_test; 
reg s, r; 
wire q, qbar; 
sr_latch gate(q, qbar, s, r); 
integer count; 
initial begin 
for (count = 0; count < 4; count = count + 1) begin 
{s, r} = count; 
#10; 
end 
end 
endmodule 
