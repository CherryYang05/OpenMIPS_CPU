`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/13 21:34:49
// Design Name: 
// Module Name: mul_Booth
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


module mul_Booth(Mx, My, Mout);
input [5:0] Mx, My;
output reg [9:0] Mout;
reg [5:0] a;
reg [5:0] b, c;
reg [3:0] n;
reg p ,q;
always @(Mx, My) begin
    if (Mx == 0 || My == 0) Mout <= 0;
    else begin
        a = 6'b0;
        n = 4'b1111;
        p = 1'b1;
        q = 1'b0;
        b = Mx;
        c = My;
        c = {c[4:0], q};
        while (n) begin
            n = n >> 1;
            if ((c[0] == 0 && c[1] == 0) || (c[0] == 1 && c[1] == 1)) begin
                c = c >> 1;
                c[5] = a[0];
                a = a >> 1;
                if (a[4] == 1) a = {p, a[4:0]};
                else a = a;
            end
            else if (c[0] == 1 && c[1] == 0) begin
                a = a + b;
                c = c >> 1;
                c[5] = a[0];
                a= a >> 1;
                if (a[4] == 1) a = {p, a[4:0]};
                else a = a;
            end
            else if (c[0] == 0 && c[1] == 1) begin
                a = a - b;
                c = c >> 1;
                c[5] = a[0];
                a = a >> 1;
                if (a[4] == 1) a = {p, a[4:0]};
                else a = a;
            end
        end
        if (c[0] == 1 && c[1]  == 0) a = a + b;
        else if (c[0] == 0 && c[1] == 1) a = a - b;
        Mout = {a, c[5:2]};
    end
end
endmodule
