`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:28 09/26/2019 
// Design Name: 
// Module Name:    CRA 
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
module CRA(c_out,sum,x,y,c_in);
input [3:0] x , y;
input c_in;
output [3:0] sum;
output c_out;
wire w_1,w_2,w_3;
FA A(w_1,sum[0],x[0],y[0],c_in);
FA B(w_2,sum[1],x[1],y[1],w_1);
FA C(w_3,sum[2],x[2],y[2],w_2);
FA D(c_out,sum[3],x[3],y[3],w_3);
endmodule
