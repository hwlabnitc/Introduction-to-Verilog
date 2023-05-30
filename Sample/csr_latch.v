/*GATE LEVEL MODELLING */
module csr_latch(output q, qbar, input s, r, e); 
wire a, b; 
and and_g1(a, s, e); 
and and_g2(b, r, e); 
nor nor_g1(q, qbar, a); 
nor nor_g2(qbar, q, b); 
endmodule 
/*DATA FLOW MODELLING 
module csr_latch(output q, qbar, input s, r, e); 
assign q = ~(qbar|(s&e)) 
assign qbar = ~(q|(r&e)); 
endmodule 
BEHAVIOURAL MODELLING 
module csr_latch(output q, qbar, input s, r, e); 
always@(s, r, e) begin 
q = ~(qbar|(s&e)); 
qbar = ~(q|(r&e)); 
end 
endmodule */