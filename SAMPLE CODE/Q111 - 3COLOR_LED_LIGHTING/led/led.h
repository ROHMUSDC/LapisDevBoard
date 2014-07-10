/******************************************************************************
	led.h

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
#ifndef _LED_H_
#define _LED_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/

#define	STEP_LED_NUM		( 32u )
#define	STEP_LED_MIN		( 0u )
#define	STEP_LED_MAX		( STEP_LED_NUM - 1u )
#define	STEP_LED_DEFAULT	( STEP_LED_MAX / 2u )

/*############################################################################*/
/*#                               Structure                                  #*/
/*############################################################################*/


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
extern unsigned char stepLed;
extern unsigned short stepBlueLed;
extern unsigned short stepRedLed;
extern unsigned short stepGreenLed;

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/

void led_Init( void );
void led_Off( void );
void led_cde_Off( void );
void led_f_Off( void );
void led_On( void );
void led_cde_On( void );
void led_f_On( void );
void led_DutySet( void );

#endif /*_LED_H_*/
