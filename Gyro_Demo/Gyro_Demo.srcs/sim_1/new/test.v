`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 15:24:41
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test();
    reg clk_100MHz=0;
    reg UART0_Rx=0;
    wire Gyro_IIC_SDA; //数据线，双向数据端口
    wire Gyro_IIC_SCL; //时钟线,时钟是100KHz
    wire UART0_Tx;
    wire IIC_OE;
    wire VCCEN;
    wire VCC;
    wire GND;
    
    reg Rst = 0;
    
    reg Gyro_IIC_SDA_I;
    wire Gyro_IIC_SDA_O;
    wire Gyro_IIC_SDA_T;
    
    initial
    begin
        clk_100MHz = 0;
        UART0_Rx = 1'b1;
    end
    
    Gyro_Demo test(
    .clk_100MHz(clk_100MHz),
    .UART0_Rx(UART0_Rx),
    .Gyro_IIC_SDA(Gyro_IIC_SDA),
    .Gyro_IIC_SCL(Gyro_IIC_SCL),
    .VCC(VCC),
    .GND(GND),
    .IIC_OE(IIC_OE),
    .VCCEN(VCCEN)
    );
    
    always #10 clk_100MHz =~ clk_100MHz;
    always #100 UART0_Rx =~ UART0_Rx;
    
endmodule