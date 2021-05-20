`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2021 10:12:17
// Design Name: 
// Module Name: Data_Memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module DataMemory(RW, Din, ADDr, EN, Dout, CLK
    );   
    input RW, EN, CLK;
    input [31:0] ADDr, Din;
    output reg [31:0] Dout;
    reg [31:0] memory_array[20:0];
    reg [31:0] d_out;    
        always @(posedge CLK)
        begin 
        if(EN == 1)
        begin    
            if(RW == 0)                         /*Operación de lectura */
            begin
                d_out[31:0] = memory_array[ADDr];
                Dout[31:0] = d_out[31:0];
            end  
            else                                /*Operación de escritura*/
            begin
                memory_array[ADDr] = Din[31:0];
                Dout[31:0] = Din[31:0];
            end
        end
        else
            Dout[31:0] = 32'b0;
        end   
endmodule
