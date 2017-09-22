//passing in the slower clk at top level eg. Basic_Organ_Solution
module led_con(input logic clk,
			   input logic reset,
			   output logic [9:0] leds);

`define MAX_LED  10'b1000000000 // 
//logic [9:0] led_re;


always_ff @(posedge clk)
	if(leds >= `MAX_LED ||reset)
		leds <= 10'b1;
	else
		leds <= (leds << 1) ;
endmodule
	