`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:40 09/11/2019 
// Design Name: 
// Module Name:    one_two_decoder 
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
module one_two_decoder(y0,y1,i0,e);
input i0,e;
output y0,y1;
and(y0,~i0,e);
and(y1,i0,e);
endmodule
