/*****************************************************************************
	saAdc.c

	Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	OKI SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2010.03.19  ver.1.40	improvement of the register access method.
******************************************************************************/
#include "mcu.h"

#ifndef _ML610Q48X
#ifndef _ML610Q41X
#include "saAdc.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/* IRQ */
#define IRQ2_QSAD			( 0x04u )
/*--- Register bit. ---*/
/* SADRnL */
#define SADRL_SAR			( 0xF0u )
/* SADRnH */
#define SADRH_SAR			( 0xFFu )
/* SADCON0 */
#define SADCON0_SALP		( 0x01u )
#define SADCON0_SACK		( 0x02u )
/* SADCON1 */
#define SADCON1_SARUN		( 0x01u )
/* SADMOD0 */
#define SADCON1_SACH		( 0x03u )
/* AMPOFFS */
#define AMPOFFS_AMPO		( 0x1Fu )
/* AMPGAIN */
#define AMPGAIN_AMPG		( 0x0Fu )
/* AMPCON0 */
#define AMPCON0_AMPEN		( 0x03u )
#define AMPCON0_AMPADJ		( 0x04u )

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
	Routine Name:	saAdc_init
	Form:			int saAdc_init( unsigned char lp, unsigned char ck, unsigned char en, unsigned char offset, unsigned char gain )
	Parameters:		unsigned char lp : 
						SAADC_LP_ONESHOT(=0) : Conversion only once.
						SAADC_LP_CONTINUE(=1) : Continuous conversion.
					unsigned char ck : 
						SAADC_CK_LOW(=0) : HSCLK=375kHz-1.1MHz
						SAADC_CK_HIGH(=1) : HSCLK=1.99MHz-4.2MHz
					unsigned char en : 
						SAADC_EN_CH0NML_CH1NML(=0) : CH0:Normal CH1:Normal
						SAADC_EN_CH0NML_CH1AMP(=1) : CH0:Normal CH1:Amplification
						SAADC_EN_CH0AMP_CH1AMP(=2) : CH0:Amplification CH1:Amplification
						SAADC_EN_DIFF(=3) : Differential amplification
					unsigned char offset : 
						SAADC_OFFSET_M1_5(=0) : 1.5%
						...
						SAADC_OFFSET_M2_0(=31) : 2.0%
					unsigned char gain : 
						SAADC_GAIN_1_0(=0) : 1 times
						...
						SAADC_GAIN_8_5(=15) : 15 times
	Return value:	int
						SAADC_R_OK(=0) : Initialization success.
						SAADC_R_ERR_LP(=-2) : Parameter lp is outside the range.
						SAADC_R_ERR_CK(=-3) : Parameter ck is outside the range.
						SAADC_R_ERR_EN(=-4) : Parameter en is outside the range.
						SAADC_R_ERR_OFFSET(=-5) : Parameter offset is outside the range.
						SAADC_R_ERR_GAIN(=-6) : Parameter gain is outside the range.
	Description:	SA-ADC module initialize.
******************************************************************************/
int saAdc_init( unsigned char lp, unsigned char ck, unsigned char en, unsigned char offset, unsigned char gain )
{
	unsigned char	regTmp;
	
	/*=== parameter check. ===*/
	/*--- check [lp]. ---*/
	if( lp > (unsigned char)SAADC_LP_CONTINUE ) {
		return ( SAADC_R_ERR_LP );
	}
	/*--- check [ck]. ---*/
	if( ck > (unsigned char)SAADC_CK_HIGH ) {
		return ( SAADC_R_ERR_CK );
	}

#ifdef _SAADC_REG
	/*--- check [en]. ---*/
	if( en > (unsigned char)SAADC_EN_DIFF ) {
		return ( SAADC_R_ERR_EN );
	}
	/*--- check [offset]. ---*/
	if( offset > (unsigned char) SAADC_OFFSET_M2_0 ) {
		return ( SAADC_R_ERR_OFFSET );
	}
	/*--- check [gain]. ---*/
	if( gain > (unsigned char)SAADC_GAIN_8_5 ) {
		return ( SAADC_R_ERR_GAIN );
	}
#endif	/* _SAADC_REG	*/

	/*=== register setting. ===*/
	SARUN = 0;			/* Conversion stop. */
	SADCON0 = (unsigned char)( ( lp << 0 ) |			/* SALP = [lp] ...Conversion times setting. */
	                                                    ( ck << 1 ) );		/* SACK = [ck] ...HCLK setting. */

#ifdef _SAADC_REG
	regTmp  = AMPCON0;								
	regTmp &= (unsigned char)( ~AMPCON0_AMPEN );								
	regTmp |= en;																
	AMPCON0 = regTmp;								/* AMPEN0-1 = [en] ...Mode setting. */
	AMPOFFS = offset;								/* AMPO0-4 = [offset] ... Offset setting. */
	AMPGAIN = gain;									/* AMPG0-3 = [gain] ... Gain setting .*/
#endif	/* _SAADC_REG	*/
	return ( SAADC_R_OK );
}

