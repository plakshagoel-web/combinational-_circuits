`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:40:22
// Design Name: 
// Module Name: testbench_comparator_8bit
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


module testbench_comparator_8bit();
reg[7:0] A;
reg[7:0] B;
wire Y_equal;
wire Y_Agreater;
wire Y_Asmaller;
comparator_8bit uut(.A(A),.B(B),.Y_equal(Y_equal),.Y_Agreater(Y_Agreater),.Y_Asmaller(Y_Asmaller));
initial begin
    A=8'b00000000;
    B=8'b00000000;
    #10;

    A = 8'b10000000;
    B = 8'b00000000;
    #10;

    A = 8'b00000000;
    B = 8'b10000000;
    #10;

    A = 8'b11001100;
    B = 8'b11000000;
    #10;

    A = 8'b10100000;
    B = 8'b10110000;
    #10;

    A = 8'b11111111;
    B = 8'b11111111;
    #10;
    
    $finish;
    end


endmodule
