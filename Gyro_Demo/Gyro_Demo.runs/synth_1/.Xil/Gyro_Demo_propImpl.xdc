set_property SRC_FILE_INFO {cfile:C:/summer_school/SEA-master/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_Verilog/Gyro_Demo/Gyro_Demo.srcs/constrs_1/new/system.xdc rfile:../../../Gyro_Demo.srcs/constrs_1/new/system.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports UART0_Rx];
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports UART0_Tx];
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P12 IOSTANDARD LVCMOS33} [get_ports Gyro_IIC_SCL];
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P13 IOSTANDARD LVCMOS33} [get_ports Gyro_IIC_SDA];
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports VCC];
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports GND];
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C3  IOSTANDARD LVCMOS33} [get_ports IIC_OE];#N4
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M4 IOSTANDARD LVCMOS33} [get_ports VCCEN];#L13
