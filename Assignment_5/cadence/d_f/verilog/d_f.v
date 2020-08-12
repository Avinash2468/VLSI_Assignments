`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:34 10/22/2019 
// Design Name: 
// Module Name:    d_f 
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
module d_f(Q,D,clk,rst);
input D,clk,rst;
output reg Q;
always @(posedge clk or posedge rst)
begin
if(rst==1'b1)
Q <= 1'b0;
else
Q <= D;
end
endmodule
