`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 05/10/2021 03:48:00 PM
// Module Name: Instruction_Memory
// Project Name: Proyecto_RISCV
// Description: Este módulo accede mediante un address a la instrucción de acuerdo con PC
//
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module Instruction_Memory(
    input [31:0] A_IM,
    output reg [31:0] RD_IM
    );
    reg [31:0] mem[0:256];
    
    initial
        $readmemh("instrucciones_IM.mem",mem);

    always@(*)
        RD_IM = mem[A_IM >> 2];
endmodule
