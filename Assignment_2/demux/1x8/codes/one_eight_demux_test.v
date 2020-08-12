`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:38 09/11/2019
// Design Name:   one_eight_demux
// Module Name:   /home/avinash/Desktop/vlsi_lab2/demux/one_eight_demux_test.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_eight_demux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_eight_demux_test;

	// Inputs
	reg a;
	reg s0;
	reg s1;
	reg s2;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;
	wire y4;
	wire y5;
	wire y6;
	wire y7;

	// Instantiate the Unit Under Test (UUT)
	one_eight_demux uut (
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7), 
		.a(a), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		s0 = 0;
		s1 = 0;
		s2 = 0;
		// Wait 100 ns for global reset to finish
		#10;
      repeat(15)
		begin
		#10;
		a = a^(s0&s1&s2);
		s2 = s2^(s1&s0);
		s1 = s1^(s0);
		s0 = s0^1;
		end
		// Add stimulus here

	end
      
endmodule

