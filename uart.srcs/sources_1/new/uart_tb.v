`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 10:34:22 PM
// Design Name: 
// Module Name: uart_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_tb();
	reg clk = 0;
	reg reset = 1;
	
	always #0.5 clk = ~clk;
	
	initial #5 reset = 0;


	reg [7: 0] data [20: 0] = "Hello World";


	reg wr_en;
	reg [7: 0] wr;

	wire tx_sr_en;
	wire tx_sr_done;
	wire tx_sr_out;
	
	reg [16: 0] i;

	always @(posedge clk) begin
		if (reset) begin
			wr_en <= 0;
			wr <= 0;
			i <= 0;
		end else begin
			if (wr_en == 0 && tx_done == 1) begin
				wr_en <= 1;
				wr <= data[i];
				
				i <= i + 1;
			end else begin
				wr_en <= 0;
			end
		end
	end
	
	wire [7: 0] rd;

	m_uart_tx #(.CLKS_PER_BIT(87)) tx (clk, reset, wr_en, wr, tx_sr, tx_done);
	m_uart_rx #(.CLKS_PER_BIT(87)) rx (clk, reset, tx_sr, rd_en, rd);
endmodule
