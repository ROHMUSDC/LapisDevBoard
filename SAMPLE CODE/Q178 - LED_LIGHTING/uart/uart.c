/******************************************************************************
	uart.c

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
#include "uart.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/

/*--- UART通信速度 ---*/
#define	UART_BAUDRATE		( 115200UL )

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/

static void _send_byte(unsigned char c);

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/

void uartInit( void )
{
	P43DIR = 0;	// output
	P43C0 = 1;
	P43C1 = 1;	// cmos
	P43MD0 = 1;
	P43MD1 = 0;	// uart0 data output

	U0EN = 0;	// stop

	U0IO = 0;	// send mode
	U0CK0 = 0;
	U0CK1 = 1;	// hsclk
	U0RSEL = 1;	// recv pin = P42
	
	U0LG0 = 0;
	U0LG1 = 0;	// data 8bit
	U0PT0 = 0;
	U0PT1 = 1;	// parity none
	U0STP = 0;	// stop 1bit
	U0NEG = 0;	// positive
	U0DIR = 0;	// LSB first

	UA0BRT = ( unsigned short )( ( ( HSCLK_kHZ * 1000UL ) / UART_BAUDRATE ) - 1 );
}

void uartSendStr( char* str, unsigned char num )
{
	unsigned char i = 0;
	unsigned char* ptr = (unsigned char*)str;

	while( i < num )
	{
		_send_byte( *(ptr+i) );
		i++;
	}
}

static void _send_byte(unsigned char c)
{
	U0IO = 0;			/* 送信モード */
	UA0BUF = c;			/* 送信データ */
	U0EN = 1;			/* 送信開始 */
	while(U0EN != 0)		/* 送信完了待ち */
	{
		;
	}
	QUA0 = 0;			/* 割込み要求クリア */
}
