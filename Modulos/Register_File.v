`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tecnológico de Costa Rica
// Engineer: Christopher Morales Acosta
// 
// Create Date: 05/10/2021 05:44:57 PM
// Module Name: Register_File
// Project Name: Proyecto_RISCV
// Description: Este módulo recibe el número de registro y envía el contenido de
//              este registro, también puede sobreescribir el contenido de un 
//              registro.
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module Register_File(
    input  CLK,
    input  RES,
    input  [4:0] RA_RF,
    input  [4:0] RB_RF,
    input  [4:0] RW_RF,
    input  [31:0] DW_RF,
    output reg [31:0] A_RF,
    output reg [31:0] B_RF,
    input WE_RF
    );
    reg [31:0] RF[0:31];
    
    initial begin
    RF[0] = 32'h00000000;
    RF[1] = 32'h00000000;
    RF[2] = 32'h00000000;
    RF[3] = 32'h00000000;
    RF[4] = 32'h00000000;
    RF[5] = 32'h00000000;
    RF[6] = 32'h00000000;
    RF[7] = 32'h00000000;
    RF[8] = 32'h00000000;
    RF[9] = 32'h00000000;
    RF[10] = 32'h00000000;
    RF[11] = 32'h00000000;
    RF[12] = 32'h00000000;
    RF[13] = 32'h00000000;
    RF[14] = 32'h00000000;
    RF[15] = 32'h00000000;
    RF[16] = 32'h00000000;
    RF[17] = 32'h00000000;
    RF[18] = 32'h00000000;
    RF[19] = 32'h00000000;
    RF[20] = 32'h00000000;
    RF[21] = 32'h00000000;
    RF[22] = 32'h00000000;
    RF[23] = 32'h00000000;
    RF[24] = 32'h00000000;
    RF[25] = 32'h00000000;
    RF[26] = 32'h00000000;
    RF[27] = 32'h00000000;
    RF[28] = 32'h00000000;
    RF[29] = 32'h00000000;
    RF[30] = 32'h00000000;
    RF[31] = 32'h00000000;
    end
    
    always@(posedge CLK, posedge RES)
    begin
        if (RES == 1)
            begin
                RF[0] = 0;
                RF[1] = 0;
                RF[2] = 0;
                RF[3] = 0;
                RF[4] = 0;
                RF[5] = 0;
                RF[6] = 0;
                RF[7] = 0;
                RF[8] = 0;
                RF[9] = 0;
                RF[10] = 0;
                RF[11] = 0;
                RF[12] = 0;
                RF[13] = 0;
                RF[14] = 0;
                RF[15] = 0;
                RF[16] = 0;
                RF[17] = 0;
                RF[18] = 0;
                RF[19] = 0;
                RF[20] = 0;
                RF[21] = 0;
                RF[22] = 0;
                RF[23] = 0;
                RF[24] = 0;
                RF[25] = 0;
                RF[26] = 0;
                RF[27] = 0;
                RF[28] = 0;
                RF[29] = 0;
                RF[30] = 0;
                RF[31] = 0;
            end
        else
            begin
                if (WE_RF == 1)
                    RF[RW_RF] = DW_RF;
            end
    end
    
    always@(*)
        begin
            A_RF = RF[RA_RF];
            B_RF = RF[RB_RF];            
        end
    
endmodule
