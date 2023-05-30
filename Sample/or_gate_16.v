module or_gate_16(
  output reg [15:0] o,
  input [15:0] input1,
  input [15:0] input2
);

always @(input1, input2)
    o = input1 || input2;
endmodule
/*
module or_gate_16(
  output reg [15:0] o,
  input [15:0] input1,
  input [15:0] input2
);

always @(input1, input2)
    o = input1 || input2;
endmodule
*/
/*
module or_gate_16 (
	output reg [15:0]o,
  input [15:0] input1,
  input [15:0] input2
);

  // Internal wire declarations
  wire [15:0] or_output;

  // or gates for each bit
  or_g or0 (or_output[0], input1[0], input2[0]);
  or_g or1 (or_output[1], input1[1], input2[1]);
  or_g or2 (or_output[2], input1[2], input2[2]);
  or_g or3 (or_output[3], input1[3], input2[3]);
  or_g or4 (or_output[4], input1[4], input2[4]);
  or_g or5 (or_output[5], input1[5], input2[5]);
  or_g or6 (or_output[6], input1[6], input2[6]);
  or_g or7 (or_output[7], input1[7], input2[7]);
  or_g or8 (or_output[8], input1[8], input2[8]);
  or_g or9 (or_output[9], input1[9], input2[9]);
  or_g or10 (or_output[10], input1[10], input2[10]);
  or_g or11 (or_output[11], input1[11], input2[11]);
  or_g or12 (or_output[12], input1[12], input2[12]);
  or_g or13 (or_output[13], input1[13], input2[13]);
  or_g or14 (or_output[14], input1[14], input2[14]);
  or_g or15 (or_output[15], input1[15], input2[15]);

  // Assigning the output
  always @(or_output)
    o = or_output;

endmodule

// or gate module
module or_g (
  output wire out,
  input wire in1,
  input wire in2
);

  assign out = in1 || in2;

endmodule
*/