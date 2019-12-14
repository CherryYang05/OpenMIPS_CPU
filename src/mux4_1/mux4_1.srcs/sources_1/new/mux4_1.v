`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 10:14:31
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(out, in1, in2, in3, in4);
input in1, in2, in3, in4;
output out;
reg out;
wire in1,in2,in3,in4,s0,s1;
always@ (*)
    case ({s0, s1})
    2'b00:out = in1;
    2'b01:out = in2;
    2'b10:out = in3;
    2'b11:out = in4;
    default:out = 2'bx;
    endcase;
endmodule
