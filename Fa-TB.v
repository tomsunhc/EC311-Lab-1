`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2022 05:20:25 PM
// Design Name: 
// Module Name: Fa-TB
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
/////////////////////////////////////////////////////////////////////////////
module Fa_TB;

    
    reg a_i;
    reg b_i;
    reg c_i;


    wire sum_0;
    wire carry_0;

    
    Add_F_ tst (
        .a_i(a_i), 
        .b_i(b_i), 
        .c_i(c_i), 
        .sum_0(sum_0), 
        .carry_0(carry_0)
    );
initial begin

       a_i = 0;  b_i = 0;  c_i = 0;  #100;
        a_i = 0;  b_i = 0;  c_i = 1;  #100;
        a_i = 0;  b_i = 1;  c_i = 0;  #100;
        a_i = 0;  b_i = 1;  c_i = 1;  #100;
        a_i = 1;  b_i = 0;  c_i = 0;  #100;
        a_i = 1;  b_i = 0;  c_i = 1;  #100;
       a_i = 1;  b_i = 1;  c_i = 0;  #100;
        a_i = 1;  b_i = 1;  c_i = 1;  #100;
    end
      
endmodule
