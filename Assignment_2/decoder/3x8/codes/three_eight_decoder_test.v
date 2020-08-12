`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:55:21 09/11/2019
// Design Name:   three_eight_decoder
// Module Name:   /home/avinash/Desktop/vlsi_lab2/decoder/three_eight_decoder_test.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: three_eight_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module three_eight_decoder_test;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg e;

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
	three_eight_decoder uut (
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;
		i2 = 0;
		e = 0;

		// Wait 100 ns for global reset to finish
		#10;
      repeat(15)
		begin
		#10;
		e = e^(i0&i1&i2);
		i0 = i0^(i2&i1);
		i1 = i1^(i2);
		i2 = i2^1;
		end
		// Add stimulus here

	end
      
endmodule

