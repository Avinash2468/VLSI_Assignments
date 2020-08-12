`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:49 09/26/2019 
// Design Name: 
// Module Name:    FA 
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
module FA(c_out,sum,x,y,c_in);
input x , y , c_in;
output c_out,sum;
wire w_1,w_2,w_3;
xor(w_1,x,y);
xor(sum,w_1,c_in);
and(w_2,w_1,c_in);
and(w_3,x,y);
or(c_out,w_3,w_2);
endmodule
