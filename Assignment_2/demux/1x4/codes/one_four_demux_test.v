`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:56:23 09/11/2019
// Design Name:   one_four_demux
// Module Name:   /home/avinash/Desktop/vlsi_lab2/demux/one_four_demux_test.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_four_demux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_four_demux_test;

	// Inputs
	reg a;
	reg s0;
	reg s1;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;

	// Instantiate the Unit Under Test (UUT)
	one_four_demux uut (
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.a(a), 
		.s0(s0), 
		.s1(s1)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#20;
      repeat(7)
		begin
		#20;
		a = a^(s1&s0);
		s1 = s1^(s0);
		s0 = s0^1;
		end
		// Add stimulus here
		#20;
	end
      
endmodule

