`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/27 09:45:06
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
    reg clk;
    reg en;
    reg rst_n;
    wire led_green;
    wire [3:0]cnt;
    
    counter test(
    .clk(clk),
    .rst_n(rst_n),
    .en(en),
    .led_green(led_green),
    .cnt(cnt)
    );
    
    initial
    begin
        clk = 0;
        en = 0;
        rst_n = 1; 
        #10;
        rst_n = 0;
        #10;
        rst_n = 1;
        en = 1;
    end
    
    always #10 clk =~ clk;
endmodule
