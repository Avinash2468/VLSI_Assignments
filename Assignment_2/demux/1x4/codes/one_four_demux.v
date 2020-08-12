`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:08 09/11/2019 
// Design Name: 
// Module Name:    one_four_demux 
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
module one_four_demux(y0,y1,y2,y3,a,s0,s1);
input a,s0,s1;
output y0,y1,y2,y3;
wire w_0 , w_1;
one_two_demux A(w_0,w_1,a,s1);
one_two_demux B(y0,y1,w_0,s0);
one_two_demux C(y2,y3,w_1,s0);
endmodule
