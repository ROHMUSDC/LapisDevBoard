/*****************************************************************************
	saAdc.h

	Copyright (C) 2008 OKI SEMICONDUCTOR CO., LTD.
	All rights reserved.

	OKI SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
******************************************************************************/
#ifndef _SAADC_H_
#define _SAADC_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Return value. ===*/
/*--- General ---*/
#define SAADC_R_OK			(  0 )
#define SAADC_R_ERR_CH			( -1 )
#define SAADC_R_ERR_LP			( -2 )
#define SAADC_R_ERR_CK			( -3 )
#define SAADC_R_ERR_EN			( -4 )
#define SAADC_R_ERR_OFFSET		( -5 )
#define SAADC_R_ERR_GAIN		( -6 )
/*--- saAdc_checkFin() ---*/
#define SAADC_R_FIN				(  1 )
#define SAADC_R_NOT_FIN			(  0 )

/*=== Parameter value. ===*/
/*--- saAdc_init() ---*/
/* lp */
#define SAADC_LP_ONESHOT		( 0x00u )
#define SAADC_LP_CONTINUE		( 0x01u )
/* ck */
#define SAADC_CK_LOW			( 0x00u )
#define SAADC_CK_HIGH			( 0x01u )
/* en */
#define SAADC_EN_CH0NML_CH1NML	( 0x00u )
#define SAADC_EN_CH0NML_CH1AMP	( 0x01u )
#define SAADC_EN_CH0AMP_CH1AMP	( 0x02u )
#define SAADC_EN_DIFF			( 0x03u )
/* offset */
#define SAADC_OFFSET_M1_5		( 0x00u )
#define SAADC_OFFSET_M1_0		( 0x01u )
#define SAADC_OFFSET_M0_5		( 0x02u )
#define SAADC_OFFSET__0_0		( 0x03u )
#define SAADC_OFFSET_P0_5		( 0x04u )
#define SAADC_OFFSET_P1_0		( 0x05u )
#define SAADC_OFFSET_P1_5		( 0x06u )
#define SAADC_OFFSET_P2_0		( 0x07u )
#define SAADC_OFFSET_P2_5		( 0x08u )
#define SAADC_OFFSET_P3_0		( 0x09u )
#define SAADC_OFFSET_P3_5		( 0x0Au )
#define SAADC_OFFSET_P4_0		( 0x0Bu )
#define SAADC_OFFSET_P4_5		( 0x0Cu )
#define SAADC_OFFSET_P5_0		( 0x0Du )
#define SAADC_OFFSET_P5_5		( 0x0Eu )
#define SAADC_OFFSET_P6_0		( 0x0Fu )
#define SAADC_OFFSET_M9_5		( 0x10u )
#define SAADC_OFFSET_M9_0		( 0x11u )
#define SAADC_OFFSET_M8_5		( 0x12u )
#define SAADC_OFFSET_M8_0		( 0x13u )
#define SAADC_OFFSET_M7_5		( 0x14u )
#define SAADC_OFFSET_M7_0		( 0x15u )
#define SAADC_OFFSET_M6_5		( 0x16u )
#define SAADC_OFFSET_M6_0		( 0x17u )
#define SAADC_OFFSET_M5_5		( 0x18u )
#define SAADC_OFFSET_M5_0		( 0x19u )
#define SAADC_OFFSET_M4_5		( 0x1Au )
#define SAADC_OFFSET_M4_0		( 0x1Bu )
#define SAADC_OFFSET_M3_5		( 0x1Cu )
#define SAADC_OFFSET_M3_0		( 0x1Du )
#define SAADC_OFFSET_M2_5		( 0x1Eu )
#define SAADC_OFFSET_M2_0		( 0x1Fu )
/* gain */
#define SAADC_GAIN_1_0			( 0x00u )
#define SAADC_GAIN_1_5			( 0x01u )
#define SAADC_GAIN_2_0			( 0x02u )
#define SAADC_GAIN_2_5			( 0x03u )
#define SAADC_GAIN_3_0			( 0x04u )
#define SAADC_GAIN_3_5			( 0x05u )
#define SAADC_GAIN_4_0			( 0x06u )
#define SAADC_GAIN_4_5			( 0x07u )
#define SAADC_GAIN_5_0			( 0x08u )
#define SAADC_GAIN_5_5			( 0x09u )
#define SAADC_GAIN_6_0			( 0x0Au )
#define SAADC_GAIN_6_5			( 0x0Bu )
#define SAADC_GAIN_7_0			( 0x0Cu )
#define SAADC_GAIN_7_5			( 0x0Du )
#define SAADC_GAIN_8_0			( 0x0Eu )
#define SAADC_GAIN_8_5			( 0x0Fu )
/*--- saAdc_execute ---*/
#define SAADC_CHBIT_OFF			( 0x00u )
#define SAADC_CHBIT_CH0			( 0x01u )
#define SAADC_CHBIT_CH1			( 0x02u )
#define SAADC_CHBIT_CH0_CH1		( 0x03u )

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
int	saAdc_init			( unsigned char lp, unsigned char ck, unsigned char en, unsigned char offset, unsigned char gain );
void	saAdc_short_CH0CH1_on	( void );
void	saAdc_short_CH0CH1_off	( void );
int	saAdc_execute		( unsigned char chBit );
int	saAdc_checkFin		( void );
int	saAdc_getResult		( unsigned char chNo, unsigned short *result );

#endif /*_SAADC_H_*/

