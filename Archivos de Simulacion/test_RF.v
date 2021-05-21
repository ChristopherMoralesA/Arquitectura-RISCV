`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 05/11/2021 12:35:48 PM
// Module Name: test_RF
// Project Name: Proyecto_RISCV
// Description: Archivo de prueba para el módulo Register_File
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module test_RF(

    );
    reg CLK;
    reg RES;
    reg WE;
    reg [4:0] RA;
    reg [4:0] RB;
    reg [4:0] RW;
    reg [31:0] DW;
    wire [31:0] A;
    wire [31:0] B;
    
    reg [31:0] CTRP;
    
    Register_File uut (
        .CLK(CLK),
        .RES(RES),
        .WE_RF(WE),
        .RA_RF(RA),
        .RB_RF(RB),
        .RW_RF(RW),
        .DW_RF(DW),
        .A_RF(A),
        .B_RF(B)
    );
    
    initial begin
        CLK=0;
        RES=0;
        WE=0;
        RA=0;
        RB=0;
        RW=0;
        DW=0;
        
        CTRP=0;
    end
    
    always
        #5 CLK = ~CLK;
    
    always@(posedge CLK)
        begin
            CTRP = CTRP + 1;
            if (CTRP < 32)
                begin
                    WE = 1;
                    RW = CTRP;
                    DW = CTRP*15;
                end
            if (CTRP == 32)
                begin
                    RA = 0;
                    RB = 0;
                    WE = 0;
                end
            if ((CTRP < 64)&(CTRP > 32))
                begin
                    RA = RA+1;
                    RB = RB+1;
                end
            if ((CTRP >= 64)&(CTRP < 80))
                begin
                    WE = 1;
                    RW = RB - RA;
                    RB = RB + 3;
                    RA = RA - 1;
                    DW = CTRP*2;
                end
            if (CTRP >= 80)
                begin
                    RES =1;
                    WE = 1;
                    RW = RB - RA;
                    RB = RB + 3;
                    RA = RA - 1;
                    DW = CTRP*2;
                end
    end
    
    
endmodule
