////////////////////////////////////////////

module hdmi_top(

      ///////// FPGA /////////
      input              sys_clk,

      ///////// HDMI /////////
      inout              HDMI_I2C_SCL,
      inout              HDMI_I2C_SDA,
      inout              HDMI_I2S,
      inout              HDMI_LRCLK,
      inout              HDMI_MCLK,
      inout              HDMI_SCLK,
      output             HDMI_TX_CLK,
      output      [23:0] HDMI_TX_D,
      output             HDMI_TX_DE,
      output             HDMI_TX_HS,
      input              HDMI_TX_INT,
      output             HDMI_TX_VS,

      ///////// KEY /////////
      input       [1:0]  KEY,

      ///////// LED /////////
      output      [1:0]  LED
);

//=======================================================
//  REG/WIRE declarations
//=======================================================
wire				reset_n;
wire 			    AUD_CTRL_CLK;
//Video Pattern Generator
wire				vpg_pclk;
wire				vpg_de, vpg_hs, vpg_vs;
wire	[23:0]	    vpg_data;
wire    CLK_6M14HZ;
//=======================================================
//  Structural coding
//=======================================================
clk_wiz_1 clk_wiz_1_inst
 (
  // Clock out ports
  .clk_out1(CLK_6M14HZ),
  // Status and control signals
  .resetn(KEY[0]),
  .locked(),
 // Clock in ports
  .clk_in1(sys_clk)
 );

Divider Divider_inst(
    .clk(CLK_6M14HZ),
    .rst_n(KEY[0]),
    .clk_div(AUD_CTRL_CLK)
);

//pattern generator
vpg u_vpg (
	.clk_50(sys_clk),
	.reset_n(KEY[0]),
	.vpg_pclk(HDMI_TX_CLK),
	.vpg_de(HDMI_TX_DE),
	.vpg_hs(HDMI_TX_HS),
	.vpg_vs(HDMI_TX_VS),
	.vpg_r(HDMI_TX_D[23:16]),
	.vpg_g(HDMI_TX_D[15:8]),
	.vpg_b(HDMI_TX_D[7:0]) );

//HDMI I2C
I2C_HDMI_Config u_I2C_HDMI_Config (
	.iCLK(sys_clk),
	.iRST_N(KEY[0]),
	.I2C_SCLK(HDMI_I2C_SCL),
	.I2C_SDAT(HDMI_I2C_SDA),
	.HDMI_TX_INT(HDMI_TX_INT)
	 );

	//Audio
AUDIO_IF u_AVG(
	.clk(AUD_CTRL_CLK),
	.reset_n(KEY[0]),
	.sclk(HDMI_SCLK),
	.lrclk(HDMI_LRCLK),
	.i2s(HDMI_I2S)
);

endmodule
