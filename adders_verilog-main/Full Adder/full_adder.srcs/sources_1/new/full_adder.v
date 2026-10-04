`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2026 19:48:43
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,B,Cin,
    output SUM,CARRY
 );
 wire s1,c1,c2;
 half_adder HA1(A,B,s1,c1);
 half_adder HA2(s1,Cin,SUM,c2);
 assign CARRY = c1 | c2;
 
endmodule
