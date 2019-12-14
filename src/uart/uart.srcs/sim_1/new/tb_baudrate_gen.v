`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/12 14:15:02
// Design Name: 
// Module Name: tb_baudrate_gen
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


module tb_baudrate_gen();
reg clk;
reg rst_n;
reg bps_tx_clk_en;
reg bps_rx_clk_en;
wire bps_tx_clk;
wire bps_rx_clk;

initial begin
    clk = 0;
    rst_n = 0;
    bps_tx_clk_en = 0;
    bps_rx_clk_en = 0;
    #10 rst_n = 1; bps_tx_clk_en = 1;
    #900 bps_tx_clk_en = 0; bps_rx_clk_en = 1;
    #900 bps_tx_clk_en = 1; bps_rx_clk_en = 0;
    #900 bps_tx_clk_en = 0; bps_rx_clk_en = 1;
    #900 bps_tx_clk_en = 1; bps_rx_clk_en = 1;
    $stop;
end

always #1 clk = ~clk;
baudrate_gen bg(
    .I_clk(clk),
    .I_rst_n(rst_n),
    .I_bps_tx_clk_en(bps_tx_clk_en),
    .I_bps_rx_clk_en(bps_rx_clk_en),
    .O_bps_tx_clk(bps_tx_clk),
    .O_bps_rx_clk(bps_rx_clk)
);
endmodule
