/******************************************************************************
	main.c

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
#include "irq.h"
#include "clock.h"
#include "timer.h"
#include "main.h"
#include "led.h"
#include "tbc.h"


/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*--- Flag. ---*/
#define FLG_SET			( 1u )
#define FLG_CLR			( 0u )

/*--- State ---*/
#define	STATE_RED_BLUE		( 0u )
#define	STATE_RED_GREEN		( 1u )
#define	STATE_GREEN_RED		( 2u )
#define	STATE_GREEN_BLUE	( 3u )
#define	STATE_BLUE_GREEN	( 4u )
#define	STATE_BLUE_RED		( 5u )
#define	STATE_OFF		( 6u )

#define STEP_UP			( 1u )
#define STEP_DOWN		( 1u )

#define STATE_COUNT_MIN		( 0u )
#define STATE_COUNT_MAX		( 9u )
#define CONTINU_STATE_COUNT	( STATE_COUNT_MAX / 3u )

/*--- スイッチ入力 ---*/
#define	SW_NONE			( 0u )
#define	SW_ON			( 1u )

/*--- timer ---*/
#define MAIN_LSCLK_HZ		( LSCLK_HZ )
#define MAIN_TIMER_INTERVAL	( 20000UL )		// [us]
#define MAIN_TIMER_CNT		( ( MAIN_TIMER_INTERVAL * MAIN_LSCLK_HZ ) / 1000000UL )	// Timer cnt setting value.

/*--- LED ---*/
#define	LED_COLOR		( 0u )
#define	LED_WHITE		( 1u )
#define	LED_OFF			( 2u )

/*--- WDT ---*/
#define	CLR_WDT			( 0u )
#define	NOT_CLR_WDT		( 1u )
#define	WDT_125MS		( 0u )
#define	WDT_500MS		( 1u )
#define	WDT_2S			( 2u )
#define	WDT_8S			( 3u )
#define	WDT_23MS		( 4u )
#define	WDT_31MS		( 5u )
#define	WDT_62MS		( 6u )


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/

unsigned short state = STATE_RED_GREEN;
unsigned char state_exec_cnt = 0u;

static unsigned char _swInput = SW_NONE;
static unsigned char _ledSel = LED_COLOR;
static unsigned char _ledChange = FLG_CLR;
static unsigned char _clrWdt = CLR_WDT;



/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/
static void _initPeri( void );
static void _initState( void );

static void _intPA0( void );
static void _intTMB( void );

static void _swInit( void );

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/

/*******************************************************************************
	Routine Name:	main
	Form:			int main( void )
	Parameters:		void
	Return value:	int
	Description:	main
*******************************************************************************/
int main( void )
{
	/*=== Main initialize. ===*/
	/*--- Peripheral. ---*/
	_initPeri();

	/*--- State. ---*/
	_initState();

	/*=== Main loop. ===*/
	for (;;)
	{
		/*=== Clear WDT. ===*/
		if( _clrWdt == CLR_WDT ) {
			main_clrWDT();
		}

		if( WDTR == FLG_CLR ) {
			switch( state_exec_cnt / CONTINU_STATE_COUNT ) {
				case 0:	led_On();					break;
				case 1:	led_f_Off();	led_cde_On();	break;
				case 2:	led_cde_Off();	led_f_On();		break;
				default:	led_Off();					break;
			}

			if( _ledChange == FLG_SET){
				if( state_exec_cnt == STATE_COUNT_MAX ) {
					state_exec_cnt = STATE_COUNT_MIN;
				}

				if( state == STATE_RED_GREEN ) {
					if( stepGreenLed == STEP_LED_MAX ) {
						state = STATE_GREEN_RED;
					}
					else {
						stepRedLed = STEP_LED_MAX;
						stepGreenLed += STEP_UP;
						stepBlueLed = STEP_LED_MIN;
					}
				}
				if( state == STATE_GREEN_RED ) {
					if( stepRedLed == STEP_LED_MIN ) {
						state = STATE_GREEN_BLUE;
					}
					else {
						stepRedLed -= STEP_DOWN;
						stepGreenLed = STEP_LED_MAX;
						stepBlueLed = STEP_LED_MIN;
					}
				}
				if( state == STATE_GREEN_BLUE ) {
					if( stepBlueLed == STEP_LED_MAX ) {
						state = STATE_BLUE_GREEN;
					}
					else {
						stepRedLed = STEP_LED_MIN;
						stepGreenLed = STEP_LED_MAX;
						stepBlueLed += STEP_UP;
					}
				}
				if( state == STATE_BLUE_GREEN ) {
					if( stepGreenLed == STEP_LED_MIN ) {
						state = STATE_BLUE_RED;
					}
					else {
						stepRedLed = STEP_LED_MIN;
						stepGreenLed -= STEP_DOWN;
						stepBlueLed = STEP_LED_MAX;
					}
				}
				if( state == STATE_BLUE_RED ) {
					if( stepRedLed == STEP_LED_MAX ) {
						state = STATE_RED_BLUE;
					}
					else {
						stepRedLed += STEP_UP;
						stepGreenLed = STEP_LED_MIN;
						stepBlueLed = STEP_LED_MAX;
					}
				}
				if( state == STATE_RED_BLUE ) {
					if( stepBlueLed == STEP_LED_MIN ) {
						state = STATE_RED_GREEN;
						state_exec_cnt++;
					}
					else {
						stepRedLed = STEP_LED_MAX;
						stepGreenLed = STEP_LED_MIN;
						stepBlueLed -= STEP_DOWN;
					}
				}
			led_DutySet();
			_ledChange = FLG_CLR;
			}
		}
		else {
			led_On();
			stepRedLed = STEP_LED_MAX;
			stepGreenLed = STEP_LED_MAX;
			stepBlueLed = STEP_LED_MAX;
			led_DutySet();
		}
	}

	return 0;
}

