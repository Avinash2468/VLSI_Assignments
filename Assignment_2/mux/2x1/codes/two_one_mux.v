`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIIT Hyderabad
// Engineer: Avinash Prabhu ( 2018102027 )
// 
// Create Date:    20:38:12 09/09/2019 
// Design Name: 
// Module Name:    two_one_mux 
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
module two_one_mux(op,a,b,sel);
input a,b,sel;
output op;
wire w_1 , w_2;
and(w_1,a,~(sel));
and(w_2,b,sel);
or(op,w_1,w_2);
endmodule
