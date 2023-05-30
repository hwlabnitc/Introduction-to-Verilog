//3:8 Decoder (Enable Input)

module decoder_38(input en,a1,a2,a3, output a,b,c,d,e,f,g,h);
        wire x,y,z;
        assign x=~a1;
        assign y=~a2;
        assign z=~a3;
        assign a=~(en&x&y&z);
        assign b=~(en&x&y&a3);
        assign c=~(en&x&a2&z);
        assign d=~(en&x&a2&a3);
        assign e=~(en&a1&y&z);
        assign f=~(en&a1&y&a3);
        assign g=~(en&a1&a2&z);
        assign h=~(en&a1&a2&a3);
endmodule



