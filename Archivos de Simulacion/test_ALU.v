`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 18:37:48
// Design Name: 
// Module Name: SIM_ALU
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


module test_ALU(
    );
    
    reg [31:0] rs1, rs2;
    reg clk;
    reg [2:0] sel;
    wire [31:0] sal;
    
    ALU uut(
        .rs1(rs1),
        .rs2(rs2),
        .sel(sel),
        .sal(sal)
    );
    
    initial begin
        rs1 = 226;
        rs2 = 7;
        sel = 0;
        clk = 0;
    end
    
    always
        #5 clk = ~clk;
        
    always@(posedge clk)
        begin
            sel = sel + 1;
        end
    
    initial
    #85 $finish;
    
endmodule
