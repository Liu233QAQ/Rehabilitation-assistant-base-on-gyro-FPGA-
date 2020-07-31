/*
 * IIC.h
 *
 *  Created on: 2020Äê7ÔÂ27ÈÕ
 *      Author: Îí°×
 */

#ifndef SRC_IIC_H_
#define SRC_IIC_H_

#include "XIic.h"
#include <stdio.h>

u8 IIC_Write_Data(int Base_Addr,u8 Slave_Addr,u16 Reg_Addr,u8 Reg_Data,u8 Dual_Addr);
u8 IIC_Read_Data(int Base_Addr,u8 Slave_Addr,u16 Reg_Addr,u8 Dual_Addr);
#endif /* SRC_IIC_H_ */
