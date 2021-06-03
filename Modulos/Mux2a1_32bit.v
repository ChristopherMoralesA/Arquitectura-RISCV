`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 06/03/2021 09:09:40 AM
// Module Name: Mux2a1_32bit
// Project Name: Proyecto_RISCV
// Description: Multiplexor 2 a 1 de 32 bits
// 
// Revision:
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////


module Mux2a1_32bit(
    input [31:0] IN0,
    input [31:0] IN1,
    input SEL,
    output reg [31:0] OUT
    );
    
    always @(SEL,IN0,IN1)
        case (SEL)
            1'b0: OUT <= IN0;
            1'b1: OUT <= IN1;
        endcase    
    
endmodule
