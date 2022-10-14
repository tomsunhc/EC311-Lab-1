`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 05:05:31 PM
// Design Name: 
// Module Name: 2Mult
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


module T_Mult(
    input [3:0]a_i,
    input [3:0]b_i,
    output [7:0] c_o
    );
    
    assign c_o=a_i*b_i;
endmodule
