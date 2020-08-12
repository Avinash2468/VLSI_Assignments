`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:51 09/10/2019
// Design Name:   four_one_mux
// Module Name:   /home/avinash/Desktop/vlsi_lab2/mux/four_one_mux_test.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_one_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_one_mux_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg sel0;
	reg sel1;

	// Outputs
	wire op;

	// Instantiate the Unit Under Test (UUT)
	four_one_mux uut (
		.op(op), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.sel0(sel0), 
		.sel1(sel1)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		sel0 = 0;
		sel1 = 0;
		// Wait 100 ns for global reset to finish
		#10;
        repeat(63)
		  begin
		  #10;
		  sel1 = sel1^(sel0&d&c&b&a);
		  sel0 = sel0^(d&c&b&a);
		  d = d^(c&b&a);
		  c = c^(b&a);
		  b = b^(a);
		  a = a^1;
		  end
		// Add stimulus here
	end
endmodule

