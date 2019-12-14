`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/12 14:52:44
// Design Name: 
// Module Name: tb_uart_tx_top
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


module tb_uart_tx_top();
reg clk;
reg rst_n;
wire rs232_txd;
initial begin
    clk = 0;
    rst_n = 0;
    #5 rst_n = 1;
end
always #1 clk = ~clk;
uart_tx_top tx_top(
    .I_clk                      (clk), 
    .I_rst_n                  (rst_n), 
    .O_rs232_txd         (rs232_txd)
);
endmodule
