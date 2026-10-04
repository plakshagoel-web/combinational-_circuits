`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 19:56:08
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit(
    input A3,
    input B3,
    input A2,
    input B2,
    input A1,
    input B1,
    input A0,
    input B0,
    output Y_equal,
    output Y_Agreater,
    output Y_Asmaller
    );
    assign Y_equal = ((A3~^B3)&(A2~^B2)&(A1~^B1)&(A0~^B0));
    assign Y_Agreater = (A3&~B3)|((A3~^B3)&(A2&~B2))|((A3~^B3)&(A2~^B2)&(A1&~B1))|((A3~^B3)&(A2~^B2)&(A1~^B1)&(A0&~B0));
    assign Y_Asmaller = (~A3&B3)|((A3~^B3)&(~A2&B2))|((A3~^B3)&(A2~^B2)&(~A1&B1))|((A3~^B3)&(A2~^B2)&(A1~^B1)&(~A0&B0));
endmodule
