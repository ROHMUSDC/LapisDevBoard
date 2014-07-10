/******************************************************************************
	timer.h

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
#ifndef _TIMER_H_
#define _TIMER_H_

#include "mcu.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Return value. ===*/
/*--- tm_checkOvf() ---*/
#define TM_R_OVF		(  1 )
#define TM_R_NOT_OVF	(  0 )

/*=== Parameter value. ===*/
/*--- tm_init() ---*/
/* ch */
#define TM_CH_NO_01	(0)
#define TM_CH_NO_89	(1)
#define TM_CH_NO_AB	(2)

/* cs */
#define TM_CS_LSCLK		( 0x00u )
#define TM_CS_HTBCLK	( 0x01u )
#define TM_CS_EXTCLK	( 0x03u )

#define TM_CS_MASK		( 0x03u )

#define TM_16BIT_MAX_DATA	(0xFFFF)

#define TM_STRING(str) #str
#define TM_MAKE_LABEL(name, line) "label_" name "_" TM_STRING(line)

/* ost */
#define TM_OST_DIS		( 0x00u )
#define TM_OST_ENA		( 0x01u )

/*############################################################################*/
/*#                           API (by defined)                               #*/
/*############################################################################*/

/*******************************************************************************
	Routine Name:	tm_get01CounterTwice
	Form:			#define tm_get01CounterTwice(value)
	Parameters:		unsigned shart value
	Return value:	void
	Description:	Get timer01 counter twice
*******************************************************************************/
#define tm_get01CounterTwice(value)						\
	/* Get Timer0 counter twice */						\
	__asm(TM_MAKE_LABEL("TM0GET", __LINE__) ":");		\
	__asm("	l	r0,	TM0C");								\
	__asm("	l	r1,	TM0C");								\
	__asm("	cmp	r0,	r1");								\
	__asm("	bne	" TM_MAKE_LABEL("TM0GET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value);					\
	/* Get Timer1 counter twice */						\
	__asm(TM_MAKE_LABEL("TM1GET", __LINE__) ":");		\
	__asm("	l	r0,	TM1C");								\
	__asm("	l	r1,	TM1C");								\
	__asm("	cmp	r0,	r1");								\
	__asm("	bne	" TM_MAKE_LABEL("TM1GET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value "+01h");

#define tm_get89CounterTwice(value)						\
	/* Get Timer8 counter twice */						\
	__asm(TM_MAKE_LABEL("TM8GET", __LINE__) ":");		\
	__asm("	l	r0,	TM8C");								\
	__asm("	l	r1,	TM8C");								\
	__asm("	cmp	r0,	r1");								\
	__asm("	bne	" TM_MAKE_LABEL("TM8GET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value);					\
	/* Get Timer9 counter twice */						\
	__asm(TM_MAKE_LABEL("TM9GET", __LINE__) ":");		\
	__asm("	l	r0,	TM9C");								\
	__asm("	l	r1,	TM9C");								\
	__asm("	cmp	r0,	r1");								\
	__asm("	bne	" TM_MAKE_LABEL("TM9GET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value "+01h");

#define tm_getABCounterTwice(value)						\
	/* Get TimerA counter twice */						\
	__asm(TM_MAKE_LABEL("TMAGET", __LINE__) ":");		\
	__asm("	l	r0,	TMAC");								\
	__asm("	l	r1,	TMAC");								\
	__asm("	cmp	r0,	r1");								\
	__asm("	bne	" TM_MAKE_LABEL("TMAGET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value);					\
	/* Get TimerB counter twice */						\
	__asm(TM_MAKE_LABEL("TMBGET", __LINE__) ":");		\
	__asm("	l	r0,	TMBC");								\
	__asm("	l	r1,	TMBC");								\
	__asm("	cmp	r0,	r1");								\
	__asm("	bne	" TM_MAKE_LABEL("TMBGET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value "+01h");

/*******************************************************************************
	Routine Name:	tm_waitUntilStop01
	Form:			#define tm_waitUntilStop01()
	Parameters:		void
	Return value:	void
	Description:	Wait until timer01 stop. 
*******************************************************************************/
#define tm_waitUntilStop01()	while(T0STAT == 1);
#define tm_waitUntilStop89()	while(T8STAT == 1);
#define tm_waitUntilStopAB()	while(TASTAT == 1);

/*******************************************************************************
	Routine Name:	tm_checkOvf01
	Form:			#define tm_checkOvf01()
	Parameters:		void
	Return value:	unsigned short
						QTM1
	Description:	Get interrupt demand flag.
*******************************************************************************/
#define tm_checkOvf01()			(QTM1)
#define tm_checkOvf89()			(QTM9)
#define tm_checkOvfAB()			(QTMB)

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
void			tm_init( unsigned char chNo );

void			tm_start01( void );
void			tm_start89( void );
void			tm_startAB( void );

void			tm_restart01( void );
void			tm_restart89( void );
void			tm_restartAB( void );

void			tm_stop01( void );
void			tm_stop89( void );
void			tm_stopAB( void );

unsigned short	tm_get01Counter( void );
unsigned short	tm_get89Counter( void );
unsigned short	tm_getABCounter( void );

void			tm_clr01Counter( void );
void			tm_clr89Counter( void );
void			tm_clrABCounter( void );

void			tm_set01Data(unsigned short data);
void			tm_set89Data(unsigned short data);
void			tm_setABData(unsigned short data);

void			tm_set01Source(unsigned char cs);
void			tm_set89Source(unsigned char cs);
void			tm_setABSource(unsigned char cs);

unsigned char	tm_get01Source( void );
unsigned char	tm_get89Source( void );
unsigned char	tm_getABSource( void );

/*############################################################################*/
/*#                        Implements of inline API                          #*/
/*############################################################################*/

/*******************************************************************************
	Routine Name:	tm_start01
	Form:			void tm_start01( void )
	Parameters:		void
	Return value:	void
	Description:	Start timer 01.
*******************************************************************************/
#pragma inline tm_start01
void tm_start01( void )
{
	TM0C = 0;
	T0RUN = 1;
}

#pragma inline tm_start89
void tm_start89( void )
{
	TM8C = 0;
	T8RUN = 1;
}

#pragma inline tm_startAB
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
#pragma inline tm_restart01
void tm_restart01( void )
{
	T0RUN = 1;
}

#pragma inline tm_restart89
void tm_restart89( void )
{
	T8RUN = 1;
}

#pragma inline tm_restartAB
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
#pragma inline tm_stop01
void tm_stop01( void )
{
	T0RUN = 0;
}

#pragma inline tm_stop89
void tm_stop89( void )
{
	T8RUN = 0;
}

#pragma inline tm_stopAB
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
#pragma inline tm_get01Counter
unsigned short tm_get01Counter( void )
{
	unsigned short ret = TM0C;
	ret |= (TM1C << 8);
	return ret;
}

#pragma inline tm_get89Counter
unsigned short tm_get89Counter( void )
{
	unsigned short ret = TM8C;
	ret |= (TM9C << 8);
	return ret;
}

#pragma inline tm_getABCounter
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
#pragma inline tm_clr01Counter
void tm_clr01Counter( void )
{
	TM0C = 0x00;
}

#pragma inline tm_clr89Counter
void tm_clr89Counter( void )
{
	TM8C = 0x00;
}

#pragma inline tm_clrABCounter
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
#pragma inline tm_set01Data
void tm_set01Data(unsigned short data)
{
	TM0D = (unsigned char)(data & 0xFF);
	TM1D = (unsigned char)(data >> 8);
}

#pragma inline tm_set89Data
void tm_set89Data(unsigned short data)
{
	TM8D = (unsigned char)(data & 0xFF);
	TM9D = (unsigned char)(data >> 8);
}

#pragma inline tm_setABData
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
#pragma inline tm_get01Source
unsigned char tm_get01Source( void )
{
	return (unsigned char)(TM0CON0 & TM_CS_MASK);
}

#pragma inline tm_get89Source
unsigned char tm_get89Source( void )
{
	return (unsigned char)(TM8CON0 & TM_CS_MASK);
}

#pragma inline tm_getABSource
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
#pragma inline tm_set01Source
void tm_set01Source(unsigned char cs)
{
	T0CS0 = (cs & 0x01);
	T0CS1 = (cs & 0x02) >> 1;
}

#pragma inline tm_set89Source
void tm_set89Source(unsigned char cs)
{
	T8CS0 = (cs & 0x01);
	T8CS1 = (cs & 0x02) >> 1;
}

#pragma inline tm_setABSource
void tm_setABSource(unsigned char cs)
{
	TACS0 = (cs & 0x01);
	TACS1 = (cs & 0x02) >> 1;
}

/*******************************************************************************
	Routine Name:	tm_set8Oneshot
	Form:			void tm_set8Oneshot(unsigned char ost)
	Parameters:		unsigned char ost
	Return value:	void
	Description:	Set timer8 oneshot mode
*******************************************************************************/
#pragma inline tm_set8Oneshot
void tm_set8Oneshot(unsigned char ost)
{
	T8OST = ost;
}

#pragma inline tm_set9Oneshot
void tm_set9Oneshot(unsigned char ost)
{
	T9OST = ost;
}

#pragma inline tm_setAOneshot
void tm_setAOneshot(unsigned char ost)
{
	TAOST = ost;
}

#pragma inline tm_setBOneshot
void tm_setBOneshot(unsigned char ost)
{
	TBOST = ost;
}

#endif /*_TIMER_H_*/
