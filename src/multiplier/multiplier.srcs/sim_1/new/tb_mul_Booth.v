`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/13 21:53:06
// Design Name: 
// Module Name: tb_mul_Booth
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


module tb_mul_Booth();
reg clk;
reg [5:0] Mx, My;
wire [9:0] Mout;
initial begin
    clk = 0;
    Mx = 0;
    My = 0;
    #10
    Mx = 9;
    My = 6;
    #10
    Mx = 12;
    My = 12;
    #10 repeat(10) @(posedge clk) begin
        Mx <= {$random} % 16;
        My <= {$random} % 16;
    end
    $stop;
end
always #5 clk = ~clk;
mul_Booth Booth(Mx, My, Mout);
endmodule
