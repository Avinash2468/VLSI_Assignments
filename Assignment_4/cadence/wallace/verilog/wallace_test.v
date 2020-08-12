`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:10:44 10/03/2019
// Design Name:   wallace
// Module Name:   /home/avinash/Desktop/vlsi_lab4/wallace/wallace_test.v
// Project Name:  wallace
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallace
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wallace_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] prod;

	// Instantiate the Unit Under Test (UUT)
	wallace uut (
		.prod(prod), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0000;
		b = 4'b0000;
		//c_in = 0;
		// Wait 100 ns for global reset to finish
		#3.5;
      repeat(15)
		begin
		b = 4'b0000;
		repeat(15)
		begin
		#3.5;
		b = b + 4'b0001;
		end
		#3.5;
		a = a+4'b0001;
		end
		// Add stimulus here

	end
      
endmodule

