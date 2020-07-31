set_property SRC_FILE_INFO {cfile:C:/summer_school/dazuoye/Lab0/Lab0.srcs/constrs_1/new/system.xdc rfile:../../../Lab0.srcs/constrs_1/new/system.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports uart_rtl_0_rxd];
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports uart_rtl_0_txd];
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P12 IOSTANDARD LVCMOS33} [get_ports iic_rtl_0_scl_io];
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P13 IOSTANDARD LVCMOS33} [get_ports iic_rtl_0_sda_io];
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C3  IOSTANDARD LVCMOS33 } [get_ports { reset_rtl_0 }]; #IO_L13P_T2_MRCC_35 Sch
