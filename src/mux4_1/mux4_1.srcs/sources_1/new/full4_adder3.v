`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 22:23:42
// Design Name: 
// Module Name: full4_adder3
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


module full4_adder3(
    input [3:0] a,b,
    input cin,
    output [3:0] Sum,
    output cout
    );
    
    wire [3:0] G, P;
    wire [3:0] Sum;
    
    assign G[0] = a[0] & b[0];
    assign P[0] = a[0] ^ b[0];
    assign Sum[0] = P[0] ^ cin;
    assign P[1] = a[1] | b[1];
    assign G[1] = a[1] & b[1];
    assign Sum[1] = P[1] ^ (G[0] | (P[0] & cin));
    assign P[2] = a[2] ^ b[2];
    assign G[2] = a[2] & b[2];
    assign Sum[2] = P[2] ^ (G[1] | (P[1] & (G[0] | (P[0] & cin))));
    assign P[3] = a[3] ^ b[3];
    assign G[3] = a[3] & b[3];
    assign Sum[3] = P[3] ^ (G[2] | P[2] & (G[1] | (P[1] & (G[0] | (P[0] & cin)))));
    assign cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin);
endmodule
