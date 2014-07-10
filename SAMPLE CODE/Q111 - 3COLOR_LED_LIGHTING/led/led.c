/******************************************************************************
	led.c

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
    2012.10.12  ver.1.00
******************************************************************************/
#include "common.h"
#include "mcu.h"
#include "led.h"
#include "timer.h"
#include "pwm.h"
#include "clock.h"


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
#ifdef HTBC_HZ
// ★defineを使って計算（※小数点以下 切り捨て）

#define	LED_HZ		( 125UL )
#define	LED_PERIOD	( ( HTBC_HZ / LED_HZ ) - 1 ) // PWMは-1が必要
#define	LED_DUTY(ratio)	( (unsigned short)(LED_PERIOD * (ratio) / STEP_LED_MAX ) )

// 周期レジスタに設定する値
static const unsigned short _valLedPeriod = (unsigned short)( LED_PERIOD );
// デューティレジスタに設定する値
static const unsigned short _tblLedDuty[STEP_LED_NUM] = {
	LED_DUTY(  0),
	LED_DUTY(  1),
	LED_DUTY(  2),
	LED_DUTY(  3),
	LED_DUTY(  4),
	LED_DUTY(  5),
	LED_DUTY(  6),
	LED_DUTY(  7),
	LED_DUTY(  8),
	LED_DUTY(  9),
	LED_DUTY( 10),
	LED_DUTY( 11),
	LED_DUTY( 12),
	LED_DUTY( 13),
	LED_DUTY( 14),
	LED_DUTY( 15),
	LED_DUTY( 16),
	LED_DUTY( 17),
	LED_DUTY( 18),
	LED_DUTY( 19),
	LED_DUTY( 20),
	LED_DUTY( 21),
	LED_DUTY( 22),
	LED_DUTY( 23),
	LED_DUTY( 24),
	LED_DUTY( 25),
	LED_DUTY( 26),
	LED_DUTY( 27),
	LED_DUTY( 28),
	LED_DUTY( 29),
	LED_DUTY( 30),
	LED_DUTY( 31),
};

#else // ifndef HTBC_HZ
 #error 'HTBC_HZ' is not defined.
#endif // HTBC_HZ

unsigned char stepLed;
unsigned short stepBlueLed;
unsigned short stepRedLed;
unsigned short stepGreenLed;

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
void led_Init(void)
{
	PC0DIR = 0;	// output
	PC0C0 = 1;
	PC0C1 = 1;	// cmos
	PC0MD0 = 0;
	PC0MD1 = 1;	// PWMF0

	PC1DIR = 0;	// output
	PC1C0 = 1;
	PC1C1 = 1;	// cmos
	PC1MD0 = 0;
	PC1MD1 = 1;	// PWMF1

	PC2DIR = 0;	// output
	PC2C0 = 1;
	PC2C1 = 1;	// cmos
	PC2MD0 = 0;
	PC2MD1 = 1;	// PWMF2

	PB0DIR = 0;	// output
	PB0C0 = 1;
	PB0C1 = 1;	// cmos
	PB0MD0 = 1;
	PB0MD1 = 0;	// PWMC

	PB1DIR = 0;	// output
	PB1C0 = 1;
	PB1C1 = 1;	// cmos
	PB1MD0 = 1;
	PB1MD1 = 0;	// PWMD

	PB2DIR = 0;	// output
	PB2C0 = 1;
	PB2C1 = 1;	// cmos
	PB2MD0 = 1;
	PB2MD1 = 0;	// PWME

	pwmF_setPeriod( _valLedPeriod );
	pwmF_selectClock( PWM_CS_HTBCLK );
	pwmF_selectOutputPolarity( PWM_NEG_NEG );
	pwmF_setOneShotMode( PWM_OS_DIS );
	pwmF0_setEnable();
	pwmF1_setEnable();
	pwmF2_setEnable();

	pwmC_setPeriod( _valLedPeriod );
	pwmC_selectClock( PWM_CS_HTBCLK );
	pwmC_selectOutputPolarity( PWM_NEG_NEG );
	pwmC_setOneShotMode( PWM_OS_DIS );

	pwmD_setPeriod( _valLedPeriod );
	pwmD_selectClock( PWM_CS_HTBCLK );
	pwmD_selectOutputPolarity( PWM_NEG_NEG );
	pwmD_setOneShotMode( PWM_OS_DIS );

	pwmE_setPeriod( _valLedPeriod );
	pwmE_selectClock( PWM_CS_HTBCLK );
	pwmE_selectOutputPolarity( PWM_NEG_NEG );
	pwmE_setOneShotMode( PWM_OS_DIS );

	stepRedLed = STEP_LED_MAX;
	stepGreenLed = STEP_LED_MIN;
	stepBlueLed = STEP_LED_MIN;
	led_DutySet();
}

void led_Off( void )
{
	PCRUN = 0;
	PDRUN = 0;
	PERUN = 0;
	PFRUN = 0;
	pwmC_clearCount();
	pwmD_clearCount();
	pwmE_clearCount();
	pwmF_clearCount();
}

void led_cde_Off( void )
{
	PCRUN = 0;
	PDRUN = 0;
	PERUN = 0;
	pwmC_clearCount();
	pwmD_clearCount();
	pwmE_clearCount();
}

void led_f_Off( void )
{
	PFRUN = 0;
	pwmF_clearCount();
}

void led_On( void )
{
	PCRUN = 1;
	PDRUN = 1;
	PERUN = 1;
	PFRUN = 1;
}

void led_cde_On( void )
{
	PCRUN = 1;
	PDRUN = 1;
	PERUN = 1;
}

void led_f_On( void )
{
	PFRUN = 1;
}

void led_DutySet( void )
{
	pwmC_setDuty( _tblLedDuty[stepBlueLed] );
	pwmD_setDuty( _tblLedDuty[stepRedLed] );
	pwmE_setDuty( _tblLedDuty[stepGreenLed] );

	pwmF0_setDuty( _tblLedDuty[stepBlueLed] );
	pwmF1_setDuty( _tblLedDuty[stepRedLed] );
	pwmF2_setDuty( _tblLedDuty[stepGreenLed] );
	pwmF_dutyUpdate();
}
