/*
 * Gyro.c
 *
 *  Created on: 2020��7��27��
 *      Author: ���
 */
#include "Gyro.h"
#include "IIC.h"
#define Gyro_IIC_Base_Addr 0x40800000 //Gyro IIC base address
#define Gyro_Slave_ADDR 0x6B //Gyro slave address
#define Gyro_Flag_ADDR 0X0f //Gyro IIC bus connection success flag address
#define Gyro_Flag_Value 0X69 //Gyro IIC bus connection success flag value
//Gyro angle data output register address
#define Gyro_X_L_G 0x22
#define Gyro_X_H_G 0x23
#define Gyro_X_L_XL 0x28
#define Gyro_X_H_XL 0x29
#define Gyro_Y_L_G 0x24
#define Gyro_Y_H_G 0x25
#define Gyro_Y_L_XL 0x2A
#define Gyro_Y_H_XL 0x2B
#define Gyro_Z_L_G 0x26
#define Gyro_Z_H_G 0x27
#define Gyro_Z_L_XL 0x2C
#define Gyro_Z_H_XL 0x2D
//Gyro temperature data output register address
#define Gyro_Temp_L 0x20
#define Gyro_Temp_H 0x21
//Gyro magnetometer data output register address
#define Gyro_Mag_X_L 0x66
#define Gyro_Mag_X_H 0x67
#define Gyro_Mag_Y_L 0x68
#define Gyro_Mag_Y_H 0x69
#define Gyro_Mag_Z_L 0x6A
#define Gyro_Mag_Z_H 0x6B
//Initialization register value
const u8 Gyro_Initial_Values[10] = {0x70, 0x4C, 0x44, 0x0, 0x0,0x0, 0x50, 0x85, 0x38, 0x38};
//Gyro initialization
u8 Init_Gyro(void){
	//Counting variable
	int i=0;

	//Defining communication flags
	u8 Connect_Flag=0;

	//Test communication
	if(IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Flag_ADDR,0)==Gyro_Flag_Value)
	Connect_Flag=1;
	else
	Connect_Flag=0;

	//Initialization register
	for(i = 0; i < 10; ++i)
		{IIC_Write_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,i+10,Gyro_Initial_Values[i],0);}

	//Return connection flag
	return Connect_Flag;
}

//Get gyroscope data
void Gyro_Angle_Data_Get(u8 *Angle_Data_X,u8 *Angle_Data_Y,u8 *Angle_Data_Z){
	//Read X
	Angle_Data_X[0]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_X_H_G,0);
	Angle_Data_X[1]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_X_L_G,0);
	Angle_Data_X[2]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_X_H_XL,0);
	Angle_Data_X[3]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_X_L_XL,0);
	//Read Y
	Angle_Data_Y[0]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Y_H_G,0);
	Angle_Data_Y[1]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Y_L_G,0);
	Angle_Data_Y[2]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Y_H_XL,0);
	Angle_Data_Y[3]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Y_L_XL,0);
	//Read Z
	Angle_Data_Z[0]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Z_H_G,0);
	Angle_Data_Z[1]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Z_L_G,0);
	Angle_Data_Z[2]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Z_H_XL,0);
	Angle_Data_Z[3]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Z_L_XL,0);
}

//Get temperature data
void Gyro_Temp_Data_Get(u8 *Temp_Data){
	//Read temperature high
	Temp_Data[1]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Temp_H,0);
	//Read temperature lOW
	Temp_Data[0]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Temp_L,0);
}

//Get magnetometer data
void Gyro_Mag_Data_Get(u8 *Mag_Data_X,u8 *Mag_Data_Y,u8 *Mag_Data_Z){
//Read Mag X
Mag_Data_X[0]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Mag_X_L,0);
Mag_Data_X[1]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Mag_X_H,0);
//Read Mag Y
Mag_Data_Y[0]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Mag_Y_L,0);
Mag_Data_Y[1]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Mag_Y_H,0);
//Read Mag Z
Mag_Data_Z[0]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Mag_Z_L,0);
Mag_Data_Z[1]=IIC_Read_Data(Gyro_IIC_Base_Addr,Gyro_Slave_ADDR,Gyro_Mag_Z_H,0);
}
