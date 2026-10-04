`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 21:16:56
// Design Name: 
// Module Name: testbench_3to8_decoder
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


module testbench_3to8_decoder();
reg A,B,C;
wire [7:0] Y;
decoder_3to8 uut(.A(A),.B(B),.C(C),.Y(Y));
initial begin 
   A = 0; B = 0; C = 0;
#10 A = 0; B = 0; C = 1;
#10 A = 0; B = 1; C = 0;
#10 A = 0; B = 1; C = 1;
#10 A = 1; B = 0; C = 0;
#10 A = 1; B = 0; C = 1;
#10 A = 1; B = 1; C = 0;
#10 A = 1; B = 1; C = 1;
#10 $finish;
end

endmodule
