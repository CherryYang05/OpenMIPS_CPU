`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 10:42:12
// Design Name: 
// Module Name: half_adder3
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


module half_adder3(
    input a,
    input b,
    output sum,
    output cout
    );
    
    assign sum = a ^ b;
    assign cout = a & b;
endmodule
