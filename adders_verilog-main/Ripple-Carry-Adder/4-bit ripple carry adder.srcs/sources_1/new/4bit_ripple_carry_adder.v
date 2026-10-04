`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2026 22:10:45
// Design Name: 
// Module Name: 4bit_ripple_carry_adder
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


module 4bit_ripple_carry_adder(
   input [3:0] A, 
   input [3:0] B,
   input cin,
   output [3:0] sum,
   output cout
    );
    wire c0,c1,c2;
    full_adder FA1(A[0],B[0],cin,sum[0],c0);
    full_adder FA2(A[1],B[1],c0,sum[1],c1);
    full_adder FA3(A[2],B[2],c1,sum[2],c2);
    full_adder FA4(A[3],B[3],c2,sum[3],cout);
    
endmodule
