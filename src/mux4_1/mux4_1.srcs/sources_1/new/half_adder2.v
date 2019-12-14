`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 10:33:58
// Design Name: 
// Module Name: half_adder2
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


module half_adder2(
    input a,
    input b,
    output sum,
    output cout
    );
    reg sum,cout;
    always @(a or b)
        begin
            case ({a, b})
                2'b00:begin
                    sum = 0;
                    cout = 0;
                    end
                2'b01:begin
                    sum = 1;
                    cout = 0;
                    end
                2'b10:begin
                    sum = 1;
                    cout = 0;
                    end
                2'b11:begin
                    sum = 0;
                    cout = 1;
                    end
            endcase
        end
endmodule
