`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 05/10/2021 04:04:13 PM
// Module Name: test_IM
// Project Name: Proyecto_RISCV
// Description: Archivo de prueba para el módulo Instruction Memory
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module test_IM(

    );
    reg CLK;
    reg [31:0] A;
    wire [6:0] OPCODE_IM;
    wire [2:0] FUNCT3_IM;
    wire [6:0] FUNCT7_IM;
    wire [4:0] RA_IM;
    wire [4:0] RB_IM;
    wire [4:0] RW_IM;
    wire [24:0] EU_IM;
    
    Instruction_Memory uut (
    .A_IM(A),
    .OPCODE_IM(OPCODE_IM),
    .FUNCT3_IM(FUNCT3_IM),
    .FUNCT7_IM(FUNCT7_IM),
    .RA_IM(RA_IM),
    .RB_IM(RB_IM),
    .RW_IM(RW_IM),
    .EU_IM(EU_IM)
    );
    
    initial begin
        CLK = 0;
        A = 0;
    end
    
    always
        #15 CLK = ~CLK;
        
    always@(negedge CLK)
        A=A+4;
    
endmodule
