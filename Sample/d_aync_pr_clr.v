module d_aync_pr_clr(output reg q, qbar, input pr, clr, clk, d); 
always @(pr, clr, clk, d) 
begin 
 if(~pr && ~clr && clk) 
 q=d; 
 else if((~pr &clr) || (~clr && pr)) 
 q=pr; 
 else if(~pr && ~clr && ~clk) 
 q=q; 
 else if(pr && clr) 
 q=1'bx; 
 qbar=~q; 
end 
endmodule 