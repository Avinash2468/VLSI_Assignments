`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:22 10/03/2019 
// Design Name: 
// Module Name:    wallace 
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
module half_adder(sum,carry,a,b);
input a,b;
output sum,carry;
assign sum = a^b;
assign carry = a&b;
endmodule
module full_adder(sum,c_out,x,y,c_in);
input x , y , c_in;
output c_out,sum;
wire w_1,w_2,w_3;
xor(w_1,x,y);
xor(sum,w_1,c_in);
and(w_2,w_1,c_in);
and(w_3,x,y);
or(c_out,w_3,w_2);
endmodule
module wallace(prod , a , b);
input [3:0] a,b;
output [7:0] prod;
reg [3:0] lay1 , lay2 , lay3 , lay4;
integer i;
always @(a or b)
for (i = 0; i<4;i=i+1)
begin
lay1[i] <= a[i] & b[0]; 
lay2[i] <= a[i] & b[1];
lay3[i] <= a[i] & b[2];
lay4[i] <= a[i] & b[3];
end
wire s1,s2,s3,s4,s5,s6,c2,c3,c4,c5;
assign s1 = lay1[0];
half_adder A(s2,c2,lay1[1],lay2[0]);
full_adder B(s3,c3,lay1[2],lay2[1],lay3[0]);
full_adder C(s4,c4,lay1[3],lay2[2],lay3[1]);
half_adder D(s5,c5,lay2[3],lay3[2]);
assign s6 = lay3[3];
wire s7,s8,s9,s10,s11,s12,s13,s14,s15,c7,c8,c9,c10,c11,c12,c13,c14;
half_adder E(s7,c7,s3,c2);
full_adder F(s8,c8,s4,c3,lay4[0]);
full_adder G(s9,c9,s5,c4,lay4[1]);
full_adder H(s10,c10,s6,c5,lay4[2]);
assign s11 = lay4[3];
half_adder I(s12,c11,s8,c7);
full_adder J(s13,c12,s9,c8,c11);
full_adder K(s14,c13,s10,c9,c12);
full_adder L(s15,c14,s11,c10,c13);
assign prod[0] = s1;     
assign prod[1] = s2;
assign prod[2] = s7;
assign prod[3] = s12;
assign prod[4] = s13;
assign prod[5] = s14;
assign prod[6] = s15;
assign prod[7] = c14;
endmodule
