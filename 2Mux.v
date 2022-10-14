`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 05:13:51 PM
// Design Name: 
// Module Name: 2Mux
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


module T_Mux(
   input [7:0] e_i,
    input [7:0]f_i,
    input [7:0]g_i,
    input [7:0]h_i,
    input [1:0]i_i,
    output [7:0]c_o
    );
    reg [7:0]c_o;
    always @(*)begin 
        case(i_i)
            2'b00:c_o=e_i;
            2'b01:c_o=f_i;
            2'b10:c_o=g_i;
            2'b11:c_o=h_i;
           endcase
        end
 endmodule
   
  
    
    

