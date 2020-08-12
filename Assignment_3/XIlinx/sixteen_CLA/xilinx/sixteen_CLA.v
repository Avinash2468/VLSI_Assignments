`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:10 09/27/2019 
// Design Name: 
// Module Name:    sixteen_CLA 
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
module sixteen_CLA(c_out,sum,x,y,c_in);
input [15:0] x , y;
input c_in;
output [15:0] sum;
output c_out;
wire w1 , w2 ,w3;
CLA A(w1,sum[3:0],x[3:0],y[3:0],c_in);
CLA B(w2,sum[7:4],x[7:4],y[7:4],w1);
CLA C(w3,sum[11:8],x[11:8],y[11:8],w2);
CLA D(c_out,sum[15:12],x[15:12],y[15:12],w3);
endmodule
