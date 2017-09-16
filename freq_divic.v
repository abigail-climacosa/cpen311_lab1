module freq_divic(input logic clk, 
				  input logic reset, 
				  input logic [31:0]count_val, 
				  output logic clk_out);
logic [31:0] count;
logic count_reset;
logic clk_up;
assign clk_out = reset ? 0 : clk_up; 

//fsm reg(.clk(clk), .in(),)
counter cou(.clk(clk), .reset(count_reset), .out(count));

assign count_reset  = (count > count_val-1) ? 1 : reset;

always_ff @(posedge clk)

	if(count > count_val-1)
	begin
		clk_up <=~clk_out;
//		count_reset = 1;
	end
	else 
//		count_reset = reset;
		clk_up <= clk_out;
endmodule