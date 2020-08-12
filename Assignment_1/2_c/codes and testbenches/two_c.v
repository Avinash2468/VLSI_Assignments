`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:13 09/06/2019 
// Design Name: 
// Module Name:    two_c 
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
module two_c(a,b,c,d,e,y);
input a,b,c,d,e;
output y;
wire 	w_1 , w_2 , w_3 ,w_4;
or(w_1,a,~b);
and(w_2,c,d);
or(w_3,w_2,e);
and(w_4,w_3,w_1);
assign y = ~(w_4);
endmodule
