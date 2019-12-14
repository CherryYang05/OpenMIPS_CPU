`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/12 10:00:39
// Design Name: 
// Module Name: uart_tx_top
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


module uart_tx_top
(
    input          I_clk           , // 系统50MHz时钟
    input          I_rst_n         , // 系统全局复位
    output         O_rs232_txd       // 发送的串行数据，在硬件上与串口相连
);

wire              W_bps_tx_clk;
wire              W_bps_tx_clk_en;
wire              W_tx_start;
wire              W_tx_done;
wire  [7:0]     W_para_data;
        
reg   [7:0]     R_data_reg;
reg   [31:0]    R_cnt_1s;
reg                R_tx_start_reg;

assign W_tx_start      =    R_tx_start_reg;
assign W_para_data    =    R_data_reg;

/////////////////////////////////////////////////////////////////////
// Generate the data
/////////////////////////////////////////////////////////////////////
always @(posedge I_clk or negedge I_rst_n)
begin
     if(!I_rst_n)
        begin
             R_cnt_1s           <= 31'd0;
             R_data_reg       <= 8'd0;
             R_tx_start_reg <= 1'b0;
        end
     else if(R_cnt_1s == 31'd4999)
        begin
             R_cnt_1s           <= 31'd0;
             R_data_reg       <= R_data_reg + 1'b1;
             R_tx_start_reg <= 1'b1;
        end
     else
        begin
          R_cnt_1s               <= R_cnt_1s + 1'b1;
          R_tx_start_reg     <= 1'b0;
        end
end

uart_txd U_uart_txd
(
    .I_clk                              (I_clk),
    .I_rst_n                          (I_rst_n),
    .I_tx_start                     (W_tx_start),
    .I_bps_tx_clk                 (W_bps_tx_clk),
    .I_para_data                   (W_para_data),
    .O_rs232_txd                 (O_rs232_txd),
    .O_bps_tx_clk_en          (W_bps_tx_clk_en),
    .O_tx_done                     (W_tx_done)
);

baudrate_gen U_baudrate_gen
(
    .I_clk                              (I_clk),
    .I_rst_n                          (I_rst_n),
    .I_bps_tx_clk_en           (W_bps_tx_clk_en),
    .I_bps_rx_clk_en           (            ),
    .O_bps_tx_clk                (W_bps_tx_clk),
    .O_bps_rx_clk                (            )
);

endmodule
