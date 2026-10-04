`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2026 19:42:31
// Design Name: 
// Module Name: DEMUX_1x4
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


module DEMUX_1x4(
   
  
   input A,
   input S1,
   input S0,
   output D0,
   output D1,
   output D2,
   output D3
 );
 wire W0,W1;
    DEMUX_1x2 d1(A,S1,W0,W1);
    DEMUX_1x2 d2(W0,S0,D0,D1);
    DEMUX_1x2 d3(W1,S0,D2,D3);
    
endmodule
