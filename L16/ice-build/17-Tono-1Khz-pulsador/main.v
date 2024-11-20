// Code generated by Icestudio 0.12.2w202410290510

`default_nettype none

//---- Top entity
module main #(
 parameter vcb9863 = 12000/2
) (
 input v0869b1,
 input vclk,
 output v8973a9,
 output [0:7] vinit
);
 localparam p1 = vcb9863;
 wire [0:31] w0;
 wire w2;
 wire w3;
 wire w4;
 wire w5;
 wire w6;
 wire w7;
 wire w8;
 wire w9;
 assign w2 = v0869b1;
 assign v8973a9 = w4;
 assign w5 = vclk;
 assign w6 = vclk;
 assign w7 = vclk;
 assign w6 = w5;
 assign w7 = w5;
 assign w7 = w6;
 v959751 #(
  .vc5c8ea(p1)
 ) v3a039d (
  .vbc97e4(w0)
 );
 vba518e v7001c3 (
  .vcbab45(w4),
  .v0e28cb(w8),
  .v3ca442(w9)
 );
 vb7f713 v6302b3 (
  .vb5e8cd(w3),
  .v6dda25(w5),
  .v4642b6(w8)
 );
 v5018a6 vff40b0 (
  .vd9601b(w2),
  .vfde3d7(w6),
  .v157a67(w9)
 );
 v397e22 v1547f1 (
  .vd6b9df(w0),
  .vd1077b(w3),
  .v6dda25(w7)
 );
 assign vinit = 8'b00000000;
endmodule

//---- Top entity
module v959751 #(
 parameter vc5c8ea = 0
) (
 output [31:0] vbc97e4
);
 localparam p0 = vc5c8ea;
 wire [0:31] w1;
 assign vbc97e4 = w1;
 v959751_v465065 #(
  .VALUE(p0)
 ) v465065 (
  .k(w1)
 );
endmodule

//---------------------------------------------------
//-- 32-bits-gen-constant
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Generic: 32-bits generic constant
//---------------------------------------------------

module v959751_v465065 #(
 parameter VALUE = 0
) (
 output [31:0] k
);
 assign k = VALUE;
endmodule
//---- Top entity
module vba518e (
 input v0e28cb,
 input v3ca442,
 output vcbab45
);
 wire w0;
 wire w1;
 wire w2;
 assign w0 = v0e28cb;
 assign w1 = v3ca442;
 assign vcbab45 = w2;
 vba518e_vf4938a vf4938a (
  .a(w0),
  .b(w1),
  .c(w2)
 );
endmodule

//---------------------------------------------------
//-- AND2
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Two bits input And gate
//---------------------------------------------------

module vba518e_vf4938a (
 input a,
 input b,
 output c
);
 //-- AND gate
 //-- Verilog implementation
 
 assign c = a & b;
 
endmodule
//---- Top entity
module vb7f713 #(
 parameter v8bcde4 = 0
) (
 input v6dda25,
 input vb5e8cd,
 output v4642b6
);
 localparam p0 = v8bcde4;
 wire w1;
 wire w2;
 wire w3;
 assign w1 = v6dda25;
 assign w2 = vb5e8cd;
 assign v4642b6 = w3;
 vb7f713_v4a32dd #(
  .INI(p0)
 ) v4a32dd (
  .clk(w1),
  .t(w2),
  .q(w3)
 );
endmodule

//---------------------------------------------------
//-- TFF-verilog
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- TFF-verilog. System TFF with toggle input: It toogles on every system cycle if the input is active. Verilog implementation
//---------------------------------------------------

module vb7f713_v4a32dd #(
 parameter INI = 0
) (
 input clk,
 input t,
 output q
);
 //-- Initial value
 reg qi = INI;
 
 always @(posedge clk)
 begin
  
  //-- check the toogle input
  if (t == 1'b1)
    qi <= ~ qi;
  
 end
 
 //-- Connect the register with the
 //-- output
 assign q = qi;
 
endmodule
//---- Top entity
module v5018a6 #(
 parameter v9d2d5b = 0,
 parameter v42e61f = 0
) (
 input vfde3d7,
 input vd9601b,
 output v157a67,
 output v64879c
);
 localparam p4 = v9d2d5b;
 localparam p5 = v42e61f;
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w6;
 wire w7;
 assign w0 = vd9601b;
 assign v157a67 = w1;
 assign v64879c = w3;
 assign w6 = vfde3d7;
 assign w7 = vfde3d7;
 assign w2 = w1;
 assign w7 = w6;
 vae13be vc01bdf (
  .ve78ab8(w2),
  .v3487af(w3),
  .ved8395(w7)
 );
 v091b35 #(
  .v17ea21(p4),
  .v803182(p5)
 ) v79ea21 (
  .v27dec4(w0),
  .v4642b6(w1),
  .v25ab12(w6)
 );
endmodule

//---------------------------------------------------
//-- Button-tic
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Button-tic: Configurable button that emits a tic when it is pressed
//---------------------------------------------------
//---- Top entity
module vae13be (
 input ved8395,
 input ve78ab8,
 output v1c9ba2,
 output v3487af
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 wire w5;
 assign w0 = ve78ab8;
 assign w1 = ved8395;
 assign w4 = ve78ab8;
 assign v3487af = w5;
 assign w4 = w0;
 v3676a0 v9d4cda (
  .v0e28cb(w2),
  .vcbab45(w3)
 );
 vba518e v57aa83 (
  .v0e28cb(w3),
  .v3ca442(w4),
  .vcbab45(w5)
 );
 v58ed2b v4953b3 (
  .vf54559(w0),
  .va4102a(w1),
  .ve8318d(w2)
 );
endmodule

//---------------------------------------------------
//-- Rising-edge-detector
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Rising-edge detector. It generates a 1-period pulse (tic) when a rising edge is detected on the input. Block implementation
//---------------------------------------------------
//---- Top entity
module v3676a0 (
 input v0e28cb,
 output vcbab45
);
 wire w0;
 wire w1;
 assign w0 = v0e28cb;
 assign vcbab45 = w1;
 v3676a0_vd54ca1 vd54ca1 (
  .a(w0),
  .q(w1)
 );
endmodule

//---------------------------------------------------
//-- NOT
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- NOT gate (Verilog implementation)
//---------------------------------------------------

module v3676a0_vd54ca1 (
 input a,
 output q
);
 //-- NOT Gate
 assign q = ~a;
 
 
endmodule
//---- Top entity
module v58ed2b #(
 parameter v71e305 = 0
) (
 input va4102a,
 input vf54559,
 output va58c5b,
 output ve8318d
);
 localparam p2 = v71e305;
 wire w0;
 wire w1;
 wire w3;
 assign w0 = va4102a;
 assign ve8318d = w1;
 assign w3 = vf54559;
 v58ed2b_vb8adf8 #(
  .INI(p2)
 ) vb8adf8 (
  .clk(w0),
  .q(w1),
  .d(w3)
 );
endmodule

//---------------------------------------------------
//-- sys-DFF-verilog
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- System - D Flip-flop. Capture data every system clock cycle. Verilog implementation
//---------------------------------------------------

module v58ed2b_vb8adf8 #(
 parameter INI = 0
) (
 input clk,
 input d,
 output q
);
 //-- Initial value
 reg qi = INI;
 
 //-- Capture the input data  
 //-- on the rising edge of  
 //-- the system clock
 always @(posedge clk)
   qi <= d;
   
 //-- Connect the register with the
 //-- output
 assign q = qi;
endmodule
//---- Top entity
module v091b35 #(
 parameter v17ea21 = 0,
 parameter v803182 = 0
) (
 input v25ab12,
 input v27dec4,
 output v4642b6
);
 localparam p2 = v803182;
 localparam p4 = v17ea21;
 wire w0;
 wire w1;
 wire w3;
 wire w5;
 wire w6;
 wire w7;
 wire w8;
 assign v4642b6 = w5;
 assign w6 = v27dec4;
 assign w7 = v25ab12;
 assign w8 = v25ab12;
 assign w8 = w7;
 v6c3aff #(
  .v2fb6e5(p4)
 ) v67ee04 (
  .v758f58(w0),
  .vedbc89(w6)
 );
 v68f406 #(
  .v6a9fe4(p2)
 ) v5b351d (
  .v27dec4(w1),
  .v4642b6(w3)
 );
 vdd36dc v7f7562 (
  .v6a82dd(w3),
  .vd4e5d7(w5),
  .v444878(w8)
 );
 v0705a6 v9812a2 (
  .ve7f5e6(w0),
  .v3c12b5(w1),
  .v717e81(w7)
 );
endmodule

//---------------------------------------------------
//-- Button
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Configurable button (pull-up on/off. Not on/off)
//---------------------------------------------------
//---- Top entity
module v6c3aff #(
 parameter v2fb6e5 = 1
) (
 input vedbc89,
 output v758f58
);
 localparam p2 = v2fb6e5;
 wire w0;
 wire w1;
 assign w0 = vedbc89;
 assign v758f58 = w1;
 v6c3aff_v34955f #(
  .ON(p2)
 ) v34955f (
  .i(w0),
  .o(w1)
 );
endmodule

//---------------------------------------------------
//-- Pull-upx1
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- FPGA internal pull-up configuration on the input port
//---------------------------------------------------

module v6c3aff_v34955f #(
 parameter ON = 0
) (
 input i,
 output o
);
 // 1-Pull up
 
 //-- Place the IO block, configured as  
 //-- input with pull-up
 SB_IO
   #(
     .PIN_TYPE(6'b 1010_01),
     
     //-- The pull-up is activated or not
     //-- depeding on the ON parameter
     .PULLUP(ON)
     
   ) input_pin (
 
     //--- Input pin
     .PACKAGE_PIN(i),
     
     //-- Block output
     .D_IN_0(o),
     
     //-- Configured as input
     .OUTPUT_ENABLE(1'b0),
     
     //-- Not used
     .D_OUT_0(1'b0)
   );
endmodule
//---- Top entity
module v68f406 #(
 parameter v6a9fe4 = 0
) (
 input v27dec4,
 output v4642b6
);
 localparam p0 = v6a9fe4;
 wire w1;
 wire w2;
 wire w3;
 assign w2 = v27dec4;
 assign v4642b6 = w3;
 v3ba5d0 #(
  .vc5c8ea(p0)
 ) vce5802 (
  .v268bfc(w1)
 );
 vd12401 v5b01c7 (
  .v0e28cb(w1),
  .v3ca442(w2),
  .vcbab45(w3)
 );
endmodule

//---------------------------------------------------
//-- not-wire-x01
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Select positive or negative logic for the input (0=positive, 1=negative)
//---------------------------------------------------
//---- Top entity
module v3ba5d0 #(
 parameter vc5c8ea = 0
) (
 output v268bfc
);
 localparam p0 = vc5c8ea;
 wire w1;
 assign v268bfc = w1;
 v3ba5d0_v465065 #(
  .VALUE(p0)
 ) v465065 (
  .k(w1)
 );
endmodule

//---------------------------------------------------
//-- Constante-1bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Valor genérico constante, de 1 bits. Su valor se introduce como parámetro. Por defecto vale 0
//---------------------------------------------------

module v3ba5d0_v465065 #(
 parameter VALUE = 0
) (
 output k
);
 assign k = VALUE;
endmodule
//---- Top entity
module vd12401 (
 input v0e28cb,
 input v3ca442,
 output vcbab45
);
 wire w0;
 wire w1;
 wire w2;
 assign w0 = v0e28cb;
 assign w1 = v3ca442;
 assign vcbab45 = w2;
 vd12401_vf4938a vf4938a (
  .a(w0),
  .b(w1),
  .c(w2)
 );
endmodule

//---------------------------------------------------
//-- XOR2
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- XOR gate: two bits input xor gate
//---------------------------------------------------

module vd12401_vf4938a (
 input a,
 input b,
 output c
);
 //-- XOR gate
 //-- Verilog implementation
 
 assign c = a ^ b;
 
endmodule
//---- Top entity
module vdd36dc (
 input v444878,
 input v6a82dd,
 output vd4e5d7
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 wire w5;
 wire w6;
 wire w7;
 assign w2 = v444878;
 assign w3 = v444878;
 assign w4 = v444878;
 assign vd4e5d7 = w5;
 assign w6 = v6a82dd;
 assign w7 = v6a82dd;
 assign w3 = w2;
 assign w4 = w2;
 assign w4 = w3;
 assign w7 = w6;
 v1ed41a vd680b8 (
  .v3487af(w1),
  .ved8395(w4),
  .ve78ab8(w7)
 );
 v8a23ff v02f115 (
  .vd793aa(w0),
  .ve4a668(w2),
  .v4642b6(w5),
  .v27dec4(w6)
 );
 ve8e3e6 vc4d90e (
  .ve37344(w0),
  .ve556f1(w1),
  .v6dda25(w3)
 );
endmodule

//---------------------------------------------------
//-- Debouncer-x01
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Remove the rebound on a mechanical switch
//---------------------------------------------------
//---- Top entity
module v1ed41a (
 input ved8395,
 input ve78ab8,
 output v31351e,
 output v3487af
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 assign w0 = ve78ab8;
 assign w1 = ved8395;
 assign v3487af = w2;
 assign w4 = ve78ab8;
 assign w4 = w0;
 vd12401 v456da5 (
  .vcbab45(w2),
  .v0e28cb(w3),
  .v3ca442(w4)
 );
 v58ed2b vf94974 (
  .vf54559(w0),
  .va4102a(w1),
  .ve8318d(w3)
 );
endmodule

//---------------------------------------------------
//-- Edges-detector-block
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Edges detector. It generates a 1-period pulse (tic) when either a rising edge or a falling edge is detected on the input. Block implementation
//---------------------------------------------------
//---- Top entity
module v8a23ff #(
 parameter v3360b0 = 0
) (
 input ve4a668,
 input v27dec4,
 input vd793aa,
 output v4642b6
);
 localparam p4 = v3360b0;
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 assign w0 = ve4a668;
 assign w1 = v27dec4;
 assign w2 = vd793aa;
 assign v4642b6 = w3;
 v8a23ff_vb79aca #(
  .INI(p4)
 ) vb79aca (
  .clk(w0),
  .d(w1),
  .load(w2),
  .q(w3)
 );
endmodule

//---------------------------------------------------
//-- DFF-verilog
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- DFF. D Flip-flop. Verilog implementation
//---------------------------------------------------

module v8a23ff_vb79aca #(
 parameter INI = 0
) (
 input clk,
 input d,
 input load,
 output q
);
 //-- Initial value
 reg qi = INI;
 
 always @(posedge clk)
 begin
  
  //-- When load is active
  //-- the input data is captured
  if (load == 1'b1)
    qi <= d;
  
 end
 
 //-- Connect the register with the
 //-- output
 assign q = qi;
 
endmodule
//---- Top entity
module ve8e3e6 (
 input v6dda25,
 input ve556f1,
 output [15:0] v49911e,
 output ve37344
);
 wire w0;
 wire [0:15] w1;
 wire [0:15] w2;
 wire w3;
 wire [0:15] w4;
 wire w5;
 assign w0 = ve556f1;
 assign w3 = v6dda25;
 assign v49911e = w4;
 assign ve37344 = w5;
 assign w4 = w1;
 v8ecd59 v9392cd (
  .v2f9d57(w1),
  .vd7988b(w2),
  .v4642b6(w5)
 );
 v0788ea vd23000 (
  .v7bb757(w0),
  .ve56ffc(w1),
  .v76e2d3(w2),
  .v02833d(w3)
 );
endmodule

//---------------------------------------------------
//-- syscounter-rst-16bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- 16-bits Syscounter with reset
//---------------------------------------------------
//---- Top entity
module v8ecd59 #(
 parameter v6c5139 = 1
) (
 input [15:0] v2f9d57,
 output v4642b6,
 output [15:0] vd7988b
);
 localparam p1 = v6c5139;
 wire w0;
 wire [0:15] w2;
 wire [0:15] w3;
 assign v4642b6 = w0;
 assign w2 = v2f9d57;
 assign vd7988b = w3;
 v265696 #(
  .vd73390(p1)
 ) v76123a (
  .v4642b6(w0),
  .v36f2dd(w2),
  .vc068fb(w3)
 );
endmodule

//---------------------------------------------------
//-- Inc1-16bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Inc1-16bit: Increment a 16-bits number by one
//---------------------------------------------------
//---- Top entity
module v265696 #(
 parameter vd73390 = 0
) (
 input [15:0] v36f2dd,
 output v4642b6,
 output [15:0] vc068fb
);
 localparam p1 = vd73390;
 wire w0;
 wire [0:15] w2;
 wire [0:15] w3;
 wire [0:15] w4;
 assign v4642b6 = w0;
 assign w3 = v36f2dd;
 assign vc068fb = w4;
 v651fa3 #(
  .vc5c8ea(p1)
 ) vdd8fa2 (
  .vcd9338(w2)
 );
 vbc66d7 vce7ab7 (
  .v4642b6(w0),
  .v1489e0(w2),
  .v603a9a(w3),
  .v2c4251(w4)
 );
endmodule

//---------------------------------------------------
//-- AdderK-16bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- AdderK-16bit: Adder of 16-bit operand and 16-bit constant
//---------------------------------------------------
//---- Top entity
module v651fa3 #(
 parameter vc5c8ea = 0
) (
 output [15:0] vcd9338
);
 localparam p0 = vc5c8ea;
 wire [0:15] w1;
 assign vcd9338 = w1;
 v651fa3_v465065 #(
  .VALUE(p0)
 ) v465065 (
  .k(w1)
 );
endmodule

//---------------------------------------------------
//-- 16-bits-gen-constant
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Generic: 16-bits generic constant
//---------------------------------------------------

module v651fa3_v465065 #(
 parameter VALUE = 0
) (
 output [15:0] k
);
 assign k = VALUE;
endmodule
//---- Top entity
module vbc66d7 (
 input [15:0] v1489e0,
 input [15:0] v603a9a,
 output v4642b6,
 output [15:0] v2c4251
);
 wire w0;
 wire w1;
 wire [0:15] w2;
 wire [0:15] w3;
 wire [0:15] w4;
 wire [0:7] w5;
 wire [0:7] w6;
 wire [0:7] w7;
 wire [0:7] w8;
 wire [0:7] w9;
 wire [0:7] w10;
 assign v4642b6 = w0;
 assign w2 = v603a9a;
 assign w3 = v1489e0;
 assign v2c4251 = w4;
 v306ca3 v0a29fe (
  .v91b9c1(w2),
  .vef5eee(w9),
  .vd3ef3b(w10)
 );
 v306ca3 vb0a6ce (
  .v91b9c1(w3),
  .vef5eee(w7),
  .vd3ef3b(w8)
 );
 vcb23aa v8e0bba (
  .v4642b6(w1),
  .v62bf25(w6),
  .v39966a(w8),
  .veb2f59(w10)
 );
 vc3c498 v917bbf (
  .v4642b6(w0),
  .vb9cfc3(w1),
  .veeaa8e(w5),
  .v45c6ee(w7),
  .v20212e(w9)
 );
 v8cc49c v03c3e3 (
  .v14a530(w4),
  .vb334ae(w5),
  .v2b8a97(w6)
 );
endmodule

//---------------------------------------------------
//-- Adder-16bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Adder-16bits: Adder of two operands of 16 bits
//---------------------------------------------------
//---- Top entity
module v306ca3 (
 input [15:0] v91b9c1,
 output [7:0] vef5eee,
 output [7:0] vd3ef3b
);
 wire [0:15] w0;
 wire [0:7] w1;
 wire [0:7] w2;
 assign w0 = v91b9c1;
 assign vef5eee = w1;
 assign vd3ef3b = w2;
 v306ca3_v9a2a06 v9a2a06 (
  .i(w0),
  .o1(w1),
  .o0(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus16-Split-half
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus16-Split-half: Split the 16-bits bus into two buses of the same size
//---------------------------------------------------

module v306ca3_v9a2a06 (
 input [15:0] i,
 output [7:0] o1,
 output [7:0] o0
);
 assign o1 = i[15:8];
 assign o0 = i[7:0];
endmodule
//---- Top entity
module vcb23aa (
 input [7:0] v39966a,
 input [7:0] veb2f59,
 output v4642b6,
 output [7:0] v62bf25
);
 wire [0:7] w0;
 wire [0:7] w1;
 wire [0:3] w2;
 wire [0:3] w3;
 wire [0:7] w4;
 wire w5;
 wire w6;
 wire [0:3] w7;
 wire [0:3] w8;
 wire [0:3] w9;
 wire [0:3] w10;
 assign w0 = veb2f59;
 assign w1 = v39966a;
 assign v62bf25 = w4;
 assign v4642b6 = w5;
 v6bdcd9 vd88c66 (
  .vcc8c7c(w0),
  .v651522(w9),
  .v2cc41f(w10)
 );
 v6bdcd9 v26a0bb (
  .vcc8c7c(w1),
  .v651522(w7),
  .v2cc41f(w8)
 );
 v25966b v9ea427 (
  .v817794(w3),
  .v4642b6(w6),
  .v0550b6(w8),
  .v24708e(w10)
 );
 vafb28f vc75346 (
  .v515fe7(w2),
  .v3c88fc(w3),
  .va9ac17(w4)
 );
 va1ce30 v40c17f (
  .v817794(w2),
  .v4642b6(w5),
  .vb9cfc3(w6),
  .v0550b6(w7),
  .v24708e(w9)
 );
endmodule

//---------------------------------------------------
//-- Adder-8bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Adder-8bits: Adder of two operands of 8 bits
//---------------------------------------------------
//---- Top entity
module v6bdcd9 (
 input [7:0] vcc8c7c,
 output [3:0] v651522,
 output [3:0] v2cc41f
);
 wire [0:3] w0;
 wire [0:3] w1;
 wire [0:7] w2;
 assign v651522 = w0;
 assign v2cc41f = w1;
 assign w2 = vcc8c7c;
 v6bdcd9_v9a2a06 v9a2a06 (
  .o1(w0),
  .o0(w1),
  .i(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus8-Split-half
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus8-Split-half: Split the 8-bits bus into two buses of the same size
//---------------------------------------------------

module v6bdcd9_v9a2a06 (
 input [7:0] i,
 output [3:0] o1,
 output [3:0] o0
);
 assign o1 = i[7:4];
 assign o0 = i[3:0];
endmodule
//---- Top entity
module v25966b (
 input [3:0] v0550b6,
 input [3:0] v24708e,
 output v4642b6,
 output [3:0] v817794
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 wire [0:3] w5;
 wire [0:3] w6;
 wire [0:3] w7;
 wire w8;
 wire w9;
 wire w10;
 wire w11;
 wire w12;
 wire w13;
 wire w14;
 wire w15;
 wire w16;
 wire w17;
 wire w18;
 assign w5 = v24708e;
 assign w6 = v0550b6;
 assign v817794 = w7;
 assign v4642b6 = w9;
 v1ea21d vdbe125 (
  .v4642b6(w0),
  .v8e8a67(w2),
  .v27dec4(w15),
  .v82de4f(w18)
 );
 vad119b vb8ad86 (
  .v0ef266(w0),
  .v8e8a67(w1),
  .v4642b6(w3),
  .v27dec4(w14),
  .v82de4f(w17)
 );
 vad119b v5d29b2 (
  .v0ef266(w3),
  .v8e8a67(w4),
  .v4642b6(w8),
  .v27dec4(w12),
  .v82de4f(w16)
 );
 vc4f23a vf4a6ff (
  .v985fcb(w5),
  .v4f1fd3(w13),
  .vda577d(w16),
  .v3f8943(w17),
  .v64d863(w18)
 );
 vc4f23a v9d4632 (
  .v985fcb(w6),
  .v4f1fd3(w11),
  .vda577d(w12),
  .v3f8943(w14),
  .v64d863(w15)
 );
 v84f0a1 v140dbf (
  .vee8a83(w1),
  .v03aaf0(w2),
  .vf8041d(w4),
  .v11bca5(w7),
  .vd84a57(w10)
 );
 vad119b v5c5937 (
  .v0ef266(w8),
  .v4642b6(w9),
  .v8e8a67(w10),
  .v27dec4(w11),
  .v82de4f(w13)
 );
endmodule

//---------------------------------------------------
//-- Adder-4bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Adder-4bits: Adder of two operands of 4 bits
//---------------------------------------------------
//---- Top entity
module v1ea21d (
 input v27dec4,
 input v82de4f,
 output v4642b6,
 output v8e8a67
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 assign w0 = v82de4f;
 assign w1 = v27dec4;
 assign v4642b6 = w3;
 assign v8e8a67 = w4;
 vad119b vb820a1 (
  .v82de4f(w0),
  .v27dec4(w1),
  .v0ef266(w2),
  .v4642b6(w3),
  .v8e8a67(w4)
 );
 vd30ca9 v23ebb6 (
  .v9fb85f(w2)
 );
endmodule

//---------------------------------------------------
//-- Adder-1bit
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Adder-1bit: Adder of two operands of 1 bit
//---------------------------------------------------
//---- Top entity
module vad119b (
 input v27dec4,
 input v82de4f,
 input v0ef266,
 output v4642b6,
 output v8e8a67
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 wire w5;
 wire w6;
 wire w7;
 wire w8;
 wire w9;
 wire w10;
 wire w11;
 assign v8e8a67 = w1;
 assign v4642b6 = w5;
 assign w6 = v27dec4;
 assign w7 = v27dec4;
 assign w8 = v82de4f;
 assign w9 = v82de4f;
 assign w10 = v0ef266;
 assign w11 = v0ef266;
 assign w2 = w0;
 assign w7 = w6;
 assign w9 = w8;
 assign w11 = w10;
 vd12401 v2e3d9f (
  .vcbab45(w0),
  .v0e28cb(w7),
  .v3ca442(w9)
 );
 vd12401 vb50462 (
  .v0e28cb(w0),
  .vcbab45(w1),
  .v3ca442(w11)
 );
 vba518e v4882f4 (
  .v3ca442(w2),
  .vcbab45(w3),
  .v0e28cb(w10)
 );
 vba518e v8fcf41 (
  .vcbab45(w4),
  .v0e28cb(w6),
  .v3ca442(w8)
 );
 v873425 vc5b8b9 (
  .v3ca442(w3),
  .v0e28cb(w4),
  .vcbab45(w5)
 );
endmodule

//---------------------------------------------------
//-- AdderC-1bit
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- AdderC-1bit: Adder of two operands of 1 bit plus the carry in
//---------------------------------------------------
//---- Top entity
module v873425 (
 input v0e28cb,
 input v3ca442,
 output vcbab45
);
 wire w0;
 wire w1;
 wire w2;
 assign w0 = v0e28cb;
 assign w1 = v3ca442;
 assign vcbab45 = w2;
 v873425_vf4938a vf4938a (
  .a(w0),
  .b(w1),
  .c(w2)
 );
endmodule

//---------------------------------------------------
//-- OR2
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- OR2: Two bits input OR gate
//---------------------------------------------------

module v873425_vf4938a (
 input a,
 input b,
 output c
);
 //-- OR Gate
 //-- Verilog implementation
 
 assign c = a | b;
 
 
endmodule
//---- Top entity
module vd30ca9 (
 output v9fb85f
);
 wire w0;
 assign v9fb85f = w0;
 vd30ca9_vb2eccd vb2eccd (
  .q(w0)
 );
endmodule

//---------------------------------------------------
//-- bit-0
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Constant bit 0
//---------------------------------------------------

module vd30ca9_vb2eccd (
 output q
);
 //-- Constant bit-0
 assign q = 1'b0;
 
 
endmodule
//---- Top entity
module vc4f23a (
 input [3:0] v985fcb,
 output v4f1fd3,
 output vda577d,
 output v3f8943,
 output v64d863
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire [0:3] w4;
 assign v3f8943 = w0;
 assign v64d863 = w1;
 assign vda577d = w2;
 assign v4f1fd3 = w3;
 assign w4 = v985fcb;
 vc4f23a_v9a2a06 v9a2a06 (
  .o1(w0),
  .o0(w1),
  .o2(w2),
  .o3(w3),
  .i(w4)
 );
endmodule

//---------------------------------------------------
//-- Bus4-Split-all
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus4-Split-all: Split the 4-bits bus into its wires
//---------------------------------------------------

module vc4f23a_v9a2a06 (
 input [3:0] i,
 output o3,
 output o2,
 output o1,
 output o0
);
 assign o3 = i[3];
 assign o2 = i[2];
 assign o1 = i[1];
 assign o0 = i[0];
endmodule
//---- Top entity
module v84f0a1 (
 input vd84a57,
 input vf8041d,
 input vee8a83,
 input v03aaf0,
 output [3:0] v11bca5
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire [0:3] w4;
 assign w0 = vee8a83;
 assign w1 = v03aaf0;
 assign w2 = vf8041d;
 assign w3 = vd84a57;
 assign v11bca5 = w4;
 v84f0a1_v9a2a06 v9a2a06 (
  .i1(w0),
  .i0(w1),
  .i2(w2),
  .i3(w3),
  .o(w4)
 );
endmodule

//---------------------------------------------------
//-- Bus4-Join-all
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus4-Join-all: Join all the wires into a 4-bits Bus
//---------------------------------------------------

module v84f0a1_v9a2a06 (
 input i3,
 input i2,
 input i1,
 input i0,
 output [3:0] o
);
 assign o = {i3, i2, i1, i0};
 
endmodule
//---- Top entity
module vafb28f (
 input [3:0] v515fe7,
 input [3:0] v3c88fc,
 output [7:0] va9ac17
);
 wire [0:7] w0;
 wire [0:3] w1;
 wire [0:3] w2;
 assign va9ac17 = w0;
 assign w1 = v515fe7;
 assign w2 = v3c88fc;
 vafb28f_v9a2a06 v9a2a06 (
  .o(w0),
  .i1(w1),
  .i0(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus8-Join-half
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus8-Join-half: Join the two same halves into an 8-bits Bus
//---------------------------------------------------

module vafb28f_v9a2a06 (
 input [3:0] i1,
 input [3:0] i0,
 output [7:0] o
);
 assign o = {i1, i0};
 
endmodule
//---- Top entity
module va1ce30 (
 input [3:0] v0550b6,
 input [3:0] v24708e,
 input vb9cfc3,
 output v4642b6,
 output [3:0] v817794
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire w4;
 wire [0:3] w5;
 wire [0:3] w6;
 wire [0:3] w7;
 wire w8;
 wire w9;
 wire w10;
 wire w11;
 wire w12;
 wire w13;
 wire w14;
 wire w15;
 wire w16;
 wire w17;
 wire w18;
 wire w19;
 assign w5 = v24708e;
 assign w6 = v0550b6;
 assign v817794 = w7;
 assign v4642b6 = w9;
 assign w11 = vb9cfc3;
 vad119b vb8ad86 (
  .v0ef266(w0),
  .v8e8a67(w1),
  .v4642b6(w3),
  .v27dec4(w15),
  .v82de4f(w18)
 );
 vad119b v5d29b2 (
  .v0ef266(w3),
  .v8e8a67(w4),
  .v4642b6(w8),
  .v27dec4(w13),
  .v82de4f(w17)
 );
 vc4f23a vf4a6ff (
  .v985fcb(w5),
  .v4f1fd3(w14),
  .vda577d(w17),
  .v3f8943(w18),
  .v64d863(w19)
 );
 vc4f23a v9d4632 (
  .v985fcb(w6),
  .v4f1fd3(w12),
  .vda577d(w13),
  .v3f8943(w15),
  .v64d863(w16)
 );
 v84f0a1 v140dbf (
  .vee8a83(w1),
  .v03aaf0(w2),
  .vf8041d(w4),
  .v11bca5(w7),
  .vd84a57(w10)
 );
 vad119b v5c5937 (
  .v0ef266(w8),
  .v4642b6(w9),
  .v8e8a67(w10),
  .v27dec4(w12),
  .v82de4f(w14)
 );
 vad119b v3599be (
  .v4642b6(w0),
  .v8e8a67(w2),
  .v0ef266(w11),
  .v27dec4(w16),
  .v82de4f(w19)
 );
endmodule

//---------------------------------------------------
//-- AdderC-4bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- AdderC-4bits: Adder of two operands of 4 bits and Carry in
//---------------------------------------------------
//---- Top entity
module vc3c498 (
 input [7:0] v45c6ee,
 input [7:0] v20212e,
 input vb9cfc3,
 output v4642b6,
 output [7:0] veeaa8e
);
 wire w0;
 wire w1;
 wire [0:7] w2;
 wire [0:7] w3;
 wire [0:7] w4;
 wire [0:3] w5;
 wire [0:3] w6;
 wire w7;
 wire [0:3] w8;
 wire [0:3] w9;
 wire [0:3] w10;
 wire [0:3] w11;
 assign w1 = vb9cfc3;
 assign w2 = v45c6ee;
 assign w3 = v20212e;
 assign veeaa8e = w4;
 assign v4642b6 = w7;
 v6bdcd9 v8d795a (
  .vcc8c7c(w3),
  .v651522(w10),
  .v2cc41f(w11)
 );
 v6bdcd9 v23dbc5 (
  .vcc8c7c(w2),
  .v651522(w8),
  .v2cc41f(w9)
 );
 vafb28f vef3a58 (
  .va9ac17(w4),
  .v3c88fc(w5),
  .v515fe7(w6)
 );
 va1ce30 v0ff71a (
  .v4642b6(w0),
  .vb9cfc3(w1),
  .v817794(w5),
  .v0550b6(w9),
  .v24708e(w11)
 );
 va1ce30 v12f94f (
  .vb9cfc3(w0),
  .v817794(w6),
  .v4642b6(w7),
  .v0550b6(w8),
  .v24708e(w10)
 );
endmodule

//---------------------------------------------------
//-- AdderC-8bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- AdderC-8bits: Adder of two operands of 8 bits and Carry in
//---------------------------------------------------
//---- Top entity
module v8cc49c (
 input [7:0] vb334ae,
 input [7:0] v2b8a97,
 output [15:0] v14a530
);
 wire [0:15] w0;
 wire [0:7] w1;
 wire [0:7] w2;
 assign v14a530 = w0;
 assign w1 = v2b8a97;
 assign w2 = vb334ae;
 v8cc49c_v9a2a06 v9a2a06 (
  .o(w0),
  .i0(w1),
  .i1(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus16-Join-half
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus16-Join-half: Join the two same halves into an 16-bits Bus
//---------------------------------------------------

module v8cc49c_v9a2a06 (
 input [7:0] i1,
 input [7:0] i0,
 output [15:0] o
);
 assign o = {i1, i0};
 
endmodule
//---- Top entity
module v0788ea #(
 parameter vdb1a33 = 0
) (
 input v02833d,
 input v7bb757,
 input [15:0] v76e2d3,
 output v24626e,
 output v713f73,
 output [15:0] ve56ffc
);
 localparam p1 = vdb1a33;
 wire [0:15] w0;
 wire w2;
 wire [0:15] w3;
 wire w4;
 assign ve56ffc = w0;
 assign w2 = v7bb757;
 assign w3 = v76e2d3;
 assign w4 = v02833d;
 v0788ea_v22c6dc #(
  .INI(p1)
 ) v22c6dc (
  .q(w0),
  .rst(w2),
  .d(w3),
  .clk(w4)
 );
endmodule

//---------------------------------------------------
//-- 16-Sys-reg-rst
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- 16-Sys-reg-rst: 16 bits system register with reset. Verilog implementation
//---------------------------------------------------

module v0788ea_v22c6dc #(
 parameter INI = 0
) (
 input clk,
 input rst,
 input [15:0] d,
 output [15:0] q
);
 //-- Generic System register
 //-- with reset
 //-- Number of bits
 localparam N = 16;
 
 //-- Initial value
 reg [N-1:0] qi = INI;
 
 always @(posedge clk)
 begin
 
   //-- Reset: Capture the initial
   //-- value
   if (rst == 1'b1)
     qi <= INI;
     
   //-- No reset: Capture the input
   else
     qi <= d;
 end
 
 //-- Connect the register with the
 //-- output
 assign q = qi;
 
endmodule
//---- Top entity
module v0705a6 (
 input v717e81,
 input ve7f5e6,
 output v994965,
 output v3c12b5
);
 wire w0;
 wire w1;
 wire w2;
 assign w0 = v717e81;
 assign w1 = ve7f5e6;
 assign v3c12b5 = w2;
 v0705a6_ve03af9 ve03af9 (
  .clk(w0),
  .d(w1),
  .q(w2)
 );
endmodule

//---------------------------------------------------
//-- Sync-x01-verilog
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Sync-x01: 1-bit input with the system clock domain (Verilog implementation)
//---------------------------------------------------

module v0705a6_ve03af9 (
 input clk,
 input d,
 output q
);
 //-- Two D flip-flops
 //-- connected in cascade
 
 reg q1 = 0;
 reg q2 = 0;
 
 always @(posedge clk) 
 begin
   //-- First D Flip-Flop
   q1 <= d;
   
   //-- Secondo D Flip-flop
   q2 <= q1;
 end
 
 //-- Assign the output
 assign q = q2;
endmodule
//---- Top entity
module v397e22 #(
 parameter vc0bbb5 = 0
) (
 input v6dda25,
 input [31:0] vd6b9df,
 output [31:0] vd8c74e,
 output vd1077b
);
 localparam p1 = vc0bbb5;
 wire [0:31] w0;
 wire [0:31] w2;
 wire w3;
 wire [0:31] w4;
 wire [0:31] w5;
 wire w6;
 wire w7;
 wire [0:31] w8;
 assign w3 = v6dda25;
 assign vd8c74e = w4;
 assign vd1077b = w6;
 assign w8 = vd6b9df;
 assign w2 = w0;
 assign w5 = w4;
 assign w7 = w6;
 v0906c2 v9573bf (
  .v9d71f2(w0),
  .v95222c(w5)
 );
 va63735 va6a503 (
  .v1069e2(w2),
  .v4642b6(w6),
  .vd448df(w8)
 );
 v0a6d3f #(
  .vdb1a33(p1)
 ) v21c267 (
  .v76e2d3(w0),
  .v02833d(w3),
  .ve56ffc(w4),
  .v7bb757(w7)
 );
endmodule

//---------------------------------------------------
//-- Sys-Counter-M-x32
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Sys-Counter-M-x32: 32-bits M module system counter
//---------------------------------------------------
//---- Top entity
module v0906c2 #(
 parameter v6c5139 = 1
) (
 input [31:0] v95222c,
 output v4642b6,
 output [31:0] v9d71f2
);
 localparam p1 = v6c5139;
 wire w0;
 wire [0:31] w2;
 wire [0:31] w3;
 assign v4642b6 = w0;
 assign w2 = v95222c;
 assign v9d71f2 = w3;
 v3c5f22 #(
  .vd73390(p1)
 ) v3ec2b4 (
  .v4642b6(w0),
  .v56e20b(w2),
  .vc89e4a(w3)
 );
endmodule

//---------------------------------------------------
//-- Inc1-32bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Inc1-32bit: Increment a 32-bits number by one
//---------------------------------------------------
//---- Top entity
module v3c5f22 #(
 parameter vd73390 = 0
) (
 input [31:0] v56e20b,
 output v4642b6,
 output [31:0] vc89e4a
);
 localparam p1 = vd73390;
 wire w0;
 wire [0:31] w2;
 wire [0:31] w3;
 wire [0:31] w4;
 assign v4642b6 = w0;
 assign w3 = v56e20b;
 assign vc89e4a = w4;
 v959751 #(
  .vc5c8ea(p1)
 ) v389b9e (
  .vbc97e4(w2)
 );
 vf25742 v14cd53 (
  .v4642b6(w0),
  .v7bf4f3(w2),
  .vc67cc0(w3),
  .vc16efd(w4)
 );
endmodule

//---------------------------------------------------
//-- AdderK-32bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- AdderK-32bit: Adder of 32-bit operand and 32-bit constant
//---------------------------------------------------
//---- Top entity
module vf25742 (
 input [31:0] v7bf4f3,
 input [31:0] vc67cc0,
 output v4642b6,
 output [31:0] vc16efd
);
 wire w0;
 wire [0:7] w1;
 wire [0:7] w2;
 wire w3;
 wire [0:15] w4;
 wire [0:7] w5;
 wire w6;
 wire [0:23] w7;
 wire w8;
 wire [0:31] w9;
 wire [0:23] w10;
 wire [0:15] w11;
 wire [0:31] w12;
 wire [0:23] w13;
 wire [0:15] w14;
 wire [0:7] w15;
 wire [0:31] w16;
 wire [0:7] w17;
 wire [0:7] w18;
 wire [0:7] w19;
 wire [0:7] w20;
 wire [0:7] w21;
 wire [0:7] w22;
 wire [0:7] w23;
 wire [0:7] w24;
 assign v4642b6 = w8;
 assign w9 = vc67cc0;
 assign w12 = v7bf4f3;
 assign vc16efd = w16;
 vcb23aa v8e0bba (
  .v4642b6(w0),
  .v62bf25(w2),
  .v39966a(w21),
  .veb2f59(w24)
 );
 vc3c498 v917bbf (
  .vb9cfc3(w0),
  .veeaa8e(w1),
  .v4642b6(w3),
  .v45c6ee(w20),
  .v20212e(w23)
 );
 v8cc49c v03c3e3 (
  .vb334ae(w1),
  .v2b8a97(w2),
  .v14a530(w4)
 );
 vc3c498 vf0db78 (
  .vb9cfc3(w3),
  .veeaa8e(w5),
  .v4642b6(w6),
  .v45c6ee(w18),
  .v20212e(w22)
 );
 va52e3b v67022b (
  .vbf8961(w4),
  .vf7d213(w5),
  .v6d326e(w7)
 );
 vdf0f3f v2bc38d (
  .ve841af(w9),
  .v6eb35c(w10),
  .vc6471a(w24)
 );
 vab13f0 v750bb9 (
  .vb18564(w10),
  .vf0a06e(w11),
  .v5246f6(w23)
 );
 v306ca3 vb8499e (
  .v91b9c1(w11),
  .vef5eee(w19),
  .vd3ef3b(w22)
 );
 vdf0f3f vec80d3 (
  .ve841af(w12),
  .v6eb35c(w13),
  .vc6471a(w21)
 );
 vab13f0 v0d470e (
  .vb18564(w13),
  .vf0a06e(w14),
  .v5246f6(w20)
 );
 v306ca3 vd19231 (
  .v91b9c1(w14),
  .vef5eee(w17),
  .vd3ef3b(w18)
 );
 vc3c498 v2c17f7 (
  .vb9cfc3(w6),
  .v4642b6(w8),
  .veeaa8e(w15),
  .v45c6ee(w17),
  .v20212e(w19)
 );
 vab06af v6d700b (
  .v7df8bd(w7),
  .vea9d11(w15),
  .v7d0a31(w16)
 );
endmodule

//---------------------------------------------------
//-- Adder-32bits
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Adder-32bits: Adder of two operands of 32 bits
//---------------------------------------------------
//---- Top entity
module va52e3b (
 input [7:0] vf7d213,
 input [15:0] vbf8961,
 output [23:0] v6d326e
);
 wire [0:15] w0;
 wire [0:23] w1;
 wire [0:7] w2;
 assign w0 = vbf8961;
 assign v6d326e = w1;
 assign w2 = vf7d213;
 va52e3b_v9a2a06 v9a2a06 (
  .i0(w0),
  .o(w1),
  .i1(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus24-Join-8-16 CLONE
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus24-Join-8-16: Join the two buses into an 24-bits Bus
//---------------------------------------------------

module va52e3b_v9a2a06 (
 input [7:0] i1,
 input [15:0] i0,
 output [23:0] o
);
 assign o = {i1, i0};
 
endmodule
//---- Top entity
module vdf0f3f (
 input [31:0] ve841af,
 output [23:0] v6eb35c,
 output [7:0] vc6471a
);
 wire [0:31] w0;
 wire [0:7] w1;
 wire [0:23] w2;
 assign w0 = ve841af;
 assign vc6471a = w1;
 assign v6eb35c = w2;
 vdf0f3f_v9a2a06 v9a2a06 (
  .i(w0),
  .o0(w1),
  .o1(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus32-Split-8-24 CLONE
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus32-Split-8-24: Split the 28-bits bus into two buses of 8 and 24 wires
//---------------------------------------------------

module vdf0f3f_v9a2a06 (
 input [31:0] i,
 output [23:0] o1,
 output [7:0] o0
);
 assign o1 = i[31:8];
 assign o0 = i[7:0];
endmodule
//---- Top entity
module vab13f0 (
 input [23:0] vb18564,
 output [15:0] vf0a06e,
 output [7:0] v5246f6
);
 wire [0:23] w0;
 wire [0:15] w1;
 wire [0:7] w2;
 assign w0 = vb18564;
 assign vf0a06e = w1;
 assign v5246f6 = w2;
 vab13f0_v9a2a06 v9a2a06 (
  .i(w0),
  .o1(w1),
  .o0(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus24-Split-16-8
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus24-Split-16-8: Split the 24-bits bus into two buses of 16 and 8 wires
//---------------------------------------------------

module vab13f0_v9a2a06 (
 input [23:0] i,
 output [15:0] o1,
 output [7:0] o0
);
 assign o1 = i[23:8];
 assign o0 = i[7:0];
endmodule
//---- Top entity
module vab06af (
 input [7:0] vea9d11,
 input [23:0] v7df8bd,
 output [31:0] v7d0a31
);
 wire [0:23] w0;
 wire [0:31] w1;
 wire [0:7] w2;
 assign w0 = v7df8bd;
 assign v7d0a31 = w1;
 assign w2 = vea9d11;
 vab06af_v9a2a06 v9a2a06 (
  .i0(w0),
  .o(w1),
  .i1(w2)
 );
endmodule

//---------------------------------------------------
//-- Bus32-Join-8-24
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Bus32-Join-8-24: Join the two buses into an 32-bits Bus
//---------------------------------------------------

module vab06af_v9a2a06 (
 input [7:0] i1,
 input [23:0] i0,
 output [31:0] o
);
 assign o = {i1, i0};
 
endmodule
//---- Top entity
module va63735 (
 input [31:0] v1069e2,
 input [31:0] vd448df,
 output v4642b6
);
 wire [0:31] w0;
 wire [0:31] w1;
 wire w2;
 assign w0 = v1069e2;
 assign w1 = vd448df;
 assign v4642b6 = w2;
 va63735_v7d150e v7d150e (
  .a(w0),
  .b(w1),
  .ge(w2)
 );
endmodule

//---------------------------------------------------
//-- Geu-32-Bits_v
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Geu-32-Bits_v: 32-bit Unsigned Greather than or equal comparator. Verilog implementation
//---------------------------------------------------

module va63735_v7d150e (
 input [31:0] a,
 input [31:0] b,
 output ge
);
 assign ge = (a >= b);
endmodule
//---- Top entity
module v0a6d3f #(
 parameter vdb1a33 = 0
) (
 input v02833d,
 input v7bb757,
 input [31:0] v76e2d3,
 output v24626e,
 output v713f73,
 output [31:0] ve56ffc
);
 localparam p1 = vdb1a33;
 wire [0:31] w0;
 wire w2;
 wire [0:31] w3;
 wire w4;
 assign ve56ffc = w0;
 assign w2 = v7bb757;
 assign w3 = v76e2d3;
 assign w4 = v02833d;
 v0a6d3f_v22c6dc #(
  .INI(p1)
 ) v22c6dc (
  .q(w0),
  .rst(w2),
  .d(w3),
  .clk(w4)
 );
endmodule

//---------------------------------------------------
//-- 32-Sys-reg-rst
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- 32-Sys-reg-rst: 32 bits system register with reset. Verilog implementation
//---------------------------------------------------

module v0a6d3f_v22c6dc #(
 parameter INI = 0
) (
 input clk,
 input rst,
 input [31:0] d,
 output [31:0] q
);
 //-- Generic System register
 //-- with reset
 //-- Number of bits
 localparam N = 32;
 
 //-- Initial value
 reg [N-1:0] qi = INI;
 
 always @(posedge clk)
 begin
 
   //-- Reset: Capture the initial
   //-- value
   if (rst == 1'b1)
     qi <= INI;
     
   //-- No reset: Capture the input
   else
     qi <= d;
 end
 
 //-- Connect the register with the
 //-- output
 assign q = qi;
 
endmodule
