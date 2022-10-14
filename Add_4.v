`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 04:54:13 PM
// Design Name: 
// Module Name: Add_4
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


module Add_4(
    input [3:0] a_i,
    input [3:0] b_i,
    input c_i,
    
    output [3:0]sum_0,
    output [3:0] carry_0
    );
    
    
     
    Add_F_ hieadd4 (. a_i(a_i[0]),. b_i (b_i[0]),.c_i(c_i),. sum_0 (sum_0[0]),. carry_0(carry_0[0]));
    Add_F_ hieadd5 (. a_i(a_i[1]),. b_i (b_i[1]),.c_i(carry_0[0]),.sum_0 (sum_0[1]),. carry_0 (carry_0[1]));
    Add_F_ hieadd6 (. a_i(a_i[2]),. b_i (b_i[2]),.c_i(carry_0[1]),.sum_0 (sum_0[2]),. carry_0 (carry_0[2]));
    Add_F_ hieadd7 (. a_i(a_i[3]),. b_i (b_i[3]),.c_i(carry_0[2]),.sum_0 (sum_0[3]),. carry_0 (carry_0[3]));

 
    
    
endmodule
