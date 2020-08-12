`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:00 10/22/2019
// Design Name:   s_m
// Module Name:   /home/avinash/Desktop/ug2/VLSI/LAB/vlsi_lab5/s_m_test.v
// Project Name:  vlsi_lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: s_m
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module s_m_test;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] P;

	// Instantiate the Unit Under Test (UUT)
	s_m uut (
		.clk(clk), 
		.rst(rst), 
		.a(a), 
		.b(b), 
		.P(P)
	);
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
			clk=0;
		rst = 1;
		a =0;
		b= 0;
		#6;
		rst =0;
		#57;
		repeat(16) begin
		repeat(15) begin
		rst = 1;
		if(b==15)
		begin
		a = a+1;
		end
		b = b+4'b0001;
		#6;
		rst = 0;
		#54;
		end
		end
		// Add stimulus here

	end
      
endmodule
