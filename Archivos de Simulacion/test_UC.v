`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2021 20:48:20
// Design Name: 
// Module Name: UC_Test
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


module test_UC(

    );
    reg CLK;
    reg RST;
    reg [6:0] OP_CODE;
    reg [2:0] FUNCT_3;
    reg [6:0] FUNCT_7;
    wire CRF;
    wire [2:0] CEU;
    wire [2:0] CALU;
    wire CDM;
    wire [1:0] PCS;
    wire [1:0] DWS;
    wire ALUS1;
    wire ALUS2;
    wire OS;
    wire BS;
    
    reg [4:0]CRTP;
    
Control_Unit uut (
        .RST(RST),
        .OP_CODE(OP_CODE),
        .FUNCT_3(FUNCT_3),
        .FUNCT_7(FUNCT_7),
        .CRF(CRF),
        .CEU(CEU),
        .CALU(CALU),
        .CDM(CDM),
        .PCS(PCS),
        .DWS(DWS),
        .ALUS1(ALUS1),
        .ALUS2(ALUS2),
        .OS(OS),
        .BS(BS)
);
initial begin
    CLK = 1'b0;
    RST = 1'b0;
    OP_CODE = 7'b0000000;
    FUNCT_3 = 3'b000;
    FUNCT_7 = 7'b0000000;
    CRTP = 0;
end

always
    #5 CLK = ~CLK;

always@(posedge CLK)
    begin
        CRTP = CRTP + 1;        
        if (CRTP < 16)
            begin
            //CASE PARA CADA FUNCION
                case(CRTP)
                //ADDI
                1: 
                begin
                    OP_CODE = 7'b0010011;
                    FUNCT_3 = 3'b000;
                end
                //ANDI
                2: 
                begin
                    OP_CODE = 7'b0010011;
                    FUNCT_3 = 3'b111;
                end 
                //XORI
                3: 
                begin
                    OP_CODE = 7'b0010011;
                    FUNCT_3 = 3'b110;
                end   
                //SLLI
                4: 
                begin
                    OP_CODE = 7'b0010011;
                    FUNCT_3 = 3'b001;
                end
                //SRAI
                5: 
                begin
                    OP_CODE = 7'b0010011;
                    FUNCT_3 = 3'b101;
                end  
                //LW
                6: 
                begin
                    OP_CODE = 7'b0010011;
                    FUNCT_3 = 3'b010;
                end
                //JALR
                7: 
                begin
                    OP_CODE = 7'b1100111;
                    FUNCT_3 = 3'b000;
                end
                //SW
                8: 
                begin
                    OP_CODE = 7'b0100011;
                end 
                //ADD
                9: 
                begin
                    OP_CODE = 7'b0110011;
                    FUNCT_3 = 3'b000;
                    FUNCT_7 = 7'b0000000;
                end
                //SUB
                10: 
                begin
                    OP_CODE = 7'b0110011;
                    FUNCT_3 = 3'b000;
                    FUNCT_7 = 7'b0100000;
                end                      
                //SLL
                11: 
                begin
                    OP_CODE = 7'b0110011;
                    FUNCT_3 = 3'b001;
                    FUNCT_7 = 7'b0000000;
                end
                //LUI
                12: 
                begin
                    OP_CODE = 7'b0110111;
                end
                //BNE
                13: 
                begin
                    OP_CODE = 7'b1100011;
                    FUNCT_3 = 3'b001;
                end
                //BGE
                14: 
                begin
                    OP_CODE = 7'b1100011;
                    FUNCT_3 = 3'b101;
                end
                //JAL
                15: 
                begin
                    OP_CODE = 7'b1101111;
                end            
                endcase
            end
        else
            RST = 1;                               
    end
initial
#175 $finish;
endmodule
