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


//ģ10������
module counter(
    input clk,
    input  rst_n,
    input en,    //�����������ʼ����
    output reg led_green,   
    output reg [3:0]cnt = 4'b0000
    );
 
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	   begin
		cnt <= 4'b0000;        //ϵͳ��λ������������
		led_green <= 0;
		end
	else if(en)
		if(cnt == 4'b1010)     //����ֵ�ﵽ10ʱ������������
			begin
			 cnt <= 4'b0000;
			 led_green <= 1;
			end
		else
		  begin
			cnt <= cnt + 1'b1; //���򣬼�������1
			led_green <= 0;
			end
	else
		cnt <= cnt; 
end
endmodule
