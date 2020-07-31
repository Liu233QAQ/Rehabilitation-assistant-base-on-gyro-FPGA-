set_property SRC_FILE_INFO {cfile:c:/summer_school/dazuoye/Lab0/Lab0.srcs/sources_1/bd/Lab_0/ip/Lab_0_clk_wiz_0_0/Lab_0_clk_wiz_0_0.xdc rfile:../../../Lab0.srcs/sources_1/bd/Lab_0/ip/Lab_0_clk_wiz_0_0/Lab_0_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
