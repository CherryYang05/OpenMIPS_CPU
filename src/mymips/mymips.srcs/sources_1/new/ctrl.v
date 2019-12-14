`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/08 15:51:39
// Design Name: 
// Module Name: ctrl
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

module ctrl(
    input wire              rst,
    input wire              stallreq_from_id,
    input wire              stallreq_from_ex,
    
    input wire[31:0]        excepttype_i,
    input wire[`RegBus]     cp0_epc_i,
    
    output reg[`RegBus]      new_pc,
    output reg               flush,
    
    output reg[5:0]         stall
    );

    always @ (*) begin
        if (rst == `RstEnable) begin
            stall <= 6'b000000;
            flush <= 1'b0;
            new_pc <= `ZeroWord;
        end else if (excepttype_i != `ZeroWord) begin
            flush <= 1'b1;
            stall <= 6'b000000;
            case (excepttype_i)
                32'h00000001: begin             //Interrupt
                    new_pc <= 32'h00000020;
                end
                32'h00000008: begin             //syscall
                    new_pc <= 32'h00000040;
                end
                32'h0000000a: begin             //nonexist inst
                    new_pc <= 32'h00000040;
                end
                32'h0000000d: begin             //self trap
                    new_pc <= 32'h00000040;
                end
                32'h0000000c: begin             //overflow
                    new_pc <= 32'h00000040;
                end
                32'h0000000e: begin
                    new_pc <= cp0_epc_i;        //eret
                end
                default: begin
                end
            endcase
        end else if (stallreq_from_ex == `Stop) begin
            stall <= 6'b001111;
            flush <= 1'b0;
        end else if (stallreq_from_id == `Stop) begin
            stall <= 6'b000111;
            flush <= 1'b0;
        end else begin
            stall <= 6'b000000;
            flush <= 1'b0;
            new_pc <= `ZeroWord;
        end     //if
    end         //always
endmodule
