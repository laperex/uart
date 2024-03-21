

module i2c(clk, en, data, sda, scl);
	input clk;
	input en;
	input [7: 0] data;

	output reg scl;
	output reg sda;

	reg [4: 0] counter;
	
	initial scl = 1;

	always @(posedge clk) begin
		if (en) begin
			if (counter == 8)
				counter <= 0;
			else
				counter <= counter + 1;

			sda <= data & 1;

			
		end
	end
endmodule