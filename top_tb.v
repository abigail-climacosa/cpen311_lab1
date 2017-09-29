module top_tb;

logic clk;
logic reset;
logic [2:0] switch_val;
logic clk_out;

// call the module here
top TDU(.clk(clk), .reset(reset), .switch_val(switch_val), .clk_out(clk_out));

initial begin 

clk=1'b0; #5;
	forever begin 
	clk = 1'b1; #5;
	clk = 1'b0; #5;
	end
end


initial begin
//count_val = 32'h1E; 
reset = 1'b1; #10
reset = 1'b0;

#10
switch_val = 3'b000;
#1000

reset = 1'b1; #10
reset = 1'b0;
switch_val = 3'b001;
#2000

reset = 1'b1; #10
reset = 1'b0;
switch_val = 3'b010;
#2000

reset = 1'b1; #10
reset = 1'b0;
switch_val = 3'b011;
#3000
$stop;
end
endmodule