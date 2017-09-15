
module fsm(clk, in, out);

	// inputs and outputs - NOTE: will rename in and out later
	input clk;
	input [1:0] in;
	output reg [1:0] out;
	
	always_ff @(posedge clk)
		out <= in;
		
endmodule
