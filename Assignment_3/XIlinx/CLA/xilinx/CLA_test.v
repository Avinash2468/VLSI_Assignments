`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:53 09/27/2019
// Design Name:   CLA
// Module Name:   /home/avinash/Desktop/vlsi_lab3/CLA/CLA_test.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_test;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;
	reg c_in;

	// Outputs
	wire c_out;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	CLA uut (
		.c_out(c_out), 
		.sum(sum), 
		.x(x), 
		.y(y), 
		.c_in(c_in)
	);

	initial begin
		// Initialize Inputs
		x = 4'b0000;
		y = 4'b0000;
		c_in = 0;
		// Wait 100 ns for global reset to finish
		#3.5;
      repeat(15)
		begin
		y = 4'b0000;
		repeat(15)
		begin
		#3.5;
		y = y + 4'b0001;
		end
		#3.5;
		x = x+4'b0001;
		end
		// Add stimulus here

	end
      
endmodule

