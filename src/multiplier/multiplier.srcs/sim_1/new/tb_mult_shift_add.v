`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/09 11:24:45
// Design Name: 
// Module Name: tb_mult_shift_add
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


module tb_mult_shift_add();
parameter WIDTH = 8;
reg clk;
reg [WIDTH - 1 : 0] S_data1,S_data2;
wire [2 * WIDTH - 1 : 0] F_mult;
initial begin
    clk = 0;
    S_data1 = 0;
    S_data2 = 0;
    #10
    S_data1 = 2;
    S_data2 = 6;
    #10
    S_data1 = 7;
    S_data2 = 9;
    #10
    S_data1 = 17;
    S_data2 = 12;
//    #10 $stop;
    #5 repeat (5) @(posedge clk)
    begin
        S_data1 <= ($random);
        S_data2 <= ($random);
    end
    $stop;
end
always #5 clk = ~clk;
mult_shift_add #(WIDTH) mult_shift_adder(S_data1, S_data2, F_mult);
endmodule
