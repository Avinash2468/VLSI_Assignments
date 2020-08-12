`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:05 09/11/2019 
// Design Name: 
// Module Name:    three_eight_decoder 
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
module one_two_decoder(y0,y1,i0,e);
input i0,e;
output y0,y1;
and(y0,~i0,e);
and(y1,i0,e);
endmodule
module two_four_decoder(y0,y1,y2,y3,i0,i1,e);
input i0,i1,e;
output y0,y1,y2,y3;
wire w_0 , w_1;
one_two_decoder A(w_0,w_1,i0,e);
one_two_decoder B(y0,y1,i1,w_0);
one_two_decoder C(y2,y3,i1,w_1);
endmodule
module three_eight_decoder(y0,y1,y2,y3,y4,y5,y6,y7,i0,i1,i2,e);
input i0,i1,i2,e;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire w_0 , w_1;
one_two_decoder A(w_0,w_1,i0,e);
two_four_decoder B(y0,y1,y2,y3,i1,i2,w_0);
two_four_decoder C(y4,y5,y6,y7,i1,i2,w_1);
endmodule
