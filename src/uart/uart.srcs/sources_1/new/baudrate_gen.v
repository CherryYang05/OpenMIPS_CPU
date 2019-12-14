`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/10 10:15:20
// Design Name: 
// Module Name: baudrate_gen
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


module baudrate_gen
(
    input   I_clk                  , // System 50MHz clk
    input   I_rst_n                , // Reset
    input   I_bps_tx_clk_en        , // Transmit Enable
    input   I_bps_rx_clk_en        , // Receive Enable
    output  O_bps_tx_clk           , // 发送模块波特率产生时钟
    output  O_bps_rx_clk             // 接收模块波特率产生时钟
);

parameter       C_BPS9600          = 5207     ,
                        C_BPS19200        = 2603     ,   
                        C_BPS38400        = 1301      ,    
                        C_BPS57600        = 867       ,    
                        C_BPS115200       = 433       ;    
                
parameter       C_BPS_SELECT      = C_BPS115200  ;
                

reg [12:0]  R_bps_tx_cnt;
reg [12:0]  R_bps_rx_cnt;

///////////////////////////////////////////////////////////    
// transmit
///////////////////////////////////////////////////////////
always @(posedge I_clk or negedge I_rst_n)
begin
    if(!I_rst_n)
        R_bps_tx_cnt <= 13'd0 ;
    else if(I_bps_tx_clk_en == 1'b1)
        begin
            if(R_bps_tx_cnt == C_BPS_SELECT)
                R_bps_tx_cnt <= 13'd0 ;
            else
                R_bps_tx_cnt <= R_bps_tx_cnt + 1'b1 ;                 
        end    
    else
        R_bps_tx_cnt <= 13'd0 ;        
end

assign O_bps_tx_clk = (R_bps_tx_cnt == 13'd1) ? 1'b1 : 1'b0 ;

///////////////////////////////////////////////////////////    
// receive
///////////////////////////////////////////////////////////
always @(posedge I_clk or negedge I_rst_n)
begin
    if(!I_rst_n)
        R_bps_rx_cnt <= 13'd0 ;
    else if(I_bps_rx_clk_en == 1'b1)
        begin
            if(R_bps_rx_cnt == C_BPS_SELECT)
                R_bps_rx_cnt <= 13'd0 ;
            else
                R_bps_rx_cnt <= R_bps_rx_cnt + 1'b1 ;                 
        end    
    else
        R_bps_rx_cnt <= 13'd0 ;        
end

assign O_bps_rx_clk = (R_bps_rx_cnt == C_BPS_SELECT >> 1'b1) ? 1'b1 : 1'b0 ;

endmodule
