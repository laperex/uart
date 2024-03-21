

module serial_uart_tx(clk, reset, data, start, stop, tx);
	input clk;
	input reset;

	input [7: 0] data;

	input start;
	output stop;

	output reg tx;

	parameter UART_IDLE = 5;
	parameter UART_START = 1;
	parameter UART_DATA = 2;
	parameter UART_STOP = 3;
	
	reg [3: 0] i;
	reg [7: 0] i_clk_count;
	reg [7: 0] i_clk;
	reg [3: 0] u_state;
	
	reg uart_clk;

	assign stop = (u_state == UART_STOP);

	always @(posedge clk) begin
		if (reset) begin
			i <= 0;
			tx <= 1;
			u_state <= UART_IDLE;
			i_clk_count <= 0;
			uart_clk <= 0;
		end else begin
			if (i_clk_count == 0) begin
				uart_clk <= 1;
				i_clk_count <= 87 - 1;
			end else begin
				i_clk_count <= i_clk_count - 1;
				if (uart_clk == 1) begin
					uart_clk <= 0;
				end
			end
		end
	end

	always @(posedge clk) begin
		if (reset == 0) begin
			case (u_state)
				UART_START: if (uart_clk) begin
					tx <= 0;
					u_state <= UART_DATA;
				end

				UART_DATA: if (uart_clk) begin
					tx <= data[7 - i];
					
					if (i == 7) begin
						u_state <= UART_STOP;
						// stop <= 1;
						i <= 0;
					end else begin
						i <= i + 1;
					end
				end
				
				UART_STOP: if (uart_clk) begin
					tx <= 1;
					u_state <= UART_IDLE;
				end
				
				UART_IDLE: if (uart_clk) begin
					if (start) begin
						u_state <= UART_START;
						// stop <= 0;
					end
				end
					
				
				default: begin
					
				end
			endcase
		end
	end
endmodule