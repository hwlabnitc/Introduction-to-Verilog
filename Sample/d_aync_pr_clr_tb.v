module d_aync_pr_clr_tb; 
wire q, qbar; 
reg pr, clr, clk, d; 
d_aync_pr_clr gate(q, qbar, pr, clr, clk, d); 
integer count1; 
initial begin 
 for(count1=0;count1<16; count1=count1+1) 
 begin 
 {pr, clr, clk, d} = count1; 
 #10; 
 end 
end 
endmodule