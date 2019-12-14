`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/17 09:00:25
// Design Name: 
// Module Name: inst_rom
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

module inst_rom(
    input wire ce,
    input wire [`InstAddrBus] addr,
    output reg [`InstBus] inst
    );
    
    //Define an array with size of InstMemNun and with element width of InstBus
    reg [`InstBus] inst_mem [0 : `InstMemNum - 1];
    
    //Use the file inst_rom.data to initialize the instruction rom
    initial $readmemh ("inst_rom.data", inst_mem);
    
    //When the resetting signal is invalid, giving the element of ROM by the address typed in
    always @(*) begin
        if (ce == `ChipDisable) begin
            inst <= `ZeroWord;
        end else begin
            inst <= inst_mem[addr[`InstMemNumLog2 + 1 : 2]];
        end
    end
    
endmodule
