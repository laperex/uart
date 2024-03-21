module right_shifter #(parameter SHIFT_WIDTH = 3) (shift_bits, data_in, data_out);
	input [SHIFT_WIDTH - 1: 0] shift_bits;
	input [2 ** SHIFT_WIDTH - 1: 0] data_in;
	output [2 ** SHIFT_WIDTH - 1: 0] data_out;
	
	wire [2 ** SHIFT_WIDTH - 1: 0] shift_stages [SHIFT_WIDTH: 0];

	assign shift_stages[0] = data_in;
	assign data_out = shift_stages[SHIFT_WIDTH];

	generate
		genvar i;
		for (i = 0; i < SHIFT_WIDTH; i = i + 1) begin
			assign shift_stages[i + 1] = shift_bits[i] == 1 ? shift_stages[i] >> 2 ** i: shift_stages[i];
		end
	endgenerate
endmodule

module i2c_master #(parameter WIDTH = 8) (clk, reset, en, data, scl, sda);
	input clk;
	input en;
	input reset;
	input [WIDTH - 1: 0] data;

	output reg scl;
	output reg sda;
	
	reg i2c_en;

	parameter [1: 0] I2C_IDLE = 0;
	parameter [1: 0] I2C_START = 1;
	parameter [1: 0] I2C_DATA = 2;
	parameter [1: 0] I2C_ACK = 3;
	parameter [1: 0] I2C_STOP = 4;

	reg [2: 0] i2c_state;

	reg [$clog2(WIDTH): 0] scl_counter;

	initial i2c_en = 0;

	always @(posedge en) begin
		i2c_en <= 1;
		i2c_state <= I2C_START;
	end

	always @(posedge clk, posedge reset) begin
		if (reset) begin
			sda <= 1;
			scl <= 1;
			scl_counter <= 0;

			i2c_state <= I2C_IDLE;
		end else begin
			if (i2c_state == I2C_STOP) begin
				if (scl)
					sda <= 1;
				else
					scl <= 1;
			end else begin
				scl <= ~scl;
			end
		end
	end

	always @(negedge scl) begin
		scl_counter <= scl_counter + 1;

		if (i2c_state == I2C_START) begin
			sda <= 0;
			i2c_state <= I2C_DATA;
		end else if (i2c_state == I2C_DATA)
			if (scl_counter == 7)
				sda <= data[scl_counter];
			else
				sda <= 1;
	end
endmodule

module i2c_slave #(parameter WIDTH = 8) (reset, sr_clk, sr_data, data_out);
	input reset;
	
	input sr_clk;
	input sr_data;
	
	output [WIDTH - 1: 0] data_out;
	
	reg s_reg [WIDTH - 1: 0];
	
	reg [WIDTH - 1: 0] counter;
	
	initial counter = 0;

	always @(posedge sr_clk) begin
		if (reset)
			counter <= 0;
		else
			counter <= counter + 1;
	end

	generate
		genvar i;

		for (i = 0; i < WIDTH; i = i + 1) begin
			always @(posedge sr_clk, posedge reset) begin
				if (reset) begin
					s_reg[i] = 0;
				end else if (counter <= WIDTH) begin
					if (i == 0)
						s_reg[i] <= sr_data;
					else
						s_reg[i] <= s_reg[i - 1];
				end
			end

			assign data_out[i] = s_reg[i];
		end
	endgenerate
endmodule