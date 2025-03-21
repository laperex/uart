module m_uart_tx #(CLKS_PER_BIT = 870) (clk, reset, wr_en, wr, tx_sr, tx_done);
	input clk;
	input reset;

	input wr_en;
	input [7: 0] wr;

	output reg tx_sr = 1;
	output reg tx_done;
	

	reg [9: 0] wr_byte;
	reg [$clog2(CLKS_PER_BIT) - 1: 0] counter;


	always @(posedge clk) begin
		if (reset) begin
			counter <= 0;

			tx_sr <= 1;

			tx_done <= 1;
		end else begin
			if (wr_en) begin
				counter <= CLKS_PER_BIT - 1;

				wr_byte[9] <= 1;
				wr_byte[8: 1] <= wr[7: 0];
				wr_byte[0] <= 0;

				tx_done <= 0;
			end else if (tx_done == 0) begin
				tx_sr <= wr_byte[0];

				if (counter == 0) begin
					counter <= CLKS_PER_BIT - 1;

					if (wr_byte == 1) begin
						tx_done <= 1;
					end else begin
						wr_byte <= wr_byte >> 1;
					end
				end else begin
					counter <= counter - 1;
				end
			end
		end
	end
endmodule



module m_uart_rx #(CLKS_PER_BIT = 870) (clk, reset, rx_sr, rd_en, rd);
	input clk;
	input reset;

	input rx_sr;

	output reg rd_en;
	output reg [7: 0] rd;


	reg rx_en;

	reg [9: 0] rd_byte;
	reg [$clog2(CLKS_PER_BIT) - 1: 0] counter;


	always @(posedge clk) begin
		if (reset) begin
			rd_byte <= 10'h200;
			counter <= 0;

			rx_en <= 0;
			rd_en <= 0;
		end else begin
			if (rx_en) begin
				if (counter == 0 || (rx_sr != rd_byte[9] && rd_byte[8: 0] != 0)) begin
					counter <= CLKS_PER_BIT - 1;

					if (rd_byte[0] == 1) begin
						rd <= rd_byte[8: 1];

						rx_en <= 0;
						rd_en <= 1;
					end else begin
						rd_byte[9] <= rx_sr;
						rd_byte[8: 0] <= rd_byte[9: 1];
					end
				end else begin
					counter <= counter - 1;
				end
			end else begin
				rd_byte <= 10'h200;

				rx_en <= (rx_sr == 0);

				counter <= CLKS_PER_BIT - 1;

				rd_en <= 0;
			end
		end
	end
endmodule
