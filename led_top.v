module led_top(input logic clk,
		input logic reset,
		input logic [31:0]count_va,
		output logic [9:0] led_light);
logic CLOCK_1HZ;
//32'h17D7840
freq_divic CL(.clk(clk), .reset(reset), .count_val(count_va), .clk_out(CLOCK_1HZ));
led_con LE(.clk(CLOCK_1HZ), .leds(led_light) );
endmodule 