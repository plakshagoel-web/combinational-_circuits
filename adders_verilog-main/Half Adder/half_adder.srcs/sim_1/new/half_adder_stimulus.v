`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2026 23:30:32
// Design Name: 
// Module Name: half_adder_stimulus
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


module half_adder_stimulus(

    );
    reg A,B;
    wire SUM,CARRY;
     half_adder uut(A,B,SUM,CARRY);
     initial begin
     A=0; B=0;
 #10 A=0; B=1;
 #10 A=1; B=0;
 #10 A=1; B=1;
 #10 $finish;
 end
    
    
endmodule
