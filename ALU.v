`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 05:26:31 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [3:0]a_i,
    input [3:0]b_i,
    input [1:0]i_i,
    output [7:0]c_o
    );
    wire [7:0]e_i;
    wire [7:0]f_i;
    wire [7:0]g_i;
    wire [7:0]h_i;
    
    T_Conc hd (.a_i(a_i),.b_i(b_i),.c_o(e_i));
    T_adder hd1 (.a_i(a_i),.b_i(b_i),.c_o(f_i));
    T_Shft hd2 (.a_i(a_i),.b_i(b_i),.c_o(g_i));
    T_Mult hd3 (.a_i(a_i),.b_i(b_i),.c_o(h_i));
    T_Mux hd4 (.e_i(e_i),.f_i(f_i),.g_i(g_i),.h_i(h_i),.i_i(i_i),.c_o(c_o));
endmodule
