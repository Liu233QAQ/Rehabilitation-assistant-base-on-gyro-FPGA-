`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/27 08:19:35
// Design Name: 
// Module Name: counter
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


//模10计数器
module counter(
    input clk,
    input  rst_n,
    input en,    //这个键触发开始计数
    output reg led_green,   
    output reg [3:0]cnt = 4'b0000
    );
 
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	   begin
		cnt <= 4'b0000;        //系统复位，计数器清零
		led_green <= 0;
		end
	else if(en)
		if(cnt == 4'b1010)     //计数值达到10时，计数器清零
			begin
			 cnt <= 4'b0000;
			 led_green <= 1;
			end
		else
		  begin
			cnt <= cnt + 1'b1; //否则，计数器加1
			led_green <= 0;
			end
	else
		cnt <= cnt; 
end
endmodule
