

module interface(clk, reset, sw, led, btn);
	input clk;
	input reset;
	input [15: 0] sw;
	input [4: 0] btn;

	output [15: 0] led;

	reg [15: 0] value;
	
	initial value = 38;
	
	// wire scl;
	// wire sda;
	
	// i2c_master #(8) m_i2c_m(clk, reset, 1, value, scl, sda);
	// i2c_slave #(16) m_i2c_s(reset, scl, sda, led);

	assign led[15: 8] = 0;
endmodule