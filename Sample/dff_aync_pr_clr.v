module dff_aync_pr_clr(output reg q, input clr, pre, d, c); 
 always @(posedge c or posedge clr or posedge pre) 
 if(clr) 
 q<= 0; 
 else if(pre) 
 q<= 1; 
 else 
 q<= d; 
endmodule 