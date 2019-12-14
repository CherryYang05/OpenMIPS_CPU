`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/15 20:22:57
// Design Name: 
// Module Name: if_id
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

module if_id(
    input wire clk,
    input wire rst,
    //Signal from addressing stage. The macro definition of InstBus denote the width of instruction, is 32
    input wire[`InstAddrBus]    if_pc,
    input wire[`InstBus]        if_inst,
    input wire[5:0]             stall,
    input wire                  flush,
    //Signal from decoding
    output reg[`InstAddrBus]    id_pc,
    output reg[`InstBus]        id_inst
);

always @(posedge clk) begin
    if (rst == `RstEnable) begin
	   id_pc <= `ZeroWord;                         //PC equals 0 when resetting
	   id_inst <= `ZeroWord;                       //Instruction is also 0 when resetting, empty instruction actually
    end else if (flush == 1'b1) begin
        id_pc <= `ZeroWord;
        id_inst <= `ZeroWord;
    end else if (stall[1] == `Stop && stall[2] == `NoStop)begin
        id_pc <= `ZeroWord;
        id_inst <= `ZeroWord;
        $monitor("PC/ID stall[1]==",stall[1]);
    end else if (stall[1] == `NoStop) begin
	   id_pc <= if_pc;                                    //Pass the value of addressing stage down
	   id_inst <= if_inst;
	   $monitor("start to fecth");
	end
end    
    
endmodule
