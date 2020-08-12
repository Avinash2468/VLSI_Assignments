`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:25 09/09/2019 
// Design Name: 
// Module Name:    four_one_mux 
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
module four_one_mux(op,a,b,c,d,sel0,sel1);
input a,b,c,d,sel0,sel1;
output op;
wire mux2_1 , mux2_2;
two_one_mux A(mux2_1,a,b,sel0);
two_one_mux B(mux2_2,c,d,sel0);
two_one_mux C(op,mux2_1,mux2_2,sel1);
endmodule
