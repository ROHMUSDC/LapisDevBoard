/*****************************************************************************
	tbc.h

	Copyright (C) 2008 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS Semiconductor shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
******************************************************************************/
#ifndef _TBC_H_
#define _TBC_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Parameter value. ===*/
/*--- tb_setHtbdiv() ---*/
/* htd */
#define TB_HTD_1_16			(  0 )			/* The ratio of dividing frequency = 1/16 */
#define TB_HTD_1_15			(  1 )			/* The ratio of dividing frequency = 1/15 */
#define TB_HTD_1_14			(  2 )			/* The ratio of dividing frequency = 1/14 */
#define TB_HTD_1_13			(  3 )			/* The ratio of dividing frequency = 1/13 */
#define TB_HTD_1_12			(  4 )			/* The ratio of dividing frequency = 1/12 */
#define TB_HTD_1_11			(  5 )			/* The ratio of dividing frequency = 1/11 */
#define TB_HTD_1_10			(  6 )			/* The ratio of dividing frequency = 1/10 */
#define TB_HTD_1_9			(  7 )			/* The ratio of dividing frequency = 1/ 9 */
#define TB_HTD_1_8			(  8 )			/* The ratio of dividing frequency = 1/ 8 */
#define TB_HTD_1_7			(  9 )			/* The ratio of dividing frequency = 1/ 7 */
#define TB_HTD_1_6			( 10 )			/* The ratio of dividing frequency = 1/ 6 */
#define TB_HTD_1_5			( 11 )			/* The ratio of dividing frequency = 1/ 5 */
#define TB_HTD_1_4			( 12 )			/* The ratio of dividing frequency = 1/ 4 */
#define TB_HTD_1_3			( 13 )			/* The ratio of dividing frequency = 1/ 3 */
#define TB_HTD_1_2			( 14 )			/* The ratio of dividing frequency = 1/ 2 */
#define TB_HTD_1_1			( 15 )			/* The ratio of dividing frequency = 1/ 1 */
/*=== Return value. ===*/
/*--- tb_setHtbdiv() ---*/
#define TB_R_OK				(  0 )			/* Setting success. */
#define TB_R_ERR_HTD		( -1 )			/* Parameter htd is outside the range. */

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
int				tb_setHtbdiv	( unsigned char htd );
unsigned char	tb_getHtbdiv	( void );

#endif /*_TBC_H_*/

