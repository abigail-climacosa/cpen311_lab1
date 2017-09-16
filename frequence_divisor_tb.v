module freq_div_tb;

logic clk, reset;

logic [31:0]count_val;

logic clk_out;

freq_divic dut(clk, reset, count_val, clk_out);

initial begin 

clk=1'b0; #5;
	forever begin 
	clk = 1'b1; #5;
	clk = 1'b0; #5;
	end
end


initial begin
count_val = 32'h1E; 
reset = 1'b1; #10
reset = 1'b0;

#2000
$stop;
end

endmodule