`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/25 16:07:27
// Design Name: 
// Module Name: LLbit_reg
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
`include "define.v"

module LLbit_reg(
    input wire clk,
    input wire rst,
    //Whether exception happened
    input wire flush,
    
    //write
    input wire LLbit_i,
    input wire we,
    
    //value of LLbit reg
    output reg LLbit_o
    );
    
    always @ (posedge clk) begin
        if (rst == `RstEnable) begin
            LLbit_o <= 1'b0;
        end else if (flush == 1'b1) begin
            LLbit_o <= 1'b0;
        end else if (we == `WriteEnable) begin
            LLbit_o <= LLbit_i;
        end
    end
    
endmodule