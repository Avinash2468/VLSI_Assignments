
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Oct 22 2019 16:04:10 IST (Oct 22 2019 10:34:10 UTC)

// Verification Directory fv/d_f 

module d_f(Q, D, clk, rst);
  input D, clk, rst;
  output Q;
  wire D, clk, rst;
  wire Q;
  wire n_0;
  DFFRHQX1 Q_reg(.RN (n_0), .CK (clk), .D (D), .Q (Q));
  INVXL g4(.A (rst), .Y (n_0));
endmodule

