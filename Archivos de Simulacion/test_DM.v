`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2021 00:46:39
// Design Name: 
// Module Name: DAT_PR
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


module test_DM(
    );
    reg RW;
    reg EN;
    reg CLK;
    reg [31:0] ADDr;
    reg [31:0] Din;
    wire [31:0] Dout;
    reg Cont;
    Data_Memory uut(
        .RW(RW),
        .EN(EN),
        .CLK(CLK),
        .Dout(Dout),
        .Din(Din),
        .ADDr(ADDr)
        );
    initial begin
        RW = 0;
        EN = 1;
        CLK = 0;
        Din = 24;
        ADDr = 32'h00000003;
        Cont = 0;
    end
    always
        #5  CLK = ~CLK; 
    always@(posedge CLK)
    begin
    RW = ~RW;
    Cont = ~Cont;
    if(Cont == 1)
    begin
        ADDr = ADDr + 1;
        Din = Din + 4;
    end
    end
    initial
        #40 $finish;
endmodule
