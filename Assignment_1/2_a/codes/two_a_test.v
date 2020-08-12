`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: IIIT Hyderabad
// Engineer: Avinash Prabhu ( 2018102027 )
//
// Create Date:   00:25:21 09/06/2019
// Design Name:   two_a
// Module Name:   /home/avinash/Desktop/VLSIlab01/two_a/two_a_test.v
// Project Name:  two_a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_a
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_a_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	two_a uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		// Wait 10 ns for global reset to finish
		#10;
        repeat(15)
		  begin
		  #10;
		  a = a^(b&c&d);
		  b = b^(c&d);
		  c = c^(d);
		  d = d^1;
		  end
	end
      
endmodule

