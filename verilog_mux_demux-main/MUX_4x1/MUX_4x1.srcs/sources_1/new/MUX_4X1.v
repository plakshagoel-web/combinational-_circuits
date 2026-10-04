`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 21:54:43
// Design Name: 
// Module Name: MUX_4X1
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


module MUX_4X1(
input I0,
input I1,
input I2,
input I3,
input S0,
input S1,
output Y
   );
   wire y1,y2;
 Mux_2x1 MUX0(I0,I1,S0,y1);
 Mux_2x1 MUX1(I2,I3,S0,y2);
 Mux_2x1 MUX2(y1,y2,S1,Y);
 
endmodule
