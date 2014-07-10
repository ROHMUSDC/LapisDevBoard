/******************************************************************************
	timer.c

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
#include "timer.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*--- Clock ---*/
#define TM_LSCLK_HZ			( LSCLK_HZ )

/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	tm_init
	Form:			void tm_init( unsigned char chNo )
	Parameters:		unsigned char chNo : Select a channel number.
						TM_CH_NO_01 : timer01
						TM_CH_NO_89 : timer89
						TM_CH_NO_AB : timerAB
	Return value:	void
	Description:	Initialize timer.
******************************************************************************/
void tm_init( unsigned char chNo )
{
	switch( chNo ) {
	case TM_CH_NO_89 :
		T8RUN = 0;		/* T0RUN   = 0    ...count stop. */
		T9RUN = 0;		/* T1RUN   = 0    ...count stop. */
		T89M16 = 1;
		break;
	case TM_CH_NO_AB :
		TARUN = 0;		/* T0RUN   = 0    ...count stop. */
		TBRUN = 0;		/* T1RUN   = 0    ...count stop. */
		TABM16 = 1;
		break;
	default:
		break;
	}
}

/*******************************************************************************
	Routine Name:	tm_start01
	Form:			void tm_start01( void )
	Parameters:		void
	Return value:	void
	Description:	Start timer 01.
*******************************************************************************/
void tm_start89( void )
{
	TM8C = 0;
	T8RUN = 1;
}

void tm_startAB( void )
{
	TMAC = 0;
	TARUN = 1;
}

/*******************************************************************************
	Routine Name:	tm_restart01
	Form:			void tm_restart01( void )
	Parameters:		void
	Return value:	void
	Description:	Restart timer01
*******************************************************************************/
void tm_restart89( void )
{
	T8RUN = 1;
}

void tm_restartAB( void )
{
	TARUN = 1;
}

/*******************************************************************************
	Routine Name:	tm_stop01
	Form:			void tm_stop01( void )
	Parameters:		void
	Return value:	void
	Description:	Stop timer01.
*******************************************************************************/
void tm_stop89( void )
{
	T8RUN = 0;
}

void tm_stopAB( void )
{
	TARUN = 0;
}

/*******************************************************************************
	Routine Name:	tm_get01Counter
	Form:			unsigned short tm_get01Counter( void )
	Parameters:		void
	Return value:	void
	Description:	Stop timer01.
*******************************************************************************/
unsigned short tm_get89Counter( void )
{
	unsigned short ret = TM8C;
	ret |= (TM9C << 8);
	return ret;
}

unsigned short tm_getABCounter( void )
{
	unsigned short ret = TMAC;
	ret |= (TMBC << 8);
	return ret;
}

/*******************************************************************************
	Routine Name:	tm_clr01Counter
	Form:			void tm_clr01Counter( void )
	Parameters:		void
	Return value:	void
	Description:	Claer timer01 counter
*******************************************************************************/
void tm_clr89Counter( void )
{
	TM8C = 0x00;
}

void tm_clrABCounter( void )
{
	TMAC = 0x00;
}

/*******************************************************************************
	Routine Name:	tm_set01Data
	Form:			void tm_set01Data(unsigned short data)
	Parameters:		void
	Return value:	void
	Description:	Set timer01 data register
*******************************************************************************/
void tm_set89Data(unsigned short data)
{
	TM8D = (unsigned char)(data & 0xFF);
	TM9D = (unsigned char)(data >> 8);
}

void tm_setABData(unsigned short data)
{
	TMAD = (unsigned char)(data & 0xFF);
	TMBD = (unsigned char)(data >> 8);
}

/*******************************************************************************
	Routine Name:	tm_get01Source
	Form:			unsigned char tm_get01Source( void )
	Parameters:		void
	Return value:	unsigned char
					timer01 clock source 
	Description:	Get timer01 clock source 
*******************************************************************************/
unsigned char tm_get89Source( void )
{
	return (unsigned char)(TM8CON0 & TM_CS_MASK);
}

unsigned char tm_getABSource( void )
{
	return (unsigned char)(TMACON0 & TM_CS_MASK);
}

/*******************************************************************************
	Routine Name:	tm_set01Source
	Form:			void tm_set01Source(unsigned char cs)
	Parameters:		unsigned char cs
	Return value:	void
	Description:	Set timer01 clock source 
*******************************************************************************/
void tm_set89Source(unsigned char cs)
{
	T8CS0 = (cs & 0x01);
	T8CS1 = (cs & 0x02) >> 1;
	T8CS2 = (cs & 0x04) >> 2;
}

void tm_setABSource(unsigned char cs)
{
	TACS0 = (cs & 0x01);
	TACS1 = (cs & 0x02) >> 1;
	TACS2 = (cs & 0x04) >> 2;
}

/*******************************************************************************
	Routine Name:	tm_set8Oneshot
	Form:			void tm_set8Oneshot(unsigned char ost)
	Parameters:		unsigned char ost
	Return value:	void
	Description:	Set timer8 oneshot mode
*******************************************************************************/
void tm_set8Oneshot(unsigned char ost)
{
	T8OST = ost;
}

void tm_set9Oneshot(unsigned char ost)
{
	T9OST = ost;
}

void tm_setAOneshot(unsigned char ost)
{
	TAOST = ost;
}

void tm_setBOneshot(unsigned char ost)
{
	TBOST = ost;
}
