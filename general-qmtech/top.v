`timescale 1ns / 1ps
module top(
    input sys_clk,
    input SW2,
    input SW3,
    //input [7:0] switch,
    input key3,
    input key4,
    input key5,
    output led_3,
    output led_4,
    output led_5,
    
    inout HDMI_I2C_SCL,
    inout HDMI_I2C_SDA,
    inout HDMI_I2S,
    inout HDMI_LRCLK,
    inout HDMI_MCLK,
    inout HDMI_SCLK,
    output HDMI_TX_CLK,
    output [23:0] HDMI_TX_D,
    output HDMI_TX_DE,
    output HDMI_TX_HS,
    input HDMI_TX_INT,
    output HDMI_TX_VS,
);

assign sys_rst_n = SW2;
parameter DLY_CNT = 32'd100000000;

reg r_led;
reg [31:0] count;

//counter control
always@(posedge sys_clk or negedge sys_rst_n)
begin
    if (!sys_rst_n)
        count <= 0;
    else begin
    	count <= count + 1;
    	if (count == DLY_CNT)
            count <= 0;
    end
end

//led output register control
always@(posedge sys_clk or negedge sys_rst_n)
begin
	if (!sys_rst_n)
        r_led <= 1'b0;
    else if (count == 0)
        r_led <= !r_led;
end

assign led_3 = r_led;
assign led_4 = key3;
//assign led_5 = switch[2];


hdmi_top u_hdmi(
      .sys_clk(sys_clk),
      .HDMI_I2C_SCL(HDMI_I2C_SCL),
      .HDMI_I2C_SDA(HDMI_I2C_SDA),
      .HDMI_I2S(HDMI_I2S),
      .HDMI_LRCLK(HDMI_LRCLK),
      .HDMI_MCLK(HDMI_MCLK),
      .HDMI_SCLK(HDMI_SCLK),
      .HDMI_TX_CLK(HDMI_TX_CLK),
      .HDMI_TX_D(HDMI_TX_D),
      .HDMI_TX_DE(HDMI_TX_DE),
      .HDMI_TX_HS(HDMI_TX_HS),
      .HDMI_TX_INT(HDMI_TX_INT),
      .HDMI_TX_VS(HDMI_TX_VS),
      .KEY({key5, key4}),
);

endmodule
