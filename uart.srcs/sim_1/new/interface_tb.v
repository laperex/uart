`timescale 10ns/1ns

module interface_tb;
	reg clk = 0;
	reg reset = 1;
	
	// reg [7: 0] data_ram [0: 10] = "ABCDEFGHIJK";
	reg start = 1;
	reg start_s = 1;
	// reg [7: 0] i = 0;
	reg [7: 0] data = "A";
	reg [7: 0] data_s = "A";

	serial_uart_tx m_serial_uart_tx(clk, reset, data, start, stop, tx);

	uart_tx #(87) m_uart
  	(
		clk,
		start,
		data,
		o_Tx_Active,
		o_Tx_Serial,
		o_Tx_Done
   	);
	
	// assign data = data_ram[i];
	
	always @(posedge stop) begin
		if (data_s == "K") begin
			start_s <= 0;
		end else begin
			data_s <= data_s + 1;
		end
	end
	
	always @(posedge o_Tx_Done) begin
		if (data == "K") begin
			start <= 0;
		end else begin
			data <= data + 1;
		end
	end

	initial #5 reset = 0;
	
	always #0.5 clk = ~clk;
endmodule