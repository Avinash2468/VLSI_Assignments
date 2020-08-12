`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:38 09/10/2019 
// Design Name: 
// Module Name:    eight_one_mux 
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
module eight_one_mux(op,a,b,c,d,e,f,g,h,sel0,sel1,sel2);
input a,b,c,d,e,f,g,h,sel0,sel1,sel2;
output op;
wire four_1mux1 , four_1mux2 ;
four_one_mux A(four_1mux1,a,b,c,d,sel0,sel1);
four_one_mux B(four_1mux2,e,f,g,h,sel0,sel1);
two_one_mux C(op,four_1mux1,four_1mux2,sel2);
endmodule
