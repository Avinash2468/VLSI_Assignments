`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:40:07 09/07/2019
// Design Name:   one_not
// Module Name:   /home/avinash/Desktop/VLSIlab01/one_not/one_not_test.v
// Project Name:  one_not
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_not
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_not_test;

	// Inputs
	reg a;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	one_not uut (
		.a(a), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

