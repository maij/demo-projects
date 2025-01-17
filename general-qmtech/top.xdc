# Bitstream options
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

### Pins ###
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN F22 [get_ports sys_clk]

### LEDs on FPGA board ###
# set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_DONE}]
# set_property PACKAGE_PIN J7 [get_ports {FPGA_DONE}]
# Unpopulated LEDs on FPGA board
#set_property IOSTANDARD LVCMOS33 [get_ports {LED2}]
#set_property PACKAGE_PIN R26 [get_ports {LED2}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED3}]
#set_property PACKAGE_PIN P26	 [get_ports {LED3}]


### Tactile switches on FPGA board ###
# set_property IOSTANDARD LVCMOS18 [get_ports SW1]
# set_property PACKAGE_PIN P6 [get_ports SW1] # "Program B"
set_property IOSTANDARD LVCMOS18 [get_ports SW2]
set_property PACKAGE_PIN AB26 [get_ports SW2]
set_property IOSTANDARD LVCMOS18 [get_ports SW3]
set_property PACKAGE_PIN AC26 [get_ports SW3]

# LEDs on daughterboard
set_property IOSTANDARD LVCMOS33 [get_ports {led_3}]
set_property PACKAGE_PIN B14 [get_ports {led_3}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_4}]
set_property PACKAGE_PIN C14 [get_ports {led_4}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_5}]
set_property PACKAGE_PIN E25 [get_ports {led_5}]


# Tactile switches on daughterboard
set_property IOSTANDARD LVCMOS18 [get_ports key3]
set_property PACKAGE_PIN AD18 [get_ports key3]
set_property IOSTANDARD LVCMOS18 [get_ports key4]
set_property PACKAGE_PIN AF19 [get_ports key4]
set_property IOSTANDARD LVCMOS18 [get_ports key5]
set_property PACKAGE_PIN AF20 [get_ports key5]

