`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/15 20:10:11
// Design Name: 
// Module Name: pc_reg
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

module pc_reg(
    input wire                  clk,
    input wire                  rst,
    input wire[5:0]             stall,
    
    input wire                  branch_flag_i,
    input wire[`RegBus]         branch_target_address_i,
    
    input wire                  flush,
    input wire[`RegBus]         new_pc,
    
    output reg[`InstAddrBus]    pc,
    output reg                  ce
);
    
always @(posedge clk) begin
    if (rst == `RstEnable) ce <= `ChipDisable;       //Instruction memory is disabled when reseting
    else ce <= `ChipEnable;                          //Instruction memory is enabled after resetting  
end    

always @(posedge clk) begin
    if (ce == `ChipDisable) begin
        pc <= 32'h0000_0000;                         //PC equals 0 when instruction memory is prohibited
    end else begin
        if (flush == 1'b1) begin                     //Refresh      
            pc <= new_pc;
        end else if (stall[0] == `NoStop) begin
            if (branch_flag_i == `Branch) begin
                pc <= branch_target_address_i;
            end else begin
                pc <= pc + 4'h4;                     //PC add 4 per clock period when instrution is enabled
            end
        end
    end                                           
end
endmodule
