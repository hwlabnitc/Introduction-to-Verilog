//Code written in various models
//Uncomment and comment the code as per requirement
module and_gate_8bit (
	output reg [7:0]o,
  input [7:0] input1,
  input [7:0] input2
);

  // Internal wire declarations
  wire [7:0] and_output;

  // AND gates for each bit
  and_g and0 (and_output[0], input1[0], input2[0]);
  and_g and1 (and_output[1], input1[1], input2[1]);
  and_g and2 (and_output[2], input1[2], input2[2]);
  and_g and3 (and_output[3], input1[3], input2[3]);
  and_g and4 (and_output[4], input1[4], input2[4]);
  and_g and5 (and_output[5], input1[5], input2[5]);
  and_g and6 (and_output[6], input1[6], input2[6]);
  and_g and7 (and_output[7], input1[7], input2[7]);

  // Assigning the output
  always @(and_output)
    o = and_output;

endmodule

// AND gate module
module and_g (
  output wire out,
  input wire in1,
  input wire in2
);

  assign out = in1 & in2;

endmodule
/*module and_gate_8bit(
  output reg [7:0] o,
  input [7:0] input1,
  input [7:0] input2
);

always @(input1, input2)
    o = input1 & input2;
endmodule
*/
/*
module and_gate_8bit(
  output [7:0] o,
  input [7:0] input1,
  input [7:0] input2
);

assign o = input1 & input2;
endmodule
*/
