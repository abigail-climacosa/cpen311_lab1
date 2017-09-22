//passing in the slower clk at top level eg. Basic_Organ_Solution
module led_con(input logic clk,
			   input logic reset
			   output logic [9:0] leds);

`define MAX_LED  3'h200 // 
logic [9:0] leds;

// asynchronous reset for leds
assign leds_re = reset ? 10'b1 : leds;

always_ff @(posedge clk)
	if(leds_re > `MAX_LED)
		leds <= 10'b1;
	else
		leds <= leds_re << 1;
endmodule
	