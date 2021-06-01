`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2021 14:02:59
// Design Name: 
// Module Name: UnidaddeControl
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


module Control_Unit(input [6:0]OP_CODE, [2:0]FUNCT_3, [6:0]FUNCT_7, RST, output reg CRF, reg [2:0]CEU, reg [2:0]CALU, reg CDM, reg [1:0]PCS, reg [1:0]DWS, reg ALUS1, reg ALUS2, reg OS, reg BS
);
always@(*)
    begin
        //RESET
        if (RST)
            begin
                CRF = 0;
                CEU = 0;
                CALU = 0;
                CDM = 0;
                PCS = 0;
                DWS = 0;
                ALUS1 = 0;
                ALUS2 = 0;
                OS = 0;
                BS = 0;
            end
        else    
            begin
                //TIPO I SIN JALR
                if(OP_CODE == 7'b0010011)
                    begin
                        //LW
                        if (FUNCT_3 == 3'b010)
                            begin
                                CRF = 1'b1;
                                CEU = 3'b001;
                                CALU = 3'b000;
                                CDM = 1'b0;
                                PCS = 2'b10;
                                DWS = 2'b01;
                                ALUS1 = 1'b1;
                                ALUS2 = 1'b1;
                                OS = 1'b1;
                            end
                        else //ADDI, ANDI, XORI, SLLI, SRAI
                            begin
                                CRF = 1'b1;
                                CEU = 3'b000;
                                CDM = 1'b0;
                                PCS = 2'b10;
                                DWS = 2'b01;
                                ALUS1 = 1'b1;
                                ALUS2 = 1'b1;
                                OS = 1'b0;
                                case(FUNCT_3)
                                    //ADDI
                                    3'b000 : CALU = 3'b000;
                                    //ANDI
                                    3'b111 : CALU = 3'b001;
                                    //XORI
                                    3'b110 : CALU = 3'b010;
                                    //SLLI
                                    3'b001 : CALU = 3'b011;
                                    //SRAI
                                    3'b101 : CALU = 3'b100;
                                endcase
                            end
                    end                
                //TIPO I JALR
                if(OP_CODE == 7'b1100111)
                    begin
                        CRF = 1'b1;
                        CEU = 3'b000;
                        CALU = 3'b110;
                        CDM = 1'b0;
                        PCS = 2'b01;
                        DWS = 2'b10;
                        ALUS1 = 1'b1;
                        ALUS2 = 1'b1;
                        OS = 1'b0;
                    end
                //TIPO S SW
                if(OP_CODE == 7'b0100011)
                    begin
                        CRF = 1'b0;
                        CEU = 3'b010;
                        CALU = 3'b000;
                        CDM = 1'b1;
                        PCS = 2'b10;
                        ALUS1 = 1'b1;
                        ALUS2 = 1'b1;
                    end
                //TIPO R
                if(OP_CODE == 7'b0110011)
                    begin
                        CRF = 1'b1;
                        CDM = 1'b0;
                        PCS = 2'b10;
                        DWS = 2'b01;
                        ALUS1 = 1'b1;
                        ALUS2 = 1'b0;
                        OS = 1'b0; 
                        //SUB
                        if(FUNCT_7 == 7'b0100000)
                            CALU = 3'b101;         
                        else //ADD, SLL
                            begin
                                //ADD
                                if(FUNCT_3 == 3'b000)
                                    CALU = 3'b000;
                                //SLL
                                else
                                    CALU = 3'b011;
                            end
                    end
                //TIPO U LUI
                if(OP_CODE == 7'b0110111)
                    begin
                        CRF = 1'b1;
                        CEU = 3'b011;
                        CDM = 1'b0;
                        PCS = 2'b10;
                        DWS = 2'b00;
                    end
                //TIPO B
                if(OP_CODE == 7'b1100011)
                    begin
                        CRF = 1'b0;
                        CEU = 3'b100;
                        CALU = 3'b101;
                        CDM = 1'b0;
                        PCS = 2'b00;
                        ALUS1 = 1'b1;
                        ALUS2 = 1'b0;
                        //BNE
                        if(FUNCT_3 == 3'b001)
                            BS = 1'b1;
                        //BGE
                        else
                            BS = 1'b0;
                    end
                //TIPO J JAL
                if(OP_CODE == 7'b1101111)
                    begin
                        CRF = 1'b1;
                        CEU = 3'b101;
                        CALU = 3'b000;
                        CDM = 1'b0;
                        PCS = 2'b01;
                        DWS = 2'b10;
                        ALUS1 = 1'b0;
                        ALUS2 = 1'b1;
                        OS = 1'b0;
                    end                                 
            end
    end
endmodule
