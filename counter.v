module counter(input logic clk, 
			   input logic reset, 
			   output logic[31:0] out);

	logic [31:0] out_reset;
	assign out_reset = reset ? 0 : out+1;
	// call the fsm 
	fsm #(32)cot(.clk(clk), .in(out_reset), .out(out));
endmodule	