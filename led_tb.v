module led_con_tb;

logic clk, reset;
logic [9:0] leds;

led_con dut(.clk(clk), .reset(reset), .leds(leds));

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
ends

endmodule
