`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 20:09:36
// Design Name: 
// Module Name: multiplexer_2x1
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


module multiplexer_2x1(
    input I0,
    input I1,
    input S,
    output reg Y
  
    
    );
    
   always@(*)
   begin
       if(S)
           Y=I1; 
       else
           Y=I0;
   end
endmodule
