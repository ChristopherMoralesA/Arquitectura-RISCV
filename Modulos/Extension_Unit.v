`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2021 12:52:15
// Design Name: 
// Module Name: EXT
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


module Extension_Unit(CEU, Dint, Dout
    );
        input [2:0] CEU;
        input [24:0] Dint;
        output reg [31:0] Dout;
        reg [31:0] temp; 
        always@(*)
        begin 
            case(CEU)
                3'b000:
                    begin
                        temp[10:0] = Dint[23:13];
                        temp[11] = Dint[24];
                        temp[12] = Dint[24];
                        temp[13] = Dint[24];
                        temp[14] = Dint[24];
                        temp[15] = Dint[24];
                        temp[16] = Dint[24];
                        temp[17] = Dint[24];
                        temp[18] = Dint[24];
                        temp[19] = Dint[24];
                        temp[20] = Dint[24];
                        temp[21] = Dint[24];
                        temp[22] = Dint[24];
                        temp[23] = Dint[24];
                        temp[24] = Dint[24];
                        temp[25] = Dint[24];
                        temp[26] = Dint[24];
                        temp[27] = Dint[24];
                        temp[28] = Dint[24];
                        temp[29] = Dint[24];
                        temp[30] = Dint[24];
                        temp[31] = Dint[24];
                        Dout = temp;
                    end
                3'b001:
                    begin
                        temp[4:0] = Dint[17:13];
                        temp[31:5] = Dint[24];
                        temp[11] = Dint[24];
                        temp[5] = Dint[24];
                        temp[6] = Dint[24];
                        temp[7] = Dint[24];
                        temp[8] = Dint[24];
                        temp[9] = Dint[24];
                        temp[10] = Dint[24];
                        temp[11] = Dint[24];
                        temp[12] = Dint[24];
                        temp[13] = Dint[24];
                        temp[14] = Dint[24];
                        temp[15] = Dint[24];
                        temp[16] = Dint[24];
                        temp[17] = Dint[24];
                        temp[18] = Dint[24];
                        temp[19] = Dint[24];
                        temp[20] = Dint[24];
                        temp[21] = Dint[24];
                        temp[22] = Dint[24];
                        temp[23] = Dint[24];
                        temp[24] = Dint[24];
                        temp[25] = Dint[24];
                        temp[26] = Dint[24];
                        temp[27] = Dint[24];
                        temp[28] = Dint[24];
                        temp[29] = Dint[24];
                        temp[30] = Dint[24];
                        temp[31] = Dint[24];
                        Dout = temp;
                    end
                3'b010:
                    begin
                        temp[4:0] = Dint[4:0];
                        temp[11:5] = Dint[24:18];
                        temp[12] = Dint[24];
                        temp[13] = Dint[24];
                        temp[14] = Dint[24];
                        temp[15] = Dint[24];
                        temp[16] = Dint[24];
                        temp[17] = Dint[24];
                        temp[18] = Dint[24];
                        temp[19] = Dint[24];
                        temp[20] = Dint[24];
                        temp[21] = Dint[24];
                        temp[22] = Dint[24];
                        temp[23] = Dint[24];
                        temp[24] = Dint[24];
                        temp[25] = Dint[24];
                        temp[26] = Dint[24];
                        temp[27] = Dint[24];
                        temp[28] = Dint[24];
                        temp[29] = Dint[24];
                        temp[30] = Dint[24];
                        temp[31] = Dint[24];
                        Dout = temp;
                    end
                3'b011:
                    begin
                        temp[11:0] = 12'b0;
                        temp[31:12] = Dint[24:5];
                        Dout = temp;
                    end
                3'b100:
                    begin
                        temp[0] = 1'b0;
                        temp[4:1] = Dint[4:1];
                        temp[10:5] = Dint[23:18];
                        temp[11] = Dint[0];
                        //temp[31:12] = Dint[24];
                        temp[12] = Dint[24];
                        temp[13] = Dint[24];
                        temp[14] = Dint[24];
                        temp[15] = Dint[24];
                        temp[16] = Dint[24];
                        temp[17] = Dint[24];
                        temp[18] = Dint[24];
                        temp[19] = Dint[24];
                        temp[20] = Dint[24];
                        temp[21] = Dint[24];
                        temp[22] = Dint[24];
                        temp[23] = Dint[24];
                        temp[24] = Dint[24];
                        temp[25] = Dint[24];
                        temp[26] = Dint[24];
                        temp[27] = Dint[24];
                        temp[28] = Dint[24];
                        temp[29] = Dint[24];
                        temp[30] = Dint[24];
                        temp[31] = Dint[24];
                        Dout = temp;
                    end
                3'b101:
                    begin
                        temp[0] = 1'b0;
                        temp[10:1] = Dint[23:14];
                        temp[11] = Dint[13];
                        temp[19:12] = Dint[12:5];
                        //temp[31:20] = Dint[24];
                        temp[20] = Dint[24];
                        temp[21] = Dint[24];
                        temp[22] = Dint[24];
                        temp[23] = Dint[24];
                        temp[24] = Dint[24];
                        temp[25] = Dint[24];
                        temp[26] = Dint[24];
                        temp[27] = Dint[24];
                        temp[28] = Dint[24];
                        temp[29] = Dint[24];
                        temp[30] = Dint[24];
                        temp[31] = Dint[24];
                        Dout = temp;                  
                    end
                3'b110:
                    begin
                        Dout = 32'b0;
                    end
                3'b111:
                    begin
                        Dout = 32'b0;
                    end
            endcase          
        end
endmodule
