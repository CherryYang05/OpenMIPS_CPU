`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 11:22:26
// Design Name: 
// Module Name: full_adder1
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


module full_adder1(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    wire s1,m1,m2,m3;
    xor u1(s1, a, b);
    xor u2(sum, s1, cin);
    and (m1, a, b);
    and (m2, a, cin);
    and (m3, b ,cin);
    or (cout, m1, m2, m3);
    
endmodule
