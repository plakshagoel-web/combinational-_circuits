`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 22:49:18
// Design Name: 
// Module Name: even_parity_generator
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


module even_parity_generator(
    input A,
    input B,
    input C,
    output P
    );
    wire [7:0] Y;
   
    decoder_3to8 D1(.A(A),.B(B),.C(C),.Y(Y));
    assign P = (Y[1] | Y[2] | Y[4] | Y[7]);

endmodule
