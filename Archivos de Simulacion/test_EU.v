`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2021 21:52:55
// Design Name: 
// Module Name: Prueba_EXT
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


module test_EU(

    );
    reg [2:0] CEU;
    reg [24:0] Dint;
    wire [31:0] Dout;
    Extension_Unit uut(
        .CEU(CEU),
        .Dint(Dint),
        .Dout(Dout)
        ); 
    initial begin
        Dint = 25'b1010101010101010101010101;  
        CEU = 0;
    end
    always
        #5 CEU = CEU +1;
        
    initial
        #40 $finish;
endmodule
