`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:58:30 09/11/2019
// Design Name:   one_two_decoder
// Module Name:   /home/avinash/Desktop/vlsi_lab2/decoder/one_two_decoder_test.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_two_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_two_decoder_test;

	// Inputs
	reg i0;
	reg e;

	// Outputs
	wire y0;
	wire y1;

	// Instantiate the Unit Under Test (UUT)
	one_two_decoder uut (
		.y0(y0), 
		.y1(y1), 
		.i0(i0), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		e = 0;

		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here
		repeat(3)
		begin
		#20;
		e = e^(i0);
		i0 = i0^1;
		end
		// Add stimulus here
		#20;
	end
      
endmodule

