`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 06/03/2021 09:09:40 AM
// Module Name: OR_32bit
// Project Name: Proyecto_RISCV
// Description: OR de 32 bits
// 
// Revision:
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////


module OR_32bit(
    input [31:0] IN,
    output OUT
    );
    
    assign OUT = IN[0] | IN[1] | IN[2] | IN[3] | IN[4] | IN[5] | IN[6] | IN[7] |
                 IN[8] | IN[9] | IN[10] | IN[11] | IN[12] | IN[13] | IN[14] | IN[15] |
                 IN[16] | IN[17] | IN[18] | IN[19] | IN[20] | IN[21] | IN[22] | IN[23] |
                 IN[24] | IN[25] | IN[26] | IN[27] | IN[28] | IN[29] | IN[30] | IN[31];
    
    
endmodule
