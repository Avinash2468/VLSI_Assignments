`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:35 09/27/2019 
// Design Name: 
// Module Name:    CLA 
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
module CLA(c_out,sum,x,y,c_in);
input [3:0] x ,y;
input c_in;
output [3:0] sum;
output c_out;
wire [3:0] G,P,C;
assign G = x&y;
assign P = x^y;
wire c1 ,c2 ,c3;
assign C[0] = c_in;
assign C[1] = G[0] | (P[0]&C[0]);
assign C[2] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]) ;
assign C[3] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]);
assign c_out = G[3]| (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
assign sum = P ^ C;
endmodule
