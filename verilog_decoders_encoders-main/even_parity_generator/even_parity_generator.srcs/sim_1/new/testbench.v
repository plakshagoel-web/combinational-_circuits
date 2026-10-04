`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 22:55:54
// Design Name: 
// Module Name: testbench
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


module testbench();
reg A,B,C;
wire P;
even_parity_generator uut(.A(A),.B(B),.C(C),.P(P));
initial begin
    A = 0 ; B = 0 ; C = 0;
#10 A = 0 ; B = 0 ; C = 1;
#10 A = 0 ; B = 1 ; C = 0;
#10 A = 0 ; B = 1 ; C = 1;
#10 A = 1 ; B = 0 ; C = 0;
#10 A = 1 ; B = 0 ; C = 1;
#10 A = 1 ; B = 1 ; C = 0;
#10 A = 1 ; B = 1 ; C = 1;
#10 $finish;

end
endmodule
