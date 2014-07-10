/*****************************************************************************
	tbc.c

	Copyright (C) 2009 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS Semiconductor shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2009.03.17  ver.1.50
    2010.03.18  ver.1.60	improvement of the register access method.
******************************************************************************/
#include "mcu.h"
#include "tbc.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*--- Register bit. ---*/
/* HTBDR */
#define HTBDR_HTD			( 0x0Fu )


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
	Routine Name:	tb_setHtbdiv
	Form:			int tb_setHtbdiv( unsigned char htd )
	Parameters:		unsigned char htd : 
						TB_HTD_1_16(=0) : The ratio of dividing frequency = 1/16
						...
						TB_HTD_1_1(=15) : The ratio of dividing frequency = 1/ 1
	Return value:	int
						TB_R_OK(=0) : Setting success.
						TB_R_ERR_HTD(=-1) : Parameter htd is outside the range.
	Description:	The ratio of dividing frequency of the base counter of time is set.
******************************************************************************/
int tb_setHtbdiv( unsigned char htd )
{
	/*=== parameter check. ===*/
	if( htd > (unsigned char)TB_HTD_1_1 ){
		return ( TB_R_ERR_HTD );
	}
	/*=== register setting. ===*/
	HTBDR = htd;
	return ( TB_R_OK );
}

/*******************************************************************************
	Routine Name:	tb_getHtbdiv
	Form:			unsigned char tb_getHtbdiv( void )
	Parameters:		void
	Return value:	unsigned char : The ratio of dividing frequency ( 1-16 )
	Description:	The ratio of dividing frequency of the base counter of time is acquired.
******************************************************************************/
unsigned char tb_getHtbdiv( void )
{
	unsigned char	ratio;
	
	/*=== register check. ===*/
	ratio = HTBDR;
	ratio = (unsigned char)( (unsigned char)( ~ratio ) & (unsigned char)HTBDR_HTD ) + (unsigned char)1;
	return ( ratio );
}

