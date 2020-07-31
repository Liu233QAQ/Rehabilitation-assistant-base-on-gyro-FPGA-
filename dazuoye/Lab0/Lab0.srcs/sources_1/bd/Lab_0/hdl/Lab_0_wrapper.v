//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Jul 27 14:38:27 2020
//Host        : DESKTOP-I313GSH running 64-bit major release  (build 9200)
//Command     : generate_target Lab_0_wrapper.bd
//Design      : Lab_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Lab_0_wrapper
   (clk_100MHz,
    iic_rtl_0_scl_io,
    iic_rtl_0_sda_io,
    reset_rtl_0,
    uart_rtl_0_rxd,
    uart_rtl_0_txd);
  input clk_100MHz;
  inout iic_rtl_0_scl_io;
  inout iic_rtl_0_sda_io;
  input reset_rtl_0;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;

  wire clk_100MHz;
  wire iic_rtl_0_scl_i;
  wire iic_rtl_0_scl_io;
  wire iic_rtl_0_scl_o;
  wire iic_rtl_0_scl_t;
  wire iic_rtl_0_sda_i;
  wire iic_rtl_0_sda_io;
  wire iic_rtl_0_sda_o;
  wire iic_rtl_0_sda_t;
  wire reset_rtl_0;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;

  Lab_0 Lab_0_i
       (.clk_100MHz(clk_100MHz),
        .iic_rtl_0_scl_i(iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o(iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t(iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i(iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o(iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t(iic_rtl_0_sda_t),
        .reset_rtl_0(reset_rtl_0),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd));
  IOBUF iic_rtl_0_scl_iobuf
       (.I(iic_rtl_0_scl_o),
        .IO(iic_rtl_0_scl_io),
        .O(iic_rtl_0_scl_i),
        .T(iic_rtl_0_scl_t));
  IOBUF iic_rtl_0_sda_iobuf
       (.I(iic_rtl_0_sda_o),
        .IO(iic_rtl_0_sda_io),
        .O(iic_rtl_0_sda_i),
        .T(iic_rtl_0_sda_t));
endmodule
