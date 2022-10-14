`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 07:50:10 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB(

    );
    reg [3:0]a_i;
    reg [3:0]b_i;
    reg [1:0]i_i;
    wire [7:0]c_o;
    
    ALU tst (a_i,b_i,i_i,c_o);
    initial begin
    a_i=4'b1111;b_i=4'b0000;i_i=2'b01;
    #10  a_i=4'b1011;b_i=4'b0001;i_i=2'b11;
    #10  a_i=4'b1101;b_i=4'b0100;i_i=2'b00;
    #10  a_i=4'b1100;b_i=4'b0010;i_i=2'b01;
    #10  a_i=4'b1111;b_i=4'b0001;i_i=2'b10;
    end
endmodule
