`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 06/03/2021 09:09:40 AM
// Module Name: NAND
// Project Name: Proyecto_RISCV
// Description: NAND
// 
// Revision:
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////


module NAND(
    input IN1,
    input IN2,
    output OUT
    );
    
    assign OUT = ~(IN1 & IN2);
    
endmodule
