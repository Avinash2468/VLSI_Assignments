`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:49 09/10/2019
// Design Name:   two_one_mux
// Module Name:   /home/avinash/Desktop/vlsi_lab2/mux/two_one_mux_test.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_one_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_one_mux_test;

	// Inputs
	reg a;
	reg b;
	reg sel;

	// Outputs
	wire op;

	// Instantiate the Unit Under Test (UUT)
	two_one_mux uut (
		.op(op), 
		.a(a), 
		.b(b), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		sel = 0;
		// Wait 10 ns for global reset to finish
		#20;
      repeat(7)
		begin
		#20;
		sel = sel^(a&b);
		a = a^(b);
		b = b^1;
		end
	end
      
endmodule

