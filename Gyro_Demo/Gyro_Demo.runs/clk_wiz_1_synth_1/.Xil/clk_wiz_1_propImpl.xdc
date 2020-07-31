set_property SRC_FILE_INFO {cfile:c:/summer_school/SEA-master/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_Verilog/Gyro_Demo/Gyro_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc rfile:../../../Gyro_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
