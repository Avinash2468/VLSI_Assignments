`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:33:04 09/11/2019
// Design Name:   two_four_decoder
// Module Name:   /home/avinash/Desktop/vlsi_lab2/decoder/two_four_decoder_test.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_four_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_four_decoder_test;

	// Inputs
	reg i0;
	reg i1;
	reg e;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;

	// Instantiate the Unit Under Test (UUT)
	two_four_decoder uut (
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.i0(i0), 
		.i1(i1), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;
		e = 0;

		// Wait 20 ns for global reset to finish
		#20;
        
		// Add stimulus here
		repeat(7)
		begin
		#20;
		e = e^(i1&i0);
		i0 = i0^(i1);
		i1 = i1^1;
		end
		// Add stimulus here
		#20;
	end
      
endmodule

