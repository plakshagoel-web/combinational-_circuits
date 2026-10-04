`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 20:16:12
// Design Name: 
// Module Name: testbench_comparator_4bit
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


module testbench_comparator_4bit();
reg [3:0] A;
reg [3:0] B;
wire Y_equal;
wire Y_Agreater;
wire Y_Asmaller;

comparator_4bit uut(
    .A3(A[3]),
    .B3(B[3]),
    .A2(A[2]),
    .B2(B[2]),
    .A1(A[1]),
    .B1(B[1]),
    .A0(A[0]),
    .B0(B[0]),
    .Y_equal(Y_equal),
    .Y_Agreater(Y_Agreater),
    .Y_Asmaller(Y_Asmaller)
);

initial begin
 A=4'b0000;
 B=4'b0000;
#10 A=4'b1000;
   B=4'b0000;
#10 A=4'b0000;
   B=4'b1000;
#10 A=4'b0100;
    B=4'b0000;
#10 A=4'b1000;
    B=4'b1100;
#10 A=4'b1110;
   B=4'b1100;
#10 A=4'b1100;
   B=4'b1110;
#10 A=4'b0001;
   B=4'b0000;
#10 A=4'b1110;
   B=4'b1111;
#10 $finish;
end
endmodule
