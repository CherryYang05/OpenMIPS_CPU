`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/09 10:50:43
// Design Name: 
// Module Name: mac
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


module mac(
    input clk,
    input clr,
    input [7:0] opa,
    input [7:0] opb,
    output [15:0] out
    );

reg [15:0] out;
wire [15:0] sum;
function [15:0] mult;
input [7:0] opa, opb;
reg [15:0] result;
integer index;
begin
    result = opa[0] ? {{8'b0}, opb} : 16'b0;
    //opa_temp = {{8{1'b0}}, opa};
    for (index = 1; index < 8; index = index + 1)
    begin
        if (opa[index] == 1) result = result + (opb<<index);
        else result = result + {16'b0};
        $monitor("opa[index] = %d", opa[index]);
        $monitor("result = %d", result);
        $monitor("index = %d", index);
    end
    mult = result;
end
endfunction
assign sum = mult(opa, opb) + out;
always @(posedge clk or posedge clr)
begin
    if (clr)
        out <= 0;
    else
        out <= sum;
end
endmodule
