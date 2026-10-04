`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 20:35:08
// Design Name: 
// Module Name: testbench_2x1_multiplexer
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


module testbench_2x1_multiplexer();
reg I0,I1,S;
wire Y;
multiplexer_2x1 uut(I0,I1,S,Y);
initial
begin
 S=0;
 I0=0 ; I1=0;
#10 I0=0 ; I1=1;
#10 I0=1 ; I1=0;
#10 I0=1 ; I1=1;
#10 S=1;
I0=0 ; I1=0;
#10 I0=0 ; I1=1;
#10 I0=1 ; I1=0;
#10 I0=1 ; I1=1;
#10 $finish;
end
endmodule
