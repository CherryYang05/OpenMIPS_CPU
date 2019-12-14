`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 11:27:33
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();
wire sum1, sum2, sum3, cout1, cout2, cout3;
reg Ain, Bin, Cin;

initial
begin
    //000
    #1
    Ain = 0;
    Bin = 0;
    Cin = 0;
    //001
    #10;
    Ain=0;
    Bin=0;
    Cin=1;
    //010
    #10;
    Ain=0;
    Bin=1;
    Cin=0;
    //011
    #10;
    Ain=0;
    Bin=1;
    Cin=1;
    //100
     #10;
    Ain=1;
    Bin=0;
    Cin=0;
    //101
     #10;
    Ain=1;
    Bin=0;
    Cin=1;
    //110
     #10;
    Ain=1;
    Bin=1;
    Cin=0;
    //111
     #10;
    Ain=1;
    Bin=1;
    Cin=1;
    #10 $stop;
    
end
full_adder1 fadder1(Ain, Bin, Cin, sum1, cout1);
full_adder2 fadder2(Ain, Bin, Cin, sum2, cout2);
full_adder3 fadder3(Ain, Bin, Cin, sum3, cout3);

endmodule
