`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:46 09/11/2019 
// Design Name: 
// Module Name:    one_two_demux 
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
module one_two_demux(y0,y1,a,s0);
input a,s0;
output y0,y1;
and(y0,~(s0),a);
and(y1,s0,a);
endmodule
