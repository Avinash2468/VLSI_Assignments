`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: IIIT Hyderabad
// Engineer: Avinash Prabhu ( 2018102027 )
//
// Create Date:   10:40:21 09/06/2019
// Design Name:   two_b
// Module Name:   /home/avinash/Desktop/VLSIlab01/two_b/two_b_test.v
// Project Name:  two_b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_b_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	two_b uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;

		// Wait 100 ns for global reset to finish
		#10;
      repeat(63)
		  begin
		  #10;
		  a = a^(b&c&d&e&f);
		  b = b^(c&d&e&f);
		  c = c^(d&e&f);
		  d = d^(e&f);
		  e = e^(f);
		  f = f^1;
		  end
		// Add stimulus here

	end
      
endmodule

