`timescale 1ns / 1ps

module butterfly2(a,b,c,d);
input signed [1:0]a;
input signed [1:0]b;
output signed [3:0]c;
output signed [3:0]d;

assign c=a+b;
assign d=a-b;

endmodule
