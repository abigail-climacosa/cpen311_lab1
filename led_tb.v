module led_con_tb;

logic clk, reset;
logic [31:0] count_b;
logic [9:0] leds;

led_top dut(.clk(clk), .reset(reset), .led_light(leds), .count_va(count_b));

initial begin
clk=1'b0; #5;
	forever begin 
	clk = 1'b1; #5;
	clk = 1'b0; #5;
	end
end

initial begin
count_b = 32'h5;
reset = 1'b1; #10
reset = 1'b0;

#5000
$stop;
end
endmodule
