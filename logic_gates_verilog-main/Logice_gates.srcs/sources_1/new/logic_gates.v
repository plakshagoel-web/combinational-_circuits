`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2026 19:51:02
// Design Name: 
// Module Name: logic_gates
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


module logic_gates(
    input A,
    input B,
    output AND_OUT,
    output OR_OUT,
    output XOR_OUT,
    output NAND_OUT,
    output NOR_OUT,
    output XNOR_OUT,
    output NOT_A
    );
    assign AND_OUT = A&B;
    assign OR_OUT = A|B;
    assign XOR_OUT = A^B;
    assign NAND_OUT = ~(A&B);
    assign NOR_OUT = ~(A|B);
    assign XNOR_OUT = ~(A^B);
    assign NOT_A = ~A;
endmodule
