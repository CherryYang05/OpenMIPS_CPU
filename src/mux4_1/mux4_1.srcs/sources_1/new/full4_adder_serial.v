`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/09 20:38:33
// Design Name: 
// Module Name: full4_adder_serial
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


module full4_adder_serial(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire cin1, cin2, cin3;
    full_adder3 fadder3_1(a[0], b[0], cin, sum[0], cin1);
    full_adder3 fadder3_2(a[1], b[1], cin1, sum[1], cin2);
    full_adder3 fadder3_3(a[2], b[2], cin2, sum[2], cin3);
    full_adder3 fadder3_4(a[3], b[3], cin3, sum[3], cout);
endmodule
