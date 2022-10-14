`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 07:33:31 PM
// Design Name: 
// Module Name: add_sub_tst
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

module add_sub_tst();

    reg m;
    reg [3:0]a_i;
    reg [3:0]b_i;
    wire [3:0]s;
    wire c;
    wire v;

  
    add_sub uup(.m(m),.a_i(a_i),.b_i(b_i),.s(s),.c(c),.v(v));
    initial
    begin
        a_i = 4'b0000; b_i = 4'b0000; m = 0;
    end
    always begin
    #10 {a_i,b_i,m} = {a_i,b_i,m}+4'b0001;
    if (a_i==4'b1111&&b_i==4'b1111&&m==1) #10 $stop;
    end
//        #10 a_i = 4'b0010; b_i = 4'b0010; c_i = 0;
//        #10 a_i = 4'b0101; b_i = 4'b0110; c_i = 0;
//        #10 a_i = 4'b1000; b_i = 4'b1000; c_i = 1;
//        #10 a_i = 4'b1010; b_i = 4'b1010; c_i = 1;


endmodule
