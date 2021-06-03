`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 06/03/2021 09:09:40 AM
// Module Name: Mux4a1_32bit
// Project Name: Proyecto_RISCV
// Description: Multiplexor 4 a 1 de 32 bits
// 
// Revision:
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////


module Mux4a1_32bit(
    input [31:0] IN0,
    input [31:0] IN1,
    input [31:0] IN2,
    input [31:0] IN3,
    input [1:0]  SEL,
    output reg [31:0] OUT
    );
    
    always @(SEL,IN0,IN1,IN2,IN3)
        case (SEL)
            2'b00: OUT <= IN0;
            2'b01: OUT <= IN1;
            2'b10: OUT <= IN2;
            2'b11: OUT <= IN3;
        endcase
    
endmodule