/*******************************************************************************
	Routine Name:	main_clrWDT
	Form:			void main_clrWDT( void )
	Parameters:		void
	Return value:	void
	Description:	clear WDT.
*******************************************************************************/
void main_clrWDT( void )
{
	do {
		WDTCON = 0x5Au;
	} while (WDP != 1);
	WDTCON = 0xA5u;
}

/*############################################################################*/
/*#                              Subroutine                                  #*/
/*############################################################################*/

/*******************************************************************************
	Routine Name:	_initPeri
	Form:			static void _initPeri( void )
	Parameters:		void
	Return value:	void
	Description:	initialize peripheral.
*******************************************************************************/
static void _initPeri( void )
{
	/*--- BLKCON ---*/
	BLKCON2 = 0xC9; // UART0動作許可
	BLKCON4 = 0x01;
	BLKCON6 = 0xC0; // タイマ8/9/A/B動作許可
	BLKCON7 = 0x00; // PWMC/D/E/F動作許可

	/*--- Interrupt ---*/
	irq_di();
	irq_init();
	(void)irq_setHdr( (unsigned char)IRQ_NO_PA0INT, _intPA0 );
	(void)irq_setHdr( (unsigned char)IRQ_NO_TMBINT, _intTMB );
	QPA0 = 0;
	QTMB = 0;
	EPA0 = 1;
	ETMB = 1;
	irq_ei();

	/*---- WDT ---*/
	WDTMOD = WDT_23MS; // オーバーフロー周期
	main_clrWDT();

	/*--- Clock ---*/
	clk_setSysclk();

	/*--- TBC ---*/
	(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 );

	/*--- Timer ---*/
	tm_init( TM_CH_NO_AB );					/* Timer channel */
	tm_setABSource(TM_CS_LSCLK);				/* Operation clock */
	tm_setABData( (unsigned short)(MAIN_TIMER_CNT) );	/* Timer count value */
	tm_startAB();

	/*--- スイッチ ---*/
	_swInit();

	/*--- LED ---*/
	led_Init();
}

static void _initState( void )
{
	/*--- 状態 ---*/
	state = STATE_RED_GREEN;
}

static void _intPA0( void )
{
	_clrWdt = NOT_CLR_WDT;
}

static void _intTMB( void )
{
	_ledChange = FLG_SET;
}

static void _swInit( void )
{
	/*--- SW1 ---*/
	PA0DIR = 1;
	PA0C0 = 0;
	PA0C1 = 1;
	PA0MD0 = 0;
	PA0MD0 = 0;

	PA0E0 = 1;
	PA0E1 = 0;
	PA0SM = 1;

	/*--- スイッチ用変数 ---*/
	_swInput = SW_NONE;
}
