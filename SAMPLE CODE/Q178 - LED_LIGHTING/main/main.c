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
#include "tbc.h"
#include "timer.h"
#include "main.h"
#include "uart.h"
#include "volume.h"
#include "led.h"


/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/

/*--- State ---*/
#define	STATE_COLOR			( 0u )
#define	STATE_NIGHT			( 1u )

/*--- Sub State (Color) ---*/
#define	STATE_COLOR_NATURAL	( 0u )
#define	STATE_COLOR_BULB		( 1u )
#define	STATE_COLOR_MIXED		( 2u )

#define	BZR_STATE_CHANGE		( 2u ) // 
#define	BZR_PLUSMINUS		( 1u ) // 
#define	BZR_PLUSMINUS_LIMIT	( 4u ) // 

#define BZR_HZ				( 2500UL )
//#define BZR_HALF_HZ			( BZR_HZ / 2 ) // 
#define BZR_HALF_HZ			( BZR_HZ * 2 )  // 20120928

#define	SW_NONE			( 0u )
#define	SW_COLOR			( 1u )
#define	SW_NIGHT			( 2u )
#define	SW_PLUS			( 3u )
#define	SW_MINUS			( 4u )


#define	STR_NUM			( 42 ) // "state: natural white color, step: 20 max\n\r"

#define	STR_BASE1			( "state: " )
#define	STR_BASE2			( ", step: " )
#define	STR_NEWLINE			( "\n\r" )

#define	STR_BASE1_NUM		( sizeof(STR_BASE1) - 1 )   // null
#define	STR_BASE2_NUM		( sizeof(STR_BASE2) - 1 )   // null
#define	STR_NEWLINE_NUM		( sizeof(STR_NEWLINE) - 1 ) // null

#define	STR_STATE_NATURAL		( "natural white color" )
#define	STR_STATE_BULB		( "light bulb color" )
#define	STR_STATE_MIXED		( "mixed color" )
#define	STR_STATE_NIGHT		( "night light" )

#define	STR_STATE_NATURAL_NUM	( sizeof(STR_STATE_NATURAL) - 1 ) // null
#define	STR_STATE_BULB_NUM	( sizeof(STR_STATE_BULB) - 1 )    // null
#define	STR_STATE_MIXED_NUM	( sizeof(STR_STATE_MIXED) - 1 )   // null
#define	STR_STATE_NIGHT_NUM	( sizeof(STR_STATE_NIGHT) - 1 )   // null

#define	STR_STEP_NUM		( 2 ) // 

#define	STR_MAX			( " max" )
#define	STR_MAX_NUM			( sizeof(STR_MAX) - 1 )   // null

#define	DEBUG
#ifdef 	DEBUG
#define	STR_INIT			( "*** LED LIGHTING DEMO ***\n\r" )
#define	STR_INIT_NUM		( sizeof(STR_INIT) - 1 )  // null
#endif // DEBUG

#define INTERVAL_HZ			( 100UL ) // 100Hz == 10ms/cycle


/*############################################################################*/
/*#                               Structure                                  #*/
/*############################################################################*/


typedef struct {
	unsigned char state     : 1;
	unsigned char state_sub : 2;
	unsigned char reserve   : 5;
} STRUCT_STATE;


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/

#ifdef HTBC_HZ

static const unsigned short _valBzrHalfCycle = (unsigned short)( (HTBC_HZ/BZR_HALF_HZ)-1 );

static const unsigned short _valIntervalCycle = (unsigned short)( (HTBC_HZ/INTERVAL_HZ)-1 );

#else // ifdef HTBC_HZ
 #error 'HTBC_HZ' is not defined.
#endif // HTBC_HZ


static STRUCT_STATE _state = {
	STATE_COLOR, STATE_COLOR_NATURAL, 0
};

static unsigned char _swInput = SW_NONE;

static unsigned char _bzrCount = 0;

static unsigned char _IntervalFlag = FALSE;


/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/
static void _initPeri( void );
static void _initState( void );

static void _intP00( void );
static void _intP01( void );
static void _intP02( void );
static void _intP03( void );
static void _intTM1( void );
static void _intTM9( void );
static void _intT16H( void );


static void _swInit( void );

static void _bzrInit( void );
static void _bzrStart( unsigned char num );
static void _bzrOperate( void );

static void _IntervalInit( void );
static void _IntervalStart( void );
static void _IntervalStop( void );

static void _stateColorNatural( void );
static void _stateColorBulb( void );
static void _stateColorMixed( void );
static void _stateNightLight( void );

static void _changeNextState( void );
static void _changeNextStateColor( void );

static void _sendStr( void );


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

#ifdef DEBUG
	/*--- message send ---*/
	uartSendStr( STR_INIT, (unsigned char)STR_INIT_NUM );
#endif // DEBUG

	/*--- State. ---*/
	_initState();

	/*=== Main loop. ===*/
	for (;;)
	{
		/*=== Clear WDT. ===*/
		main_clrWDT();

		if( _state.state == STATE_COLOR )
		{
			switch( _state.state_sub )
			{
				case STATE_COLOR_NATURAL:
					_stateColorNatural();
					break;
				case STATE_COLOR_BULB:
					_stateColorBulb();
					break;
				case STATE_COLOR_MIXED:
					_stateColorMixed();
					break;
				default:
					_initState();
					break;
			}
		}
		else if( _state.state == STATE_NIGHT )
		{
			_stateNightLight();
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
	BLKCON0 = 0x00; // 
	BLKCON2 = 0x8B; // UART0
	BLKCON4 = 0x60; // SA-ADC
	BLKCON6 = 0x00; // 
	BLKCON7 = 0x00; // PWM

	/*--- Interrupt ---*/
	irq_di();
	irq_init();
	(void)irq_setHdr( (unsigned char)IRQ_NO_P00INT, _intP00 );
	(void)irq_setHdr( (unsigned char)IRQ_NO_P01INT, _intP01 );
	(void)irq_setHdr( (unsigned char)IRQ_NO_P02INT, _intP02 );
	(void)irq_setHdr( (unsigned char)IRQ_NO_P03INT, _intP03 );
	(void)irq_setHdr( (unsigned char)IRQ_NO_TM1INT, _intTM1 );
	(void)irq_setHdr( (unsigned char)IRQ_NO_TM9INT, _intTM9 );
	(void)irq_setHdr( (unsigned char)IRQ_NO_T16HINT, _intT16H );
	EP00 = 1;
	EP01 = 1;
	EP02 = 1;
	EP03 = 1;
	//ETM1 = 1; // 
	ETM9 = 1;
	//E16H = 1; // 
	irq_ei();

	/*---- WDT ---*/
	WDTMOD = 0x03; // 
	main_clrWDT();

	/*--- Clock ---*/
	clk_setSysclk();

	/*--- TBC ---*/
	tb_setHtbdiv( (unsigned char)TB_HTD_1_2 );

	/*--- スイッチ ---*/
	_swInit();

	/*--- ブザー ---*/
	_bzrInit();

	/*--- LED ---*/
	ledNaturalInit();
	ledBulbInit();
	ledMixedInit();
	ledNightInit();

	/*--- ボリューム ---*/
	volInit();

	/*--- UART ---*/
	uartInit();

	/*--- 定期処理用 ---*/
	_IntervalInit();
}

static void _initState( void )
{
	/*--- 状態 ---*/
	_state.state = STATE_COLOR;
	_state.state_sub = STATE_COLOR_NATURAL;
	ledNaturalOn();
	
	ledBulbOff();
	ledNightOff();
	
	_sendStr();
}



static void _intP00( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_COLOR : _swInput;
}

static void _intP01( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_NIGHT : _swInput;
}

static void _intP02( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_PLUS : _swInput;
}

static void _intP03( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_MINUS : _swInput;
}

static void _intTM1( void )
{
	_IntervalFlag = TRUE;
}

static void _intTM9( void )
{
	ledNightToggle();
}

static void _intT16H( void )
{
	_bzrOperate();
}


static void _swInit( void )
{
	// ボードにpull-up抵抗が載っているので、ポート設定ではpull-upはしない。

	/*--- 調色スイッチ ---*/
	P00E0 = 0;
	P00E1 = 1;	// pos edge interrupt
	P00SM = 1;	// sampling enable

	/*--- 常夜灯スイッチ ---*/
	P01E0 = 0;
	P01E1 = 1;	// pos edge interrupt
	P01SM = 1;	// sampling enable

	/*--- ＋スイッチ ---*/
	P02E0 = 0;
	P02E1 = 1;	// pos edge interrupt
	P02SM = 1;	// sampling enable

	/*--- －スイッチ ---*/
	P03E0 = 0;
	P03E1 = 1;	// pos edge interrupt
	P03SM = 1;	// sampling enable

	/*--- スイッチ用変数 ---*/
	_swInput = SW_NONE;
}


static void _bzrInit( void )
{
	/*--- ブザー用タイマ ---*/
	P23C0 = 1;
	P23C1 = 1;	// cmos
	P23MD  = 0;
	P23MD1 = 1;	// timer b
	
	tm_init( TM_CH_NO_AB ); // count stop, 16bit mode
	tm_setABSource( TM_CS_HTBCLK );
	tm_setAOneshot( TM_OST_DIS ); // normal(auto reload) mode
	TBNEG = 0;	// 正論理
	
	tm_setABData( _valBzrHalfCycle );
	
	/*--- ブザー用変数 ---*/
	_bzrCount = 0;
}

static void _bzrStart( unsigned char num )
{
	tm_stopAB();
	_bzrCount = ( num * 2u );

	Q16H = 0;
	E16H = 1;
}

static void _bzrOperate( void )
{
	if( _bzrCount > 0 )
	{
		_bzrCount--;
		if( (_bzrCount % 2) == TRUE )
		{
			tm_startAB();
		}
		else
		{
			tm_stopAB();
		}
		
		if( _bzrCount == 0 )
		{
			E16H = 0;
		}
	}
}

static void _IntervalInit( void )
{
	tm_init( TM_CH_NO_01 ); // count stop, 16bit mode
	tm_set01Source( TM_CS_HTBCLK );
	
	tm_set01Data( _valIntervalCycle );
	
	/*--- 定期処理用変数 ---*/
	_IntervalFlag = FALSE;

}

static void _IntervalStart( void )
{
	_IntervalFlag = FALSE;
	ETM1 = 1;
	tm_start01();
}

static void _IntervalStop( void )
{
	tm_stop01();
	ETM1 = 0;
}





static void _stateColorNatural( void )
{
	unsigned char bzr = 0;
	unsigned char result;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextStateColor();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_NIGHT )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_PLUS )
		{
			result = ledNaturalStepUpDn( STEP_UP );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		else if( _swInput == SW_MINUS )
		{
			result = ledNaturalStepUpDn( STEP_DOWN );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		_swInput = SW_NONE;
		
		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}
	}
}

static void _stateColorBulb( void )
{
	unsigned char bzr = 0;
	unsigned char result;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextStateColor();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_NIGHT )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_PLUS )
		{
			result = ledBulbStepUpDn( STEP_UP );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		else if( _swInput == SW_MINUS )
		{
			result = ledBulbStepUpDn( STEP_DOWN );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		_swInput = SW_NONE;

		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}
	}
}

static void _stateColorMixed( void )
{
	unsigned char bzr = 0;
	unsigned short adValue;
	unsigned short step;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextStateColor();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_NIGHT )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		_swInput = SW_NONE;

		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}
	}
	else if( _IntervalFlag == TRUE ) // 定期的に実施する処理
	{
		adValue = volGetAdValue();
		// ボリュームに変化があれば、段階を変更
		step = adValueToStep(adValue);
		ledMixedStepUpDn( step );
		_IntervalFlag = FALSE;
	}
}

static void _stateNightLight( void )
{
	unsigned char bzr = 0;
	unsigned char result;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_PLUS )
		{
			result = ledNightStepUpDn( STEP_UP );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		else if( _swInput == SW_MINUS )
		{
			result = ledNightStepUpDn( STEP_DOWN );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		_swInput = SW_NONE;

		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}

	}
}



static void _changeNextState( void )
{
	unsigned short adValue;

	if( _state.state == STATE_COLOR )
	{
		_state.state = STATE_NIGHT;
		switch( _state.state_sub )
		{
			case STATE_COLOR_NATURAL:
				ledNaturalOff();
				break;
			case STATE_COLOR_BULB:
				ledBulbOff();
				break;
			case STATE_COLOR_MIXED:
				_IntervalStop();
				ledMixedOff();
				break;
			default:
				// 通常、ここには来ない。
				// もし来てしまったら念のため昼白色・電球色を消灯して、戻り先を昼白色にする。
				ledNaturalOff();
				ledBulbOff();
				_state.state_sub = STATE_COLOR_NATURAL;
				break;
		}
		ledNightOn();
	}
	else // STATE_NIGHT
	{
		_state.state = STATE_COLOR;
		ledNightOff();
		switch( _state.state_sub )
		{
			case STATE_COLOR_NATURAL:
				ledNaturalOn();
				break;
			case STATE_COLOR_BULB:
				ledBulbOn();
				break;
			case STATE_COLOR_MIXED:
				adValue = volGetAdValue();
				// 以前のstepに関係なく、現在のボリュームを反映。
				stepMixed = adValueToStep(adValue);
				ledMixedOn();
				_IntervalStart();
				break;
			default:
				// 通常、ここには来ない。
				// もし来てしまったら昼白色にする。
				_state.state_sub = STATE_COLOR_NATURAL;
				ledNaturalOn();
				break;
		}
	}
}

static void _changeNextStateColor( void )
{
	unsigned short adValue;
	
	if( _state.state_sub == STATE_COLOR_NATURAL )
	{
		_state.state_sub = STATE_COLOR_BULB;
		ledNaturalOff();
		ledBulbOn();
	}
	else if( _state.state_sub == STATE_COLOR_BULB )
	{
		_state.state_sub = STATE_COLOR_MIXED;
		ledBulbOff();
		adValue = volGetAdValue();
		// 以前のstepに関係なく、現在のボリュームを反映。
		stepMixed = adValueToStep(adValue);
		ledMixedOn();
		_IntervalStart();
	}
	else // STATE_COLOR_MIXED
	{
		_state.state_sub = STATE_COLOR_NATURAL;
		_IntervalStop();
		ledMixedOff();
		ledNaturalOn();
	}
}

static void _sendStr( void )
{
	         char* strState;
	unsigned char  numState;
	         char  strStep[STR_STEP_NUM];
	unsigned char  numStep;

	unsigned char  nowStep = 0;
	unsigned char  maxFlag = FALSE;

	if( _state.state == STATE_COLOR )
	{
		switch( _state.state_sub )
		{
			case STATE_COLOR_NATURAL:
				strState = (unsigned char*)STR_STATE_NATURAL;
				numState = (unsigned char)STR_STATE_NATURAL_NUM;
				nowStep = stepNatural + 1u;
				maxFlag = ( stepNatural == STEP_SINGLE_MAX ) ? TRUE : FALSE ;
				break;
			case STATE_COLOR_BULB:
				strState = (unsigned char*)STR_STATE_BULB;
				numState = (unsigned char)STR_STATE_BULB_NUM;
				nowStep = stepBulb + 1u;
				maxFlag = ( stepBulb == STEP_SINGLE_MAX ) ? TRUE : FALSE ;
				break;
			case STATE_COLOR_MIXED:
				strState = (unsigned char*)STR_STATE_MIXED;
				numState = (unsigned char)STR_STATE_MIXED_NUM;
				nowStep = 0; // ボリュームは出力しない
				maxFlag = FALSE;
				break;
			default:
				return;
				//break;
		}
	}
	else if( _state.state == STATE_NIGHT )
	{
		strState = (unsigned char*)STR_STATE_NIGHT;
		numState = (unsigned char)STR_STATE_NIGHT_NUM;
		nowStep = stepNight + 1u;
		maxFlag = ( stepNight == STEP_NIGHT_MAX ) ? TRUE : FALSE ;
	}

	numStep = 0;
	if( nowStep >= 10 )
	{
		strStep[numStep] = ( ( nowStep / 10 ) + '0' );
		numStep++;
	}
	if( nowStep > 0 )
	{
		strStep[numStep] = ( ( nowStep % 10 ) + '0' );
		numStep++;
	}
	

	uartSendStr( STR_BASE1, (unsigned char)STR_BASE1_NUM );
	uartSendStr( strState,  numState );
	if( numStep > 0 )
	{
		uartSendStr( STR_BASE2, (unsigned char)STR_BASE2_NUM );
		uartSendStr( strStep, numStep );
		if( maxFlag == TRUE )
		{
			uartSendStr( STR_MAX, (unsigned char)STR_MAX_NUM );
		}
	}
	uartSendStr( STR_NEWLINE, (unsigned char)STR_NEWLINE_NUM );
}

