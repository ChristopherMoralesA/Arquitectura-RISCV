`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2021 11:49:18
// Design Name: 
// Module Name: ALU
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


module ALU(
    /* Se definen las entradas y salidas del modulo*/
    input [31:0] rs1, rs2,
    input [2:0] sel,
    output reg [31:0] sal
    );
    
    always @(*)
        begin
            case(sel)
                0:
                    sal = rs1 + rs2;
                1:
                    sal = rs1 & rs2;
                2:
                    sal = rs1 ^ rs2;
                3:
                    sal = rs1 << rs2;
                4:
                    sal = rs1 >>> rs2;
                5: 
                    sal = rs1 - rs2;
                6:
                    sal = (rs1 + rs2) & 32'hFFFE;
                7:
                    sal = 32'h0000;
                default:
                    sal = 32'h0000;
            endcase
        end
endmodule
