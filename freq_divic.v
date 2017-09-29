//Implement clk generator by different count_val
module freq_divic(input logic clk, 
				  input logic reset, 
				  input logic [31:0]count_val, 
				  output logic clk_out);
logic [31:0] count;
logic count_reset;
logic clk_up;
assign clk_out = reset ? 0 : clk_up; 

//fsm reg(.clk(clk), .in(),)
//passing count reset into the counter
counter cou(.clk(clk), .reset(count_reset), .out(count));
//if count overflow reset, -1 since it starts from 0; -1 since it delayed by one cycle
assign count_reset  = (count > count_val-2) ? 1 : reset;

always_ff @(posedge clk)

// if count overflow then turn the clk to its opposite value
	if(count > count_val-2)
	begin
		clk_up <=~clk_out;
	end
	else 
		clk_up <= clk_out;
endmodule