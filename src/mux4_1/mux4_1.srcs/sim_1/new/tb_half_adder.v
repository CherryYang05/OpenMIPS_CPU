`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 10:43:34
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder();
wire sum1, sum2, sum3, cout1, cout2, cout3;
reg Ain, Bin;
//initial
//    begin
//        #1
//        Ain = 1;
//        Bin = 1;
//    end
//always #5 clk = ~clk;
//always @(posedge clk)
//begin
//    Ain={$random}%2;
//    Bin={$random}%2;
//end
initial
begin
    //00
    #1
    Ain = 0;
    Bin = 0;
    //01
    #10;
    Ain=0;
    Bin=1;
    //10
    #10;
    Ain=1;
    Bin=0;
    //11
    #10;
    Ain=1;
    Bin=1;
    #10 $stop;
    
end
half_adder1 hadder1(Ain, Bin, sum1, cout1);
half_adder2 hadder2(Ain, Bin, sum2, cout2);
half_adder3 hadder3(Ain, Bin, sum3, cout3);
endmodule
