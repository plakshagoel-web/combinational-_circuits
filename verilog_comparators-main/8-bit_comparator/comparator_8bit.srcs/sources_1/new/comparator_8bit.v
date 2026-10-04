`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:23:36
// Design Name: 
// Module Name: comparator_8bit
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


module comparator_8bit#(parameter N=8)(

    input[N-1:0] A,
    input[N-1:0] B,
    output reg Y_equal,
    output reg Y_Agreater,
    output reg Y_Asmaller
   
    );
    always @(*) begin
    if(A==B) begin
     Y_equal = 1;
     Y_Agreater = 0;
     Y_Asmaller = 0;
     end
     else if(A>B) begin
     Y_equal = 0;
     Y_Agreater = 1;
     Y_Asmaller = 0;
     end
     else begin
     Y_equal = 0;
     Y_Agreater = 0;
     Y_Asmaller = 1;
     end
     end
     
     
    
endmodule
