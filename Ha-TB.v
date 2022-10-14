`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2022 05:16:07 PM
// Design Name: 
// Module Name: Ha-TB
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


module Ha_TB;


    reg a_i;
    reg b_i;
    wire sum_0,carry_0;
    
    Add_H test(.a_i(a_i),.a_i(a_i),.sum_0(sum_0),.carry_0(carry_0));

initial 
begin
a_i = 0 ; b_i = 0 ; 
#10 a_i = 0 ; a_i = 1 ;
#10 a_i = 1 ; b_i = 0; 
#10 a_i = 1 ; b_i = 1 ; 
end


endmodule