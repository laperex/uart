

module interface(clk, btnC, uart_RX, uart_TX, led);
	input clk;

	input btnC;

	input uart_RX;
	output uart_TX;

	output [15: 0] led;


	wire reset = btnC;

	assign led[0] = reset;
	
	assign led[1] = uart_TX;
	
	assign led[15: 2] = 0;

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
	
	// reg [7: 0] data [0: 15];
	
	// initial begin
	// 	$readmemb("/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/data_rom.txt", data);
	// end

	reg wr_en;
	reg [7: 0] wr = 0;

	wire tx_done;
	wire tx_sr;
	
	reg [16: 0] i = 0;
	
	// wire [7: 0] rd_data = data[i];
	reg [7: 0] data;

	always @(posedge clk) begin
		if (reset) begin
			wr_en <= 0;
			wr <= 0;
			i <= 0;
			data <= 0;
		end else begin
			if (wr_en == 0 && tx_done == 1) begin
				if (data != i[15: 8]) begin
					wr_en <= 1;
					wr <= i[15: 8] + 97;
					data <= i[15: 8];
				end

				// if (i == 15) begin
				// 	i <= 0;
				// end else begin
				// end

				// data <= i[14: 7];
				
				if (i[15: 8] != 128) begin
					i <= i + 1;
				end
			end else begin
				wr_en <= 0;
			end
		end
	end
	
	assign uart_TX = tx_sr;
	
	m_uart_tx #(.CLKS_PER_BIT(87)) tx (clk, reset, wr_en, wr, tx_sr, tx_done);
endmodule