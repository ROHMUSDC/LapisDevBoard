/******************************************************************************
    mcu.h

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
    2013.04.18  ver.1.10	//Modified for Q100 Series micros	
******************************************************************************/
#ifndef _MCU_H_			//MCU H....	
#define _MCU_H_

#ifndef _ML610111_ 		//Force ML610Q11x
#define _ML610111_

#if defined (_ML610111_)  	//If Q111...
#include <ML610111.H>

#elif defined (_ML610112_)  	//If Q112...
#include <ML610112.H>

#else
#error "Unknown target MCU!"


#endif //If Q111 / Else If Q112 / Else Error...
#endif //Force ML610Q11x
#endif //MCU H....	
