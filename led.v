//passing in the slower clk at top level eg. Basic_Organ_Solution
//led module : the led will light side by side
module led_con(input logic clk,
			   output logic [9:0] leds);

`define MAX_LED  10'b1000000000 
`define COUNT_MAX 32'h9

logic [9:0]leds_in = 10'b1;
logic flag;


/*
always_ff @(posedge clk)
	if(flag == 1'b1 )
		leds_in <= (leds_in >> 1);
	else 
		leds_in <= (leds_in << 1);
*/
// the flag remembers previous stage 
//  flag 0 going left
// flag 1 going right 
always_ff @(posedge clk)  
	if(leds_in >= `MAX_LED && flag == 0 ) 
	begin 
			flag <= 1;
			leds_in <= (leds_in >> 1);
	end
	else 
		begin 
			if(leds_in == 10'b1) 
			begin 
				flag <= 0;
		        leds_in <= (leds_in << 1);
			end
			else 
			    begin
			    if(flag == 0) 
			      begin 
			    	 leds_in <= (leds_in << 1);
			     	 flag <=flag;
			      end
			    else 	
			      begin 
			         leds_in <= (leds_in >> 1);
			         flag <= flag;
			      end	

			    end
		end 
assign leds = leds_in;
endmodule