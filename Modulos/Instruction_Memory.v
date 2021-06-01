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
    output reg [6:0] OPCODE_IM,
    output reg [2:0] FUNCT3_IM,
    output reg [6:0] FUNCT7_IM,
    output reg [4:0] RA_IM,
    output reg [4:0] RB_IM,
    output reg [4:0] RW_IM,
    output reg [24:0] EU_IM
    );
    reg [31:0] RD_IM;
    reg [31:0] mem[0:256];
    
    initial
        $readmemh("instrucciones_IM.mem",mem);

    always@(*) begin
        RD_IM = mem[A_IM >> 2];
        OPCODE_IM = RD_IM[6:0];
        FUNCT3_IM = RD_IM[14:12];
        FUNCT7_IM = RD_IM[31:25];
        RA_IM = RD_IM[19:15];
        RB_IM = RD_IM[24:20];
        RW_IM = RD_IM[11:7];
        EU_IM = RD_IM[31:7];
        
    end
endmodule
