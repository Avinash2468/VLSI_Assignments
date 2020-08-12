`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:18 09/11/2019 
// Design Name: 
// Module Name:    priority_encoder 
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
module priority_encoder(y0,y1,y2,v,e,x0,x1,x2,x3,x4,x5,x6,x7);
input x0,x1,x2,x3,x4,x5,x6,x7,e;
output y0,y1,y2,v;
wire w_1 , w_2 ,w_3,w_4,w_5,w_6,w_7,w_8,w_9,w_10,w_11,w_12,w_13,w_14,w_15,w_16,w_17,w_18,w_19,w_20,w_21,w_22;
and (w_1,~x4,x3);
and (w_2,x1,~x2);
and (w_3,w_2,~x4);
or (w_4,w_3,w_1);
or (w_5,w_4,x5);
and (w_6,~x6,w_5);
or (w_13,w_6,x7);
and (y0,w_13,e);
or (w_7,x2,x3);
and (w_8,w_7,~x4);
and (w_9,w_8,~x5);
or (w_10,x6,x7);
or (w_14,w_10,w_9);
and (y1,w_14,e);
or (w_11,x4,x5);
or (w_12,x6,x7);
or (w_15,w_11,w_12);
and (y2,w_15,e);
or (w_16,x0,x1);
or (w_17 , w_16 ,x2);
or ( w_18 , w_17 , x3);
or ( w_19 , w_18 , x4);
or ( w_20 , w_19 , x5);
or ( w_21 , w_20 , x6);
or ( w_22 , w_21 , x7);
and (v , w_22 , e);
endmodule
