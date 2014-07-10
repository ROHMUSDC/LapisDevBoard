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
******************************************************************************/
#ifndef _MCU_H_
#define _MCU_H_

#if defined (_ML610Q112)
#include <ml610112.h>
#elif defined (_ML610Q111)
#include <ml610111.h>
#elif defined (_ML610000)
#include <ml610000.h>
#else
#error "Unknown target MCU"
#endif /* _ML610Q112 */

#endif /* _MCU_H */
