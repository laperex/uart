

module interface(clk, btnC, uart_RX, uart_TX, led);
	input clk;

	input btnC;

	input uart_RX;
	output uart_TX;

	output [15: 0] led;


	wire reset = btnC;

	assign led[0] = reset;
	
	assign led[1] = ~uart_TX;
	assign led[2] = ~uart_RX;

	assign led[15: 2] = 0;
	
	// reg available = 0;

	// reg [8: 0] debounce_counter = 0;
	
	// always @(posedge clk) begin
	// 	if (debounce_counter == 100) begin
	// 		reset <= ~reset;

	// 		debounce_counter <= 0;
	// 	end else begin
	// 		if (btnC || reset) begin
	// 			debounce_counter <= debounce_counter + 1;
	// 		end else begin
	// 			debounce_counter <= 0;
	// 		end
	// 	end
	// end
	
	reg [7: 0] data [0: 15];
	
	initial begin
		$readmemb("/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/data_rom.txt", data);
	end

	reg wr_en;
	reg [7: 0] wr = 0;

	wire tx_done;
	wire tx_sr;
	
	reg [16: 0] i = 0;
	
	wire [7: 0] rd_data = data[i];
	// reg [7: 0] data;
	
	reg [40: 0] counter;

	always @(posedge clk) begin
		if (reset) begin
			counter <= 0;
			wr_en <= 0;
			wr <= 0;

			i <= 255;
		end else begin
			if (wr_en == 0 && tx_done == 1) begin
				// if (i < 256) begin
					wr_en <= 1;
					wr <= i[7: 0];

					i <= i + 1;
				// end
			end else begin
				wr_en <= 0;

				counter <= counter + 1;
			end
		end
	end

	assign uart_TX = tx_sr;

	m_uart_tx #(.CLKS_PER_BIT(830)) tx (clk, reset, wr_en, wr, tx_sr, tx_done);
endmodule