`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/17 09:39:03
// Design Name: 
// Module Name: tb_openmips_min_sopc
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


module tb_openmips_min_sopc();
    reg CLOCK_50;
    reg rst;
    
    //Turn ovr the time signal per 50 sec, so the T = 20ns, f = 50MHz
    initial begin
        CLOCK_50 = 1'b0;
        forever #10 CLOCK_50 = ~CLOCK_50;
    end
    
    //The resetting signal is valid in the beginning, in the 195ns it becomes invalid, so as the min SOPC start
    //After 1000ns, the simulation paused
    initial begin
        rst = `RstEnable;
        #195 rst = `RstDisable;
        #3500 $stop;
    end
    
    //SOPC for instance
    openmips_min_sopc openmips_min_sopc0(
        .clk(CLOCK_50),
        .rst(rst)
    );
    
endmodule
