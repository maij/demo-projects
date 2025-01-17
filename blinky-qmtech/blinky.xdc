#set_property PACKAGE_PIN F22 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
#
#set_property PACKAGE_PIN E25 [get_ports led]
#set_property IOSTANDARD LVCMOS33 [get_ports {led}]
#
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]


set_property IOSTANDARD LVCMOS33 [get_ports {led_1}]
set_property PACKAGE_PIN B14 [get_ports {led_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_2}]
set_property PACKAGE_PIN C14 [get_ports {led_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_3}]
set_property PACKAGE_PIN E25 [get_ports {led_3}]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS18 [get_ports sys_rst_n]
set_property PACKAGE_PIN F22 [get_ports sys_clk]
set_property PACKAGE_PIN AB26 [get_ports sys_rst_n]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
