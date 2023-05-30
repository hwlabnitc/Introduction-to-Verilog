module xor_gate_32 (
	output reg [31:0]o,
  input [31:0] input1,
  input [31:0] input2
);

  // Internal wire declarations
  wire [15:0] xor_output;

  // xor gates for each bit
  xor_g xor0 (xor_output[0], input1[0], input2[0]);
  xor_g xor1 (xor_output[1], input1[1], input2[1]);
  xor_g xor2 (xor_output[2], input1[2], input2[2]);
  xor_g xor3 (xor_output[3], input1[3], input2[3]);
  xor_g xor4 (xor_output[4], input1[4], input2[4]);
  xor_g xor5 (xor_output[5], input1[5], input2[5]);
  xor_g xor6 (xor_output[6], input1[6], input2[6]);
  xor_g xor7 (xor_output[7], input1[7], input2[7]);
  xor_g xor8 (xor_output[8], input1[8], input2[8]);
  xor_g xor9 (xor_output[9], input1[9], input2[9]);
  xor_g xor10 (xor_output[10], input1[10], input2[10]);
  xor_g xor11 (xor_output[11], input1[11], input2[11]);
  xor_g xor12 (xor_output[12], input1[12], input2[12]);
  xor_g xor13 (xor_output[13], input1[13], input2[13]);
  xor_g xor14 (xor_output[14], input1[14], input2[14]);
  xor_g xor15 (xor_output[15], input1[15], input2[15]);

  // Assigning the output
  always @(xor_output)
    o = xor_output;

endmodule

// xor gate module
module xor_g (
  output wire out,
  input wire in1,
  input wire in2
);

  assign out = in1 ^ in2;

endmodule
/*
module xor_gate_32(
  output reg [31:0] o,
  input [31:0] input1,
  input [31:0] input2
);

always @(input1, input2)
    o = input1 ^ input2;
endmodule
*/
/*
module xor_gate_32(
  output [31:0] o,
  input [31:0] input1,
  input [31:0] input2
);

assign o = input1 ^  input2;
endmodule
*/