# Slide switches on daughterboard
set_property IOSTANDARD LVCMOS18 [get_ports {switch[7]}]
set_property PACKAGE_PIN AB25 [get_ports {switch[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {switch[6]}]
set_property PACKAGE_PIN AA25 [get_ports {switch[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {switch[5]}]
set_property PACKAGE_PIN AC24 [get_ports {switch[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {switch[4]}]
set_property PACKAGE_PIN AC23 [get_ports {switch[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {switch[3]}]
set_property PACKAGE_PIN AA24 [get_ports {switch[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {switch[2]}]
set_property PACKAGE_PIN Y23 [get_ports {switch[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {switch[1]}]
set_property PACKAGE_PIN AA22 [get_ports {switch[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {switch[0]}]
set_property PACKAGE_PIN Y22 [get_ports {switch[0]}]

# Level shifter IO 1.8V/3.3 or 5V on daughterboard
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[0]}]
set_property PACKAGE_PIN AE22 [get_ports {IO_A[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[1]}]
set_property PACKAGE_PIN AF22 [get_ports {IO_A[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[2]}]
set_property PACKAGE_PIN AE23 [get_ports {IO_A[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[3]}]
set_property PACKAGE_PIN AF23 [get_ports {IO_A[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[4]}]
set_property PACKAGE_PIN AF24 [get_ports {IO_A[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[5]}]
set_property PACKAGE_PIN AF25 [get_ports {IO_A[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[6]}]
set_property PACKAGE_PIN AD26 [get_ports {IO_A[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IO_A[7]}]
set_property PACKAGE_PIN AE26 [get_ports {IO_A[7]}]

# Audio jack
set_property IOSTANDARD LVCMOS18 [get_ports {AUDIO_L}]
set_property PACKAGE_PIN A8 [get_ports {AUDIO_L}]
set_property IOSTANDARD LVCMOS18 [get_ports {AUDIO_R}]
set_property PACKAGE_PIN A9 [get_ports {AUDIO_R}]

# VGA
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_HS}]
set_property PACKAGE_PIN C12 [get_ports {VGA_HS}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_VS}]
set_property PACKAGE_PIN C11 [get_ports {VGA_VS}]

set_property IOSTANDARD LVCMOS18 [get_ports {VGA_R[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_R[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_R[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_R[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_R[0]}]
set_property PACKAGE_PIN B19 [get_ports {VGA_R[4]}]
set_property PACKAGE_PIN A18 [get_ports {VGA_R[3]}]
set_property PACKAGE_PIN A20 [get_ports {VGA_R[2]}]
set_property PACKAGE_PIN C19 [get_ports {VGA_R[1]}]
set_property PACKAGE_PIN B20 [get_ports {VGA_R[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {VGA_G[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_G[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_G[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_G[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_G[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_G[0]}]
set_property PACKAGE_PIN D18 [get_ports {VGA_G[5]}]
set_property PACKAGE_PIN C13 [get_ports {VGA_G[4]}]
set_property PACKAGE_PIN C18 [get_ports {VGA_G[3]}]
set_property PACKAGE_PIN E18 [get_ports {VGA_G[2]}]
set_property PACKAGE_PIN C17 [get_ports {VGA_G[1]}]
set_property PACKAGE_PIN A19 [get_ports {VGA_G[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {VGA_B[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_B[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_B[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_B[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {VGA_B[0]}]
set_property PACKAGE_PIN A13 [get_ports {VGA_B[4]}]
set_property PACKAGE_PIN A12 [get_ports {VGA_B[3]}]
set_property PACKAGE_PIN D14 [get_ports {VGA_B[2]}]
set_property PACKAGE_PIN D13 [get_ports {VGA_B[1]}]
set_property PACKAGE_PIN A14 [get_ports {VGA_B[0]}]

# HDMI
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_I2C_SCL]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_I2C_SDA]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_TX_INT]
set_property PACKAGE_PIN AF7 [get_ports HDMI_I2C_SCL]
set_property PACKAGE_PIN AC8 [get_ports HDMI_I2C_SDA]
set_property PACKAGE_PIN AE7 [get_ports HDMI_TX_INT]

set_property IOSTANDARD LVCMOS18 [get_ports HDMI_I2S]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_LRCLK]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_MCLK]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_SCLK]
set_property PACKAGE_PIN AE18 [get_ports HDMI_I2S]
set_property PACKAGE_PIN AC18 [get_ports HDMI_LRCLK]
set_property PACKAGE_PIN AC16 [get_ports HDMI_MCLK]
set_property PACKAGE_PIN AF18 [get_ports HDMI_SCLK]

set_property IOSTANDARD LVCMOS18 [get_ports HDMI_TX_CLK]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_TX_DE]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_TX_HS]
set_property IOSTANDARD LVCMOS18 [get_ports HDMI_TX_VS]
set_property PACKAGE_PIN AC13 [get_ports HDMI_TX_CLK]
set_property PACKAGE_PIN AE17 [get_ports HDMI_TX_DE]
set_property PACKAGE_PIN AF17 [get_ports HDMI_TX_HS]
set_property PACKAGE_PIN AB16 [get_ports HDMI_TX_VS]

set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[23]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[22]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[21]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[20]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[19]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[18]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[17]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[16]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_TX_D[0]}]
set_property PACKAGE_PIN AD8  [get_ports {HDMI_TX_D[23]}]
set_property PACKAGE_PIN AE8  [get_ports {HDMI_TX_D[22]}]
set_property PACKAGE_PIN AF8  [get_ports {HDMI_TX_D[21]}]
set_property PACKAGE_PIN AC9  [get_ports {HDMI_TX_D[20]}]
set_property PACKAGE_PIN AD9  [get_ports {HDMI_TX_D[19]}]
set_property PACKAGE_PIN AF10 [get_ports {HDMI_TX_D[18]}]
set_property PACKAGE_PIN AF9  [get_ports {HDMI_TX_D[17]}]
set_property PACKAGE_PIN AD10 [get_ports {HDMI_TX_D[16]}]
set_property PACKAGE_PIN AE10 [get_ports {HDMI_TX_D[15]}]
set_property PACKAGE_PIN AE12 [get_ports {HDMI_TX_D[14]}]
set_property PACKAGE_PIN AF12 [get_ports {HDMI_TX_D[13]}]
set_property PACKAGE_PIN AB11 [get_ports {HDMI_TX_D[12]}]
set_property PACKAGE_PIN AC11 [get_ports {HDMI_TX_D[11]}]
set_property PACKAGE_PIN AE13 [get_ports {HDMI_TX_D[10]}]
set_property PACKAGE_PIN AF13 [get_ports {HDMI_TX_D[9]}]
set_property PACKAGE_PIN AD13 [get_ports {HDMI_TX_D[8]}]
set_property PACKAGE_PIN AF14 [get_ports {HDMI_TX_D[7]}]
set_property PACKAGE_PIN AF15 [get_ports {HDMI_TX_D[6]}]
set_property PACKAGE_PIN AC14 [get_ports {HDMI_TX_D[5]}]
set_property PACKAGE_PIN AD14 [get_ports {HDMI_TX_D[4]}]
set_property PACKAGE_PIN AD15 [get_ports {HDMI_TX_D[3]}]
set_property PACKAGE_PIN AE15 [get_ports {HDMI_TX_D[2]}]
set_property PACKAGE_PIN AD16 [get_ports {HDMI_TX_D[1]}]
set_property PACKAGE_PIN AE16 [get_ports {HDMI_TX_D[0]}]

set_property PULLUP true [get_ports HDMI_I2C_SCL]
set_property PULLUP true [get_ports HDMI_I2C_SDA]
set_property PULLUP true [get_ports HDMI_TX_INT]

# MicroSD
set_property IOSTANDARD LVCMOS33 [get_ports SD_clk]
set_property IOSTANDARD LVCMOS33 [get_ports SD_cs]
set_property IOSTANDARD LVCMOS33 [get_ports SD_datain]
set_property IOSTANDARD LVCMOS33 [get_ports SD_dataout]
set_property PACKAGE_PIN E26 [get_ports SD_cs]
set_property PACKAGE_PIN F25 [get_ports SD_datain]
set_property PACKAGE_PIN B26 [get_ports SD_clk]
set_property PACKAGE_PIN B25 [get_ports SD_dataout]

# PMOD
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[7]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[6]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[5]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[3]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[3]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[2]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[1]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD1[0]]
set_property PACKAGE_PIN D23 [get_ports PMOD1[7]]
set_property PACKAGE_PIN E21 [get_ports PMOD1[6]]
set_property PACKAGE_PIN A23 [get_ports PMOD1[5]]
set_property PACKAGE_PIN D19 [get_ports PMOD1[4]]
set_property PACKAGE_PIN D24 [get_ports PMOD1[3]]
set_property PACKAGE_PIN E22 [get_ports PMOD1[2]]
set_property PACKAGE_PIN A24 [get_ports PMOD1[1]]
set_property PACKAGE_PIN D20 [get_ports PMOD1[0]]

set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[7]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[6]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[5]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[3]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[3]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[2]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[1]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD2[0]]
set_property PACKAGE_PIN B17 [get_ports PMOD2[7]]
set_property PACKAGE_PIN C16 [get_ports PMOD2[6]]
set_property PACKAGE_PIN D15 [get_ports PMOD2[5]]
set_property PACKAGE_PIN B15 [get_ports PMOD2[4]]
set_property PACKAGE_PIN A17 [get_ports PMOD2[3]]
set_property PACKAGE_PIN B16 [get_ports PMOD2[2]]
set_property PACKAGE_PIN D16 [get_ports PMOD2[1]]
set_property PACKAGE_PIN A15 [get_ports PMOD2[0]]

set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[7]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[6]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[5]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[3]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[3]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[2]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[1]]
set_property IOSTANDARD LVCMOS33 [get_ports PMOD3[0]]
set_property PACKAGE_PIN B12 [get_ports PMOD3[7]]
set_property PACKAGE_PIN E10 [get_ports PMOD3[6]]
set_property PACKAGE_PIN B10 [get_ports PMOD3[5]]
set_property PACKAGE_PIN  C9 [get_ports PMOD3[4]]
set_property PACKAGE_PIN B11 [get_ports PMOD2[3]]
set_property PACKAGE_PIN D10 [get_ports PMOD3[2]]
set_property PACKAGE_PIN A10 [get_ports PMOD3[1]]
set_property PACKAGE_PIN  B9 [get_ports PMOD3[0]]

# Flash memory
# TODO: Figure out what constraints actually apply to these pins -- likely not standard logic interface.
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_CCLK]
set_property PACKAGE_PIN C8 [get_ports FPGA_CCLK]

set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DQ[3]]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DQ[2]]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DQ[1]]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DQ[0]]
set_property PACKAGE_PIN A22 [get_ports FPGA_DQ[3]]
set_property PACKAGE_PIN B22 [get_ports FPGA_DQ[2]]
set_property PACKAGE_PIN A25 [get_ports FPGA_DQ[1]]
set_property PACKAGE_PIN B24 [get_ports FPGA_DQ[0]]

set_property IOSTANDARD LVCMOS33 [get_ports FPGA_CSO_B]
set_property PACKAGE_PIN C23 [get_ports FPGA_CSO_B]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_CSO_B]
set_property PACKAGE_PIN C23 [get_ports FPGA_CSO_B]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_CSO_B]
set_property PACKAGE_PIN C23 [get_ports FPGA_CSO_B]

# JTAG
# TODO: Figure out what constraints actually apply to these pins -- likely not standard logic interface.
set_property IOSTANDARD LVCMOS33 [get_ports JTAG_TMS]
set_property IOSTANDARD LVCMOS33 [get_ports JTAG_TCK]
set_property IOSTANDARD LVCMOS33 [get_ports JTAG_TDI]
set_property IOSTANDARD LVCMOS33 [get_ports JTAG_TDO]
set_property PACKAGE_PIN N8 [get_ports JTAG_TMS]
set_property PACKAGE_PIN L8 [get_ports JTAG_TCK]
set_property PACKAGE_PIN R7 [get_ports JTAG_TDI]
set_property PACKAGE_PIN R6 [get_ports JTAG_TDO]

#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]

