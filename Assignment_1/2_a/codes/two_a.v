`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT Hyderabad
// Engineer: Avinash Prabhu ( 2018102027 )
// 
// Create Date:    00:18:30 09/06/2019 
// Design Name: 	 
// Module Name:    two_a 
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
module two_a(a,b,c,d,y);
input a,b,c,d;
output y;
wire r_1,r_2;
and(r_1,a,b);
and(r_2,c,d);
or(y,r_1,r_2);
endmodule