/*******************************************************************************
	Routine Name:	saAdc_short_CH0CH1_on
	Form:			void saAdc_short_CH0CH1_on( void )
	Parameters:		void
	Return value:	void
	Description:	It shorts between input terminal AIN0 and AIN1.
******************************************************************************/
void saAdc_short_CH0CH1_on( void )
{
	/*=== register setting. ===*/
#ifdef _SAADC_REG
	AMPADJ = 1;
#endif	/* _SAADC_REG	*/
}

/*******************************************************************************
	Routine Name:	saAdc_short_CH0CH1_off
	Form:			void saAdc_short_CH0CH1_off( void )
	Parameters:		void
	Return value:	void
	Description:	The short circuit between input terminal AIN0 and AIN1 is released.
******************************************************************************/
void saAdc_short_CH0CH1_off( void )
{
	/*=== register setting. ===*/
#ifdef _SAADC_REG
	AMPADJ = 0;
#endif	/* _SAADC_REG	*/
}

/*******************************************************************************
	Routine Name:	saAdc_execute
	Form:			int saAdc_execute( unsigned char chBit )
	Parameters:		unsigned char chBit : Channel bit setting.
						SAADC_CHIBIT_OFF(=0) : stop.
						SAADC_CHIBIT_CH0(=1) : channel 0 only.
						SAADC_CHIBIT_CH1(=2) : channel 1 only.
						SAADC_CHIBIT_CH0_CH1(=3) : channel 0 and 1.
	Return value:	int
						SAADC_R_OK(=0) : It succeeds in the conversion start/stop.
						SAADC_R_ERR_CH(=-1) : Parameter chBit is outside the range.
	Description:	Start/Stop Conversion.
******************************************************************************/
int saAdc_execute( unsigned char chBit )
{
	/*=== parameter check. ===*/
	/*--- check [chBit]. ---*/
	if( chBit > (unsigned char)SAADC_CHBIT_CH0_CH1 ) {
		return ( SAADC_R_ERR_CH );
	}
	/*=== register setting. ===*/
	SARUN = 0;	/* Conversion stop. */
	SADMOD0 = chBit;							/* SACH0-1 = [chBit] ...Channel setting. */
	QSAD = 0;			/* QSAD = 0 ...clear SAADC-IRQ. */
	/*--- It is not a stop demand. ---*/
	if( chBit != (unsigned char)SAADC_CHBIT_OFF ) {
		SARUN = 1;	/* Conversion start. */
	}
	return ( SAADC_R_OK );
}

/*******************************************************************************
	Routine Name:	saAdc_checkFin
	Form:			int saAdc_checkFin( void )
	Parameters:		void
	Return value:	int
						SAADC_R_FIN(=1) : Conversion ends at least once.
						SAADC_R_NOT_FIN(=0) : Conversion doesn't end once.
	Description:	Whether conversion has ended is confirmed.
******************************************************************************/
int saAdc_checkFin( void )
{
	unsigned char	reg;
	
	reg = IRQ2;
	/*=== register check. ===*/
	if( ( reg & (unsigned char)IRQ2_QSAD ) != 0 ) {
		return ( SAADC_R_FIN );
	}
	return ( SAADC_R_NOT_FIN );
}

/*******************************************************************************
	Routine Name:	saAdc_getResult
	Form:			int saAdc_getResult( unsigned char chNo, unsigned short *result )
	Parameters:		unsigned char chNo : Channel number.
					unsigned short *result : Area where conversion result is stored.
	Return value:	int
						SAADC_R_OK(=0) : It succeeded in the acquisition of the conversion result.
						SAADC_R_ERR_CH(=-1) : Parameter chNo is outside the range.
	Description:	The conversion result is acquired.
******************************************************************************/
int saAdc_getResult( unsigned char chNo, unsigned short *result )
{
	unsigned char	rl, rh;
	
	/*=== parameter check. ===*/
	/*--- check [chNo]. ---*/
	if( chNo > (unsigned char)1u ) {
		return ( SAADC_R_ERR_CH );
	}
	/*=== register check. ===*/
	if( chNo == (unsigned char)0u ) {
		rl = SADR0L;
		rh = SADR0H;
	}
	else {
		rl = SADR1L;
		rh = SADR1H;
	}
	/*=== set value. ===*/
	*result = (unsigned short)( ( ( rl & (unsigned char)SADRL_SAR ) >> 4 ) |
	                            ( ( rh & (unsigned char)SADRH_SAR ) << 4 ) );
	return ( SAADC_R_OK );
}

/*############################################################################*/
/*#                              Subroutine                                  #*/
/*############################################################################*/

#endif	/*   _ML610Q41X	*/
#endif	/*   _ML610Q48X	*/
