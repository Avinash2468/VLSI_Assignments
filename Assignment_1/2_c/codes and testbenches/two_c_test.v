`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: IIIT Hyderabad
// Engineer: Avinash Prabhu ( 2018102027 )
//
// Create Date:   11:01:59 09/06/2019
// Design Name:   two_c
// Module Name:   /home/avinash/Desktop/VLSIlab01/two_c/two_c_test.v
// Project Name:  two_c
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_c
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_c_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	two_c uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;

		// Wait 10 ns for global reset to finish
		#10;
        repeat(31)
		  begin
		  #10;
		  a = a^(b&c&d&e);
		  b = b^(c&d&e);
		  c = c^(d&e);
		  d = d^(e);
		  e = e^1;
		  end
		// Add stimulus here

	end
      
endmodule

