`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:40:23 09/11/2019
// Design Name:   priority_encoder
// Module Name:   /home/avinash/Desktop/vlsi_lab2/priority_encoder/priority_encoder_test.v
// Project Name:  priority_encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priority_encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module priority_encoder_test;

	// Inputs
	reg e;
	reg x0;
	reg x1;
	reg x2;
	reg x3;
	reg x4;
	reg x5;
	reg x6;
	reg x7;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	priority_encoder uut (
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.v(v), 
		.e(e), 
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7)
	);

	initial begin
		// Initialize Inputs
		e = 0;
		x0 = 0;
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
		x5 = 0;
		x6 = 0;
		x7 = 0;
		#1.5;
		repeat(255)
		  begin
		  
		  x7 = x7^(x6&x5&x4&x3&x2&x1&x0);
		  x6 = x6^(x5&x4&x3&x2&x1&x0);
		  x5 = x5^(x4&x3&x2&x1&x0);
		  x4 = x4^(x3&x2&x1&x0);
		  x3 = x3^(x2&x1&x0);
		  x2 = x2^(x1&x0);
		  x1 = x1^(x0);
		  x0 = x0^1;
		  #1.5;
		  end
	
		e = 1;
		x0 = 0;
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
		x5 = 0;
		x6 = 0;
		x7 = 0;
		#1.5;
		repeat(255)
		  begin
		  
		  x7 = x7^(x6&x5&x4&x3&x2&x1&x0);
		  x6 = x6^(x5&x4&x3&x2&x1&x0);
		  x5 = x5^(x4&x3&x2&x1&x0);
		  x4 = x4^(x3&x2&x1&x0);
		  x3 = x3^(x2&x1&x0);
		  x2 = x2^(x1&x0);
		  x1 = x1^(x0);
		  x0 = x0^1;
		  #1.5;
		  end
	end
      
endmodule

	