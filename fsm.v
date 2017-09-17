
module fsm(iclk, in, out);

	// inputs and outputs - NOTE: will rename in and out later
	parameter width = 8;
	input clk;
	input [width-1:0] in;
	output reg [width-1:0] out;
	
	always_ff @(posedge clk)
		out <= in;
		
endmodule
