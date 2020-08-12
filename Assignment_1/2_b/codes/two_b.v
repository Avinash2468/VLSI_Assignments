`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT Hyderabad
// Engineer: Avinash Prabhu (2018102027)
// 
// Create Date:    01:17:39 09/06/2019 
// Design Name: 	 two_b
// Module Name:    two_b 
// Project Name: 	 two_b
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
module two_b(a,b,c,d,e,f,y);
input a,b,c,d,e,f;
output y;
wire w_1 , w_2 , w_3 , w_4;
and(w_1,a,b);
and(w_2,w_1,c);
and(w_3,d,e);
or(w_4,w_2,w_3);
and(y,w_4,f);
endmodule
