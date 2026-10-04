`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2026 20:03:18
// Design Name: 
// Module Name: full_adder_stimulus
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


module full_adder_stimulus();
    reg A,B,Cin;
    wire SUM,CARRY;
    full_adder uut(A,B,Cin,SUM,CARRY);
    initial
    begin
    A=0; B=0; Cin=0;
#10 A=0; B=0; Cin=1;  
#10 A=0; B=1; Cin=0;
#10 A=0; B=1; Cin=1;
#10 A=1; B=0; Cin=0;
#10 A=1; B=0; Cin=1;
#10 A=1; B=1; Cin=0;
#10 A=1; B=1; Cin=1;
#10 $finish;
end
endmodule
