`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 10:31:35
// Design Name: 
// Module Name: half_adder1
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


module half_adder1(
    input a,
    input b,
    output sum,
    output cout
    );
    xor u1(sum, a, b);
    and u2(cout, a ,b);
endmodule
