/////////////////////////////////////////////////////

module vpg(
	clk_50,
	reset_n,
	vpg_pclk,
	vpg_de,
	vpg_hs,
	vpg_vs,
	vpg_r,
	vpg_g,
	vpg_b
);

input				clk_50;
input				reset_n;
output				vpg_pclk;
output				vpg_de;
output				vpg_hs;
output				vpg_vs;
output	[7:0]		vpg_r;
output	[7:0]		vpg_g;
output	[7:0]		vpg_b;

//=============== pattern generator according to vga timing
vga_generator u_vga_generator (                                    
	.clk(vpg_pclk),                
	.reset_n(reset_n),                                                
	.vga_hs(vpg_hs),
	.vga_vs(vpg_vs),           
	.vga_de(vpg_de),
	.vga_r(vpg_r),
	.vga_g(vpg_g),
	.vga_b(vpg_b) );

clk_wiz_0 clk_wiz_0_inst
 (
  // Clock out ports
  .clk_out1(vpg_pclk),
  // Status and control signals
  .resetn(reset_n),
  .locked(),
 // Clock in ports
  .clk_in1(clk_50)
 );

endmodule