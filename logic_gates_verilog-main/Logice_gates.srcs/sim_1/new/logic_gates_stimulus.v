`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2026 20:02:50
// Design Name: 
// Module Name: logic_gates_stimulus
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


module logic_gates_stimulus(

    );
     reg A,B;
    wire AND_OUT,OR_OUT,XOR_OUT,NAND_OUT,NOR_OUT,XNOR_OUT,NOT_A;
    logic_gates uut(A,B,AND_OUT,OR_OUT,XOR_OUT,NAND_OUT,NOR_OUT,XNOR_OUT,NOT_A);
     initial begin
      A=0; B=0;
  #10 A=0; B=1;
  #10 A=1; B=0;
  #10 A=1; B=1;
  #10 $finish;
  end

  
endmodule
