`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/09 09:01:53
// Design Name: 
// Module Name: mult_shift_add
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


module mult_shift_add #(parameter WIDTH = 8) (
    input [WIDTH - 1 : 0] S_data1,
    input [WIDTH - 1 : 0] S_data2,
    output reg [2 * WIDTH - 1 : 0] F_mult
    );
    
    reg [2 * WIDTH - 1 : 0] temp;
    //wire [WIDTH - 1 : 0] S_data1, S_data2;
    reg [2 * WIDTH - 1 : 0] S_data2_temp;
    integer index;
    reg [2 * WIDTH - 1 : 0] result;
    always @(*)
    begin
        F_mult = 0;
//        result = 0;
        S_data2_temp = {{WIDTH{1'b0}}, S_data2}; //Expand
        $monitor("S_data2_temp = %d", S_data2_temp);
        for (index = 0; index < WIDTH; index = index + 1)
        begin
            temp = {2 * WIDTH{S_data1[index]}} & {2*WIDTH{S_data2_temp}};
            F_mult = F_mult + (temp << index);
//            $monitor("index = %d", index);
            $monitor("F_mult = %d", F_mult);
            $monitor("temp = %d", temp);
            $monitor("2 * WIDTH{S_data1[index]} %d", {2 * WIDTH{S_data1[0]}});
            $monitor("1111 & 1000 = %d", 4'b1111 & 4'b1000);
        end
//        $monitor("S_data1 = %d", S_data1);            
//        $monitor("S_data2 = %d", S_data2_temp);
    end
endmodule
