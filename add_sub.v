`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 06:37:40 PM
// Design Name: 
// Module Name: add_sub
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


module add_sub(
    input m,
    input [3:0]a_i,
    input [3:0]b_i,
    output [3:0]s,
    output c,
    output v
    );
        
        wire [3:0]d; 
        wire [3:0]carry_0;
   
    xor G1(d[0],m,b_i[0]);
    xor G2(d[1],m,b_i[1]);
    xor G3(d[2],m,b_i[2]);
    xor G4(d[3],m,b_i[3]);
    
    Add_4 bg (.c_i(m),.a_i(a_i),.b_i(d),.sum_0(s),.carry_0(carry_0));
    xor G5(v,carry_0[3],carry_0[2]);
    assign c=carry_0[3];
endmodule
