`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2026 23:10:36
// Design Name: 
// Module Name: testbench_1x4_demux
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


module testbench_1x4_demux();
reg A,S0,S1;
wire D0,D1,D2,D3;
DEMUX_1x4 uut(A,S1,S0,D0,D1,D2,D3);
initial begin
 A = 1 ; S0 = 0 ; S1 = 0;
  #10 S0 =1 ; S1 = 0;
  #10 S0 = 0; S1 = 1;
  #10 S0 = 1; S1 = 1;
  #10 $finish;
  end
  
endmodule
