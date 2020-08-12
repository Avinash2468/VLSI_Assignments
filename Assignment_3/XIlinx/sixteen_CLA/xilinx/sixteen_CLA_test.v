`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:59 09/27/2019
// Design Name:   sixteen_CRA
// Module Name:   /home/avinash/Desktop/vlsi_lab3/CLA/sixteen_CLA_test.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sixteen_CRA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sixteen_CLA_test;

	// Inputs
	reg [15:0] x;
	reg [15:0] y;
	reg c_in;

	// Outputs
	wire c_out;
	wire [15:0] sum;

	// Instantiate the Unit Under Test (UUT)
	sixteen_CRA uut (
		.c_out(c_out), 
		.sum(sum), 
		.x(x), 
		.y(y), 
		.c_in(c_in)
	);

	initial begin
		// Initialize Inputs
		x = 16'b0000000000000000;
		y = 16'b0000000000000000;
		c_in = 0;
		// Wait 100 ns for global reset to finish
		#0.1;
      repeat(255)
		begin
		y = 16'b0000000000000000;
		repeat(255)
		begin
		#0.1;
		y = y + 16'b0000000000000001;
		end
		#0.1;
		x = x+16'b0000000000000001;
		end
		// Add stimulus here

	end
      
endmodule

