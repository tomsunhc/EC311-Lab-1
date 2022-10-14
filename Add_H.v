`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2022 04:10:07 PM
// Design Name: 
// Module Name: Add_H
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


module Add_H(
    input a_i,
    input b_i,
    output sum_0,
    output carry_0
    );
    
    xor G1(sum_0,a_i,b_i);
    and G2 (carry_0,a_i,b_i);
endmodule


