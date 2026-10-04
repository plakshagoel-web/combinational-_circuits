`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 15:27:40
// Design Name: 
// Module Name: testbench_2bit_comparator
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


module testbench_2bit_comparator();
reg A1,A0,B1,B0;
wire Y_equal,Y_lessA,Y_greaterA;
comparator_2bit uut(A1,A0,B1,B0,Y_equal,Y_lessA,Y_greaterA);
initial begin
    A1 = 0 ; A0 = 0 ; B1 = 0 ; B0 = 0;
#10  A1 = 0 ; A0 = 0 ; B1 = 0 ; B0 = 1;
#10  A1 = 0 ; A0 = 0 ; B1 = 1 ; B0 = 0;
#10 A1 = 0 ; A0 = 0 ; B1 = 1 ; B0 = 1;
#10  A1 = 0 ; A0 = 1 ; B1 = 0 ; B0 = 0;
#10  A1 = 0 ; A0 = 1 ; B1 = 0 ; B0 = 1;
#10  A1 = 0 ; A0 = 1 ; B1 = 1 ; B0 = 0;
#10  A1 = 0 ; A0 = 1 ; B1 = 1 ; B0 = 1;
#10  A1 = 1 ; A0 = 0 ; B1 = 0 ; B0 = 0;
#10  A1 = 1 ; A0 = 0 ; B1 = 0 ; B0 = 1;
#10  A1 = 1 ; A0 = 0 ; B1 = 1 ; B0 = 0;
#10  A1 = 1 ; A0 = 0 ; B1 = 1 ; B0 = 1;
#10  A1 = 1 ; A0 = 1 ; B1 = 0 ; B0 = 0;
#10  A1 = 1 ; A0 = 1 ; B1 = 0 ; B0 = 1;
#10  A1 = 1 ; A0 = 1 ; B1 = 1 ; B0 = 0;
#10  A1 = 1 ; A0 = 1 ; B1 = 1 ; B0 = 1;
#10 $finish;
end
endmodule
