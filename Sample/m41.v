module m41 ( output out, input [3:0]a, input [1:0]s);
 assign out = s[1] ? (s[0] ? a[3] : a[2]) : (s[0] ? a[1] : a[0]);
 endmodule 