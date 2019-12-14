`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/08 17:22:16
// Design Name: 
// Module Name: tb_full4_adder
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


module tb_full4_adder();
wire [3:0] Sum;
wire cout;
reg [3:0] Ain;
reg [3:0] Bin;
reg cin;

initial
    begin
        //0000 0001 1
        Ain = 4'b0000;
        Bin = 4'b0001;
        cin = 1;
        //0001 0011 0
        #10
        Ain = 4'b0001;
        Bin = 4'b0011;
        cin = 0;
        //0111 0010 1
        #10
        Ain = 4'b0111;
        Bin = 4'b0010;
        cin = 1;
        //1111 1111 0
        #10
        Ain = 4'b1111;
        Bin = 4'b1111;
        cin = 0;
        #10 $stop;
    end
    
//    full4_adder3 f4adder3(Ain, Bin, cin, Sum, cout);
    full4_adder_serial fadder_serial(Ain, Bin, cin, Sum, cout);
endmodule
