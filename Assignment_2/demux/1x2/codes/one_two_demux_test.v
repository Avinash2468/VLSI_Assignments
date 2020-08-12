`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:52:28 09/11/2019
// Design Name:   one_two_demux
// Module Name:   /home/avinash/Desktop/vlsi_lab2/demux/one_two_demux_test.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_two_demux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_two_demux_test;

	// Inputs
	reg a;
	reg s0;

	// Outputs
	wire y0;
	wire y1;

	// Instantiate the Unit Under Test (UUT)
	one_two_demux uut (
		.y0(y0), 
		.y1(y1), 
		.a(a), 
		.s0(s0)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		s0 = 0;
		// Wait 20 ns for global reset to finish
		#20;
        repeat(3)
		begin
		#20;
		a = a^(s0);
		s0 = s0^1;
		end
		// Add stimulus here
		#20;
	end
      
endmodule

