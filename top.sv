// define tones
`define Do 3'b000         // 523 Hz
`define Re 3'b001         // 587 Hz
`define Mi 3'b010         // 659 Hz
`define Fa 3'b011         // 698 Hz
`define So 3'b100         // 738 Hz
`define La 3'b101         // 880 Hz
`define Ti 3'b110         // 987 Hz
`define Do2 3'b111        // 1046 Hz


module top(clk, reset, switch_val, count_val);

	input clk, reset;
	input [2:0] switch_val;
	
	output [31:0] count_val;

	always_comb begin
		case(switch_val)                     // divider value
			`Do: count_val = 32'hBAB9;        // 47801
			`Re: count_val = 32'hA65D;        // 42589
			`Mi: count_val = 32'h9430;        // 37936
			`Fa: count_val = 32'h8BE9;        // 35817
			`So: count_val = 32'h8453;        // 33875
			`La: count_val = 32'h6EF9;        // 28409
			`Ti: count_val = 32'h62F1;        // 25329
			`Do2: count_val = 32'h5D5D;       // 23901
			 default: count_val = 32'hBAB9;   // 47801 (Do)
		endcase
	end


	
	
endmodule