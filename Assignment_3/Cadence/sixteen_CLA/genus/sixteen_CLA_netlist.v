
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 27 2019 16:25:43 IST (Sep 27 2019 10:55:43 UTC)

// Verification Directory fv/sixteen_CLA 

module CLA(c_out, sum, x, y, c_in);
  input [3:0] x, y;
  input c_in;
  output c_out;
  output [3:0] sum;
  wire [3:0] x, y;
  wire c_in;
  wire c_out;
  wire [3:0] sum;
  wire n_0, n_1, n_2, n_3, n_4, n_7, n_9;
  OAI21XL g352(.A0 (n_9), .A1 (n_3), .B0 (n_0), .Y (c_out));
  MXI2XL g353(.A (n_2), .B (n_3), .S0 (n_9), .Y (sum[3]));
  AOI22XL g354(.A0 (n_7), .A1 (n_1), .B0 (x[2]), .B1 (y[2]), .Y (n_9));
  CLKXOR2X1 g355(.A (n_1), .B (n_7), .Y (sum[2]));
  ADDFX1 g356(.A (y[1]), .B (x[1]), .CI (n_4), .CO (n_7), .S (sum[1]));
  ADDFX1 g357(.A (y[0]), .B (x[0]), .CI (c_in), .CO (n_4), .S (sum[0]));
  CLKINVX1 g358(.A (n_2), .Y (n_3));
  CLKXOR2X1 g359(.A (y[3]), .B (x[3]), .Y (n_2));
  CLKXOR2X1 g360(.A (y[2]), .B (x[2]), .Y (n_1));
  NAND2XL g361(.A (y[3]), .B (x[3]), .Y (n_0));
endmodule

module CLA_1(c_out, sum, x, y, c_in);
  input [3:0] x, y;
  input c_in;
  output c_out;
  output [3:0] sum;
  wire [3:0] x, y;
  wire c_in;
  wire c_out;
  wire [3:0] sum;
  wire n_0, n_1, n_2, n_3, n_4, n_7, n_9;
  OAI21XL g352(.A0 (n_9), .A1 (n_3), .B0 (n_0), .Y (c_out));
  MXI2XL g353(.A (n_2), .B (n_3), .S0 (n_9), .Y (sum[3]));
  AOI22XL g354(.A0 (n_7), .A1 (n_1), .B0 (x[2]), .B1 (y[2]), .Y (n_9));
  CLKXOR2X1 g355(.A (n_1), .B (n_7), .Y (sum[2]));
  ADDFX1 g356(.A (y[1]), .B (x[1]), .CI (n_4), .CO (n_7), .S (sum[1]));
  ADDFX1 g357(.A (y[0]), .B (x[0]), .CI (c_in), .CO (n_4), .S (sum[0]));
  CLKINVX1 g358(.A (n_2), .Y (n_3));
  CLKXOR2X1 g359(.A (y[3]), .B (x[3]), .Y (n_2));
  CLKXOR2X1 g360(.A (y[2]), .B (x[2]), .Y (n_1));
  NAND2XL g361(.A (y[3]), .B (x[3]), .Y (n_0));
endmodule

module CLA_2(c_out, sum, x, y, c_in);
  input [3:0] x, y;
  input c_in;
  output c_out;
  output [3:0] sum;
  wire [3:0] x, y;
  wire c_in;
  wire c_out;
  wire [3:0] sum;
  wire n_0, n_1, n_2, n_3, n_4, n_7, n_9;
  OAI21XL g352(.A0 (n_9), .A1 (n_3), .B0 (n_0), .Y (c_out));
  MXI2XL g353(.A (n_2), .B (n_3), .S0 (n_9), .Y (sum[3]));
  AOI22XL g354(.A0 (n_7), .A1 (n_1), .B0 (x[2]), .B1 (y[2]), .Y (n_9));
  CLKXOR2X1 g355(.A (n_1), .B (n_7), .Y (sum[2]));
  ADDFX1 g356(.A (y[1]), .B (x[1]), .CI (n_4), .CO (n_7), .S (sum[1]));
  ADDFX1 g357(.A (y[0]), .B (x[0]), .CI (c_in), .CO (n_4), .S (sum[0]));
  CLKINVX1 g358(.A (n_2), .Y (n_3));
  CLKXOR2X1 g359(.A (y[3]), .B (x[3]), .Y (n_2));
  CLKXOR2X1 g360(.A (y[2]), .B (x[2]), .Y (n_1));
  NAND2XL g361(.A (y[3]), .B (x[3]), .Y (n_0));
endmodule

module CLA_3(c_out, sum, x, y, c_in);
  input [3:0] x, y;
  input c_in;
  output c_out;
  output [3:0] sum;
  wire [3:0] x, y;
  wire c_in;
  wire c_out;
  wire [3:0] sum;
  wire n_0, n_1, n_2, n_3, n_4, n_7, n_9;
  OAI21XL g352(.A0 (n_9), .A1 (n_3), .B0 (n_0), .Y (c_out));
  MXI2XL g353(.A (n_2), .B (n_3), .S0 (n_9), .Y (sum[3]));
  AOI22XL g354(.A0 (n_7), .A1 (n_1), .B0 (x[2]), .B1 (y[2]), .Y (n_9));
  CLKXOR2X1 g355(.A (n_1), .B (n_7), .Y (sum[2]));
  ADDFX1 g356(.A (y[1]), .B (x[1]), .CI (n_4), .CO (n_7), .S (sum[1]));
  ADDFX1 g357(.A (y[0]), .B (x[0]), .CI (c_in), .CO (n_4), .S (sum[0]));
  CLKINVX1 g358(.A (n_2), .Y (n_3));
  CLKXOR2X1 g359(.A (y[3]), .B (x[3]), .Y (n_2));
  CLKXOR2X1 g360(.A (y[2]), .B (x[2]), .Y (n_1));
  NAND2XL g361(.A (y[3]), .B (x[3]), .Y (n_0));
endmodule

module sixteen_CLA(c_out, sum, x, y, c_in);
  input [15:0] x, y;
  input c_in;
  output c_out;
  output [15:0] sum;
  wire [15:0] x, y;
  wire c_in;
  wire c_out;
  wire [15:0] sum;
  wire w1, w2, w3;
  CLA A(w1, sum[3:0], x[3:0], y[3:0], c_in);
  CLA_1 B(w2, sum[7:4], x[7:4], y[7:4], w1);
  CLA_2 C(w3, sum[11:8], x[11:8], y[11:8], w2);
  CLA_3 D(c_out, sum[15:12], x[15:12], y[15:12], w3);
endmodule

