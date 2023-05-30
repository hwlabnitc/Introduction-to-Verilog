module dff_aync_pr_clr_tb; 
wire q, qbar; 
reg pr, clr, clk, d; 
dff_aync_pr_clr gate(q, clr, pre, d, c); 
integer count1; 
initial begin 
 for(count1=0;count1<16; count1=count1+1) 
 begin 
 {clr, pre, d, c } = count1; 
 #10; 
 end 
end 
endmodule 