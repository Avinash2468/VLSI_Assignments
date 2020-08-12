`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:29 09/10/2019
// Design Name:   eight_one_mux
// Module Name:   /home/avinash/Desktop/vlsi_lab2/mux/eight_one_mux_test.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_one_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_one_mux_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;
	reg g;
	reg h;
	reg sel0;
	reg sel1;
	reg sel2;

	// Outputs
	wire op;

	// Instantiate the Unit Under Test (UUT)
	eight_one_mux uut (
		.op(op), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.h(h), 
		.sel0(sel0), 
		.sel1(sel1), 
		.sel2(sel2)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		sel0 = 0;
		sel1 = 0;
		sel2 = 0;

		// Wait 5 ns for global reset to finish
		#5;
      repeat(2047)
		begin
		#5;
		sel2 = sel2^(sel1&sel0&h&g&f&e&d&c&b&a);
		sel1 = sel1^(sel0&h&g&f&e&d&c&b&a);
		sel0 = sel0^(h&g&f&e&d&c&b&a);
		h = h^(g&f&e&d&c&b&a);
		g = g^(f&e&d&c&b&a);
		f = f^(e&d&c&b&a);
		e = e^(d&c&b&a);
		d = d^(c&b&a);
		c = c^(b&a);
		b = b^(a);
		a = a^1;
		end
		// Add stimulus here

	end
      
endmodule

