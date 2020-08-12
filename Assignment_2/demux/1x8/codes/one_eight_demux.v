`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:30 09/11/2019 
// Design Name: 
// Module Name:    one_eight_demux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module one_eight_demux(y0,y1,y2,y3,y4,y5,y6,y7,a,s0,s1,s2);
input a,s0,s1,s2;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire w_0 , w_1;
one_two_demux A(w_0,w_1,a,s2);
one_four_demux B(y0,y1,y2,y3,w_0,s0,s1);
one_four_demux C(y4,y5,y6,y7,w_1,s0,s1);
endmodule
