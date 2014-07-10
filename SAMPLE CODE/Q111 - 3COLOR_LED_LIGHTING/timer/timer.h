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
#define TM_R_OVF	(  1 )
#define TM_R_NOT_OVF	(  0 )

/*=== Parameter value. ===*/
/*--- tm_init() ---*/
/* ch */
#define TM_CH_NO_89	(1)
#define TM_CH_NO_AB	(2)

/* cs */
#define TM_CS_LSCLK	( 0x00u )
#define TM_CS_HTBCLK	( 0x01u )
#define TM_CS_64HTBCLK	( 0x02u )
#define TM_CS_16HTBCLK	( 0x03u )
#define TM_CS_8HTBCLK	( 0x04u )
#define TM_CS_4HTBCLK	( 0x05u )
#define TM_CS_2HTBCLK	( 0x06u )
#define TM_CS_PLLCLK	( 0x07u )

#define TM_CS_MASK		( 0x07u )

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
#define tm_checkOvf89()			(QTM9)
#define tm_checkOvfAB()			(QTMB)

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
void			tm_init( unsigned char chNo );

void			tm_start89( void );
void			tm_startAB( void );

void			tm_restart89( void );
void			tm_restartAB( void );

void			tm_stop89( void );
void			tm_stopAB( void );

unsigned short	tm_get89Counter( void );
unsigned short	tm_getABCounter( void );

void			tm_clr89Counter( void );
void			tm_clrABCounter( void );

void			tm_set89Data(unsigned short data);
void			tm_setABData(unsigned short data);

void			tm_set89Source(unsigned char cs);
void			tm_setABSource(unsigned char cs);

unsigned char	tm_get89Source( void );
unsigned char	tm_getABSource( void );

/*############################################################################*/
/*#                        Implements of inline API                          #*/
/*############################################################################*/



#endif /*_TIMER_H_*/
