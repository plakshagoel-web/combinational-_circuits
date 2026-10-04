`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2026 18:23:32
// Design Name: 
// Module Name: testbench_1x2_demux
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


module testbench_1x2_demux();
reg A,S0;
wire D0,D1;
Demux_1x2 uut(A,S0,D0,D1);
initial begin
A = 1 ; S0 = 0;
#10 S0 = 1;
#10 $finish;
 
end
endmodule
