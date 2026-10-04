`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2026 23:09:16
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


module testbench( );


reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] SUM;
wire cout;

// Instantiate the design
fourbit_riplle_adder uut(
    A,
    B,
    Cin,
    SUM,
    cout
);

initial begin

$monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",
         $time, A, B, Cin, SUM, cout);

A = 4'b0000; B = 4'b0000; Cin = 0;
#10;

A = 4'b0011; B = 4'b0010; Cin = 0;
#10;

A = 4'b0101; B = 4'b0011; Cin = 0;
#10;

A = 4'b1111; B = 4'b0001; Cin = 0;
#10;

A = 4'b1010; B = 4'b0101; Cin = 1;
#10;

$finish;

end

endmodule