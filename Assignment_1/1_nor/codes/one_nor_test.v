`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:34:02 09/07/2019
// Design Name:   one_nor
// Module Name:   /home/avinash/Desktop/VLSIlab01/one_nor/one_nor_test.v
// Project Name:  one_nor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_nor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_nor_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	one_nor uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	
	initial begin
		// Initialize Inputs
		a = 0;b = 0;
		#100; // This produces a delay of 100 ns.
		a = 0;b = 1;
		#100;
		a = 1;b = 0;
		#100;
		a = 1;b = 1;
		#100;
	end
      
      
endmodule

