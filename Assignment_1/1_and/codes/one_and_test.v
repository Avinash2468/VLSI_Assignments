`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:21:45 09/07/2019
// Design Name:   one_and
// Module Name:   /home/avinash/Desktop/VLSIlab01/one_and/one_and_test.v
// Project Name:  one_and
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_and
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_and_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	one_and uut (
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

