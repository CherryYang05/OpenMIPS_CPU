`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/16 20:50:22
// Design Name: 
// Module Name: ex_mem
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

module ex_mem(
    input wire                  clk,
    input wire                  rst,    
    input wire[5:0]             stall,
    input                       flush,
    
    input wire[`RegBus]         ex_wdata,
    input wire[`RegAddrBus]     ex_wd,
    input wire                  ex_wreg,
    input wire[`RegBus]         ex_hi,
    input wire[`RegBus]         ex_lo,
    input wire                  ex_whilo,

    
    input wire[`DoubleRegBus]   hilo_i,
    input wire[1:0]             cnt_i,
    
    //load and save
    input wire[`AluOpBus]       ex_aluop,
    input wire[`RegBus]         ex_mem_addr,
    input wire[`RegBus]         ex_reg2,
    
    //CP0
    input wire                  ex_cp0_reg_we,
    input wire[4:0]             ex_cp0_reg_write_addr,
    input wire[`RegBus]         ex_cp0_reg_data,
    
    //Interrupt
    input wire[31:0]            ex_excepttype,
    input                       ex_is_in_delayslot,
    input wire[`RegBus]         ex_current_inst_address,
    
    
    output reg[`RegBus]         mem_wdata,
    output reg[`RegAddrBus]     mem_wd,
    output reg                  mem_wreg,
    
    output reg[`RegBus]         mem_hi,
    output reg[`RegBus]         mem_lo,
    output reg                  mem_whilo,
    output reg[`DoubleRegBus]   hilo_o,
    output reg[1:0]             cnt_o,
    output reg[`AluOpBus]       mem_aluop,
    output reg[`RegBus]         mem_mem_addr,
    output reg[`RegBus]         mem_reg2,
    //CP0
    output reg                  mem_cp0_reg_we,
    output reg[4:0]             mem_cp0_reg_write_addr,
    output reg[`RegBus]         mem_cp0_reg_data,
    //Interrupt
    output reg[31:0]            mem_excepttype,
    output reg                  mem_is_in_delayslot,
    output reg[`RegBus]         mem_current_inst_address
    );
    
    always @(posedge clk) begin
        if (rst == `RstEnable) begin
            mem_wdata <= `ZeroWord;
            mem_wd <= `NOPRegAddr;
            mem_wreg <= `WriteDisable;
            mem_hi <= `ZeroWord;
            mem_lo <= `ZeroWord;
            mem_whilo <= `WriteDisable;
            hilo_o <= {`ZeroWord, `ZeroWord};
            cnt_o <= 2'b00;
            mem_cp0_reg_we <= `WriteDisable;
            mem_cp0_reg_write_addr <= 5'b00000;
            mem_cp0_reg_data <= `ZeroWord;
            mem_excepttype <= `ZeroWord;
            mem_is_in_delayslot <= `NotInDelaySlot;
            mem_current_inst_address <= `ZeroWord;
        end else if (flush == 1'b1) begin
            mem_wd <= `NOPRegAddr;
            mem_wreg <= `WriteDisable;
            mem_wdata <= `ZeroWord;
            mem_hi <= `ZeroWord;
            mem_lo <= `ZeroWord;
            mem_whilo <= `WriteDisable;
            mem_aluop <= `EXE_NOP_OP;
            mem_mem_addr <= `ZeroWord;
            mem_reg2 <= `ZeroWord;
            mem_cp0_reg_we <= `WriteDisable;
            mem_cp0_reg_write_addr <= 5'b00000;
            mem_cp0_reg_data <= `ZeroWord;
            mem_excepttype <= `ZeroWord;
            mem_is_in_delayslot <= `NotInDelaySlot;
            mem_current_inst_address <= `ZeroWord;
            hilo_o <= {`ZeroWord, `ZeroWord};
            cnt_o <= 2'b00;
        end else if (stall[3] == `Stop && stall[4] == `NoStop) begin
            mem_wd <= `NOPRegAddr;
            mem_wreg <= `WriteDisable;
            mem_wdata <= `ZeroWord;
            mem_hi <= `ZeroWord;
            mem_lo <= `ZeroWord;
            mem_whilo <= `WriteDisable;
            hilo_o <= hilo_i;
            cnt_o <= cnt_i;
            mem_cp0_reg_we <= `WriteDisable;
            mem_cp0_reg_write_addr <= 5'b00000;
            mem_cp0_reg_data <= `ZeroWord;
        end else if (stall[3] == `NoStop) begin
            mem_wdata <= ex_wdata;
            mem_wd <= ex_wd;
            mem_wreg <= ex_wreg;
            mem_hi <= ex_hi;
            mem_lo <= ex_lo;
            mem_whilo <= ex_whilo;
            hilo_o <= {`ZeroWord, `ZeroWord};
            cnt_o <= 2'b00;
            //load and save
            mem_aluop <= ex_aluop;
            mem_mem_addr <= ex_mem_addr;
            mem_reg2 <= ex_reg2;
            //CP0
            mem_cp0_reg_data <= ex_cp0_reg_data;
            mem_cp0_reg_write_addr <= ex_cp0_reg_write_addr;
            mem_cp0_reg_we <= ex_cp0_reg_we;
            //Interrupt
            mem_excepttype <= ex_excepttype;
            mem_is_in_delayslot <= ex_is_in_delayslot;
            mem_current_inst_address <= ex_current_inst_address;
        end else begin
            hilo_o <= hilo_i;
            cnt_o <= cnt_i;
        end
    end
    
endmodule
