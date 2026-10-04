`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 22:03:52
// Design Name: 
// Module Name: testbench_4x1_MUX
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


module testbench_4x1_MUX();
reg I0,I1,I2,I3,S0,S1;
wire Y;
MUX_4X1 uut(I0,I1,I2,I3,S0,S1,Y);
initial 
begin
   I0=0 ; I1=1 ; I2=0 ; I3=1;
   S1=0 ; S0=0;
   #10;
  S1=0 ; S0=1;
   #10;
   S1=1 ; S0=0;
   #10;
   S1=1 ; S0=1;
   #10;
 
 $finish;
 end
 
 
endmodule
