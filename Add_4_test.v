`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 05:37:26 PM
// Design Name: 
// Module Name: Add_4_test
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


module Add_4_test;

    reg [3:0]a_i;
    reg [3:0]b_i;
    reg c_i;


    wire [3:0]sum_0;
    wire [3:0] carry_0;

  
    Add_4 uup(.a_i(a_i),.b_i(b_i),.c_i(c_i),.sum_0(sum_0),.carry_0(carry_0));
    initial
    begin
        a_i = 4'b0000; b_i = 4'b0000; c_i = 0;
    end
    always begin
    #10 {a_i,b_i} = {a_i,b_i}+4'b0001;
    end
//        #10 a_i = 4'b0010; b_i = 4'b0010; c_i = 0;
//        #10 a_i = 4'b0101; b_i = 4'b0110; c_i = 0;
//        #10 a_i = 4'b1000; b_i = 4'b1000; c_i = 1;
//        #10 a_i = 4'b1010; b_i = 4'b1010; c_i = 1;


endmodule



