module counter_tb;

logic clk, reset;
logic [31: 0]out;

counter dut(.clk(clk), .reset(reset), .out(out));

initial begin 

clk=1'b0; #5;
	forever begin 
	clk = 1'b1; #5;
	clk = 1'b0; #5;
	end
end

initial begin
reset = 1'b1; #10
reset = 1'b0;

#500
$stop;
end

endmodule