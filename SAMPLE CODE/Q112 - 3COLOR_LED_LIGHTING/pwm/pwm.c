/******************************************************************************
	pwm.c

    Copyright (C) 2012 LAPIS Semiconductor Co., Ltd.
    All rights reserved.

    This software is provided "as is" and any expressed or implied
    warranties, including, but not limited to, the implied warranties of
    merchantability and fitness for a particular purpose are disclaimed.
    LAPIS Semiconductor shall not be liable for any direct, indirect,
    consequential or incidental damages arising from using or modifying
    this software.
    You (customer) can modify and use this software in whole or part on
    your own responsibility, only for the purpose of developing the software
    for use with microcontroller manufactured by LAPIS Semiconductor.

    History
    2012.02.22  ver.1.00
******************************************************************************/
#ifndef _PWM_H_
#define _PWM_H_

#include "mcu.h"
#include "pwm.h"

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*=== API For PWMC ===*/

void pwmC_setPeriod(unsigned short period)
{
	PWCP = period;
}

void pwmC_setDuty(unsigned short duty)
{
	PWCD = duty;
}

void pwmC_clearCount(void)
{
	PWCCL = 0;
}

void pwmC_selectClock(unsigned char clkSel)
{
	unsigned char tmpCs;
	tmpCs = clkSel;
	PCCS0 =  tmpCs       & 1;
	PCCS1 = (tmpCs >> 1) & 1;
}

void pwmC_selectInterrupt(unsigned char intSel)
{
	unsigned char tmpIs = intSel;
	PCIS0 =  tmpIs       & 1;
	PCIS1 = (tmpIs >> 1) & 1;
}

void pwmC_selectOutputPolarity(unsigned char outPol)
{
	PCNEG = outPol;
}

void pwmC_start(void)
{
	PCRUN = 1;
}

void pwmC_stop(void)
{
	PCRUN = 0;
}

void pwmC_setOneShotMode(unsigned char mode)
{
	PCOST = (mode) & 1;
}

/*=== API For PWMD ===*/

void pwmD_setPeriod(unsigned short period)
{
	PWDP = period;
}

void pwmD_setDuty(unsigned short duty)
{
	PWDD = duty;
}

void pwmD_clearCount(void)
{
	PWDCL = 0;
}

void pwmD_selectClock(unsigned char clkSel)
{
	unsigned char tmpCs;
	tmpCs = clkSel;
	PDCS0 =  tmpCs       & 1;
	PDCS1 = (tmpCs >> 1) & 1;
}

void pwmD_selectInterrupt(unsigned char intSel)
{
	unsigned char tmpIs = intSel;
	PDIS0 =  tmpIs       & 1;
	PDIS1 = (tmpIs >> 1) & 1;
}

void pwmD_selectOutputPolarity(unsigned char outPol)
{
	PDNEG = outPol;
}

void pwmD_start(void)
{
	PDRUN = 1;
}

void pwmD_stop(void)
{
	PDRUN = 0;
}

void pwmD_setOneShotMode(unsigned char mode)
{
	PDOST = (mode) & 1;
}

/*=== API For PWME ===*/

void pwmE_setPeriod(unsigned short period)
{
	PWEP = period;
}

void pwmE_setDuty(unsigned short duty)
{
	PWED = duty;
}

void pwmE_clearCount(void)
{
	PWECL = 0;
}

void pwmE_selectClock(unsigned char clkSel)
{
	unsigned char tmpCs;
	tmpCs = clkSel;
	PECS0 =  tmpCs       & 1;
	PECS1 = (tmpCs >> 1) & 1;
}

void pwmE_selectInterrupt(unsigned char intSel)
{
	unsigned char tmpIs = intSel;
	PEIS0 =  tmpIs       & 1;
	PEIS1 = (tmpIs >> 1) & 1;
}

void pwmE_selectOutputPolarity(unsigned char outPol)
{
	PENEG = outPol;
}

void pwmE_start(void)
{
	PERUN = 1;
}

void pwmE_stop(void)
{
	PERUN = 0;
}

void pwmE_setOneShotMode(unsigned char mode)
{
	PEOST = (mode) & 1;
}

/*=== API For PWMF ===*/
void pwmF_setPeriod(unsigned short period)
{
	PWFP = period;
}

void pwmF0_setDuty(unsigned short duty)
{
	PWF0D = duty;
}

void pwmF1_setDuty(unsigned short duty)
{
	PWF1D = duty;
}

void pwmF2_setDuty(unsigned short duty)
{
	PWF2D = duty;
}

void pwmF_clearCount(void)
{
	PWFCL = 0;
}

void pwmF_selectClock(unsigned char clkSel)
{
	unsigned char tmpCs = clkSel;
	PFCS0 =  tmpCs       & 1;
	PFCS1 = (tmpCs >> 1) & 1;
}

void pwmF_selectInterrupt(unsigned char intSel)
{
	unsigned char tmpIs = intSel;
	PFIS0 =  tmpIs       & 1;
	PFIS1 = (tmpIs >> 1) & 1;
}

void pwmF_selectOutputPolarity(unsigned char outPol)
{
	PFNEG = outPol & 1;
}

void pwmF_start(void)
{
	PFRUN = 1;
}

void pwmF_stop(void)
{
	PFRUN = 0;
}

void pwmF_setOneShotMode(unsigned char mode)
{
	PFOST = (mode) & 1;
}

void pwmF0_setEnable(void)
{
	PF0EN = 1;
}

void pwmF1_setEnable(void)
{
	PF1EN = 1;
}

void pwmF2_setEnable(void)
{
	PF2EN = 1;
}

void pwmF0_setDisable(void)
{
	PF0EN = 0;
}

void pwmF1_setDisable(void)
{
	PF1EN = 0;
}

void pwmF2_setDisable(void)
{
	PF2EN = 0;
}

void pwmF_dutyUpdate(void)
{
	PFUD = 1;
}

#endif /* _PWM_H_ */
