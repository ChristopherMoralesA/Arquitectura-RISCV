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
    wire [31:0] RD;
    
    Instruction_Memory uut (
    .A_IM(A),
    .RD_IM(RD)
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
