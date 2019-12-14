`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/09 11:05:44
// Design Name: 
// Module Name: tb_mac
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


module tb_mac();
reg [7:0] opa, opb;
reg clk, clr;
wire [15:0] out;
parameter DELAY = 100;
mac u1(.clk(clk), .clr(clr), .opa(opa), .opb(opb), .out(out));
initial begin
    clk = 1;
    clr = 1;
    opa = 8'd0;
    opb = 8'd0;
    #DELAY clr = 0; opa = 8'd1; opb = 8'd5;
    #DELAY clr = 0; opa = 8'd4; opb = 8'd7;
    #DELAY clr = 0; opa = 8'd12; opb = 8'd12;
    #DELAY clr = 0; opa = 8'd9; opb = 8'd13;
    #DELAY $stop;
end
always #(50) clk = ~clk;
initial $monitor($time,,, "clr = %d opa = %d opb = %d out = %d", clr, opa, opb, out);

endmodule
