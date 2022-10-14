`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2022 04:19:49 PM
// Design Name: 
// Module Name: Add_F_
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


module Add_F_(
    input a_i,
    input b_i,
    input c_i,
    output sum_0,
    output carry_0
    );
   
    wire sum_0,carry_0,c1,c2,c3,c4;
    Add_H hieadd (. a_i(a_i),. b_i (b_i),. sum_0 (c1),. carry_0 (c3));
    Add_H hieadd1 (. a_i(c_i),. b_i (c1),.sum_0 (c2),. carry_0 (c4));
    assign sum_0=c2;
    assign carry_0=c3|c4;
    
endmodule
    

