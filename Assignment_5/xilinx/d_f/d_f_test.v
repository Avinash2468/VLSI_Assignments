`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:17 10/22/2019
// Design Name:   d_f
// Module Name:   /home/avinash/Desktop/ug2/VLSI/LAB/vlsi_lab5/d_f_test.v
// Project Name:  vlsi_lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_f
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module d_f_test;

	// Inputs
	reg D;
	reg clk;
	reg rst;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	d_f uut (
		.Q(Q), 
		.D(D), 
		.clk(clk), 
		.rst(rst)
	);
	initial begin
		// Initialize Inputs
	//	D = 0;
		clk = 0;
//		rst = 0;

			// Wait 100 ns for global reset to finish
		forever #10 clk = ~clk;
        
		// Add stimulus here

	end
	initial begin 
		rst=1;
		D <=0;
		#100;
		D <= 1;
		#100;
		rst=0;
		#100;
		D <= 0;
		end
      
endmodule
