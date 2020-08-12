`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:50:05 09/26/2019
// Design Name:   FA
// Module Name:   /home/avinash/Desktop/vlsi_lab3/FA/FA_test.v
// Project Name:  FA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_test;

	// Inputs
	reg x;
	reg y;
	reg c_in;

	// Outputs
	wire c_out;
	wire sum;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.c_out(c_out), 
		.sum(sum), 
		.x(x), 
		.y(y), 
		.c_in(c_in)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#20;
        repeat(7)
		  begin
		  #20;
		  x = x^(y&c_in);
		  y = y^c_in;
		  c_in = c_in^1;
		// Add stimulus here
			end
			#20;
	end
      
endmodule

