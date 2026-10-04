`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2026 19:31:24
// Design Name: 
// Module Name: DEMUX_1x2
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


module DEMUX_1x2(
    input A,
    input S0,
    output reg D0,
    output reg D1
    );
 always@(*)begin
     if(S0)begin
     D0 = 0;
     D1 = A;
     end
     else begin
     D0 = A;
     D1 = 0;
     end

 end
 endmodule