/******************************************************************************
    common.h

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
#ifndef _COMMON_H_
#define _COMMON_H_

#define TRUE		( 1u )
#define FALSE		( 0u )

#define PASS		( 1u )
#define FAIL		( 0u )

/*--- Port. ---*/
#define PORT_L		( 0x00u )
#define PORT_H		( 0x01u )

/*--- Clock ---*/
#define LSCLK_HZ	( 32768UL )
#define HSCLK_kHZ	(  8192UL )
#define PLLCLK_kHZ	( 16384UL )
#define HTBC_DIV	( 1UL )
#define HTBC_HZ		( ( HSCLK_kHZ / HTBC_DIV ) * 1000UL )

#endif /*_COMMON_H_*/
