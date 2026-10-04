`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2026 23:32:28
// Design Name: 
// Module Name: comparator_2bit
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


module comparator_2bit(
    input A1,
    input A0,
    input B1,
    input B0,
    output Y_equal,
    output Y_lessA,
    output Y_greaterA
    );
    wire msb_equal,lsb_equal,msb_greater,lsb_greater,msb_smaller,lsb_smaller,B0_not,B1_not,A0_not,A1_not,lsb_small_msb_equal,lsb_greater_msb_equal;
    //A=B
    xnor(lsb_equal,A0,B0);
    xnor(msb_equal,A1,B1);
    and(Y_equal,msb_equal,lsb_equal);
    //A<B
    //xnor(w3,A1,B1);
    not(A0_not,A0);
    not(A1_not,A1);
    
    and(msb_smaller,A1_not,B1);
    and(lsb_smaller,A0_not,B0);
    and(lsb_small_msb_equal,msb_equal,lsb_smaller);
    or(Y_lessA,lsb_small_msb_equal,msb_smaller);
    //A>B
    not(B0_not,B0);
    not(B1_not,B1);
    and(msb_greater,A1,B1_not);
    and(lsb_greater,A0,B0_not);
    or(Y_greaterA,msb_greater,lsb_greater_msb_equal);
    and(lsb_greater_msb_equal,msb_equal,lsb_greater);
    
    
endmodule
