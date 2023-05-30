module sr_latch(output q, qbar, input s, r); 
nor n1(q, qbar, r); 
nor n2(qbar, q, s); 
endmodule 
/*DATAFLOW MODELLING 
module sr_latch(output q, qbar, input s, r); 
assign q = ~(qbar|r); 
assign qbar = ~(q|s); 
endmodule 
BEHAVIOURAL MODELLING 
module sr_latch(output reg q, qbar, input s, r); 
reg x, y; 
always@(s, r, x, y) begin 
x = q; 
y = qbar; 
q = ~(y|r); 
qbar = ~(s|x); 
end 
endmodule */
