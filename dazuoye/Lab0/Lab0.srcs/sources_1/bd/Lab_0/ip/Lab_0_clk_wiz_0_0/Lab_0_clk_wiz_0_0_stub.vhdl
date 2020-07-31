-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 14:41:20 2020
-- Host        : DESKTOP-I313GSH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/summer_school/dazuoye/Lab0/Lab0.srcs/sources_1/bd/Lab_0/ip/Lab_0_clk_wiz_0_0/Lab_0_clk_wiz_0_0_stub.vhdl
-- Design      : Lab_0_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab_0_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Lab_0_clk_wiz_0_0;

architecture stub of Lab_0_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,locked,clk_in1";
begin
end;
