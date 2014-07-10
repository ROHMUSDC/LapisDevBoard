/*****************************************************************************
	irq.c

	Copyright (C) 2009 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS Semiconductor shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2009.03.18  ver.1.33
    2009.12.21  ver.1.40
    2010.03.18  ver.1.50	improvement of the register access method.
******************************************************************************/
#include "mcu.h"
#include "irq.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/

/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
/*--- Handler table. ---*/
static void ( *_sIrqHdr[IRQ_SIZE] )( void );

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/
static void _intUndefHdr( void );
static void _intNullHdr( void );
static void _intWDTINT( void );
static void _intVLSINT( void );
static void _intPA0INT( void );
static void _intPA1INT( void );
static void _intPA2INT( void );
static void _intPB0INT( void );
static void _intPB1INT( void );
static void _intPB2INT( void );
static void _intPB3INT( void );
static void _intSIO0INT( void );
static void _intSADINT( void );
static void _intI2CSINT( void );
static void _intI2CMINT( void );
static void _intTM8INT( void );
static void _intTM9INT( void );
static void _intUA0INT( void );
static void _intUA1INT( void );
static void _intCMP0INT( void );
static void _intCMP1INT( void );
static void _intTMEINT( void );
static void _intTMFINT( void );
static void _intTMAINT( void );
static void _intTMBINT( void );
static void _intPWCINT( void );
static void _intPWDINT( void );
static void _intPWEINT( void );
static void _intPWFINT( void );
static void _intT128HINT( void );
static void _intT32HINT( void );
static void _intT16HINT( void );
static void _intT2HINT( void );

/*=== set Interrupt Vector ===*/
#pragma INTERRUPT _intWDTINT	0x08	2
#pragma INTERRUPT _intUndefHdr	0x0A	1
#pragma INTERRUPT _intVLSINT	0x0C	1
#pragma INTERRUPT _intUndefHdr	0x0E	1

#pragma INTERRUPT _intPA0INT	0x10	1
#pragma INTERRUPT _intPA1INT	0x12	1
#pragma INTERRUPT _intPA2INT	0x14	1
#pragma INTERRUPT _intUndefHdr	0x16	1
#pragma INTERRUPT _intPB0INT	0x18	1
#pragma INTERRUPT _intPB1INT	0x1A	1
#pragma INTERRUPT _intPB2INT	0x1C	1
#pragma INTERRUPT _intPB3INT	0x1E	1

#pragma INTERRUPT _intSIO0INT	0x20	1
#pragma INTERRUPT _intUndefHdr	0x22	1
#pragma INTERRUPT _intSADINT	0x24	1
#pragma INTERRUPT _intUndefHdr	0x26	1
#pragma INTERRUPT _intUndefHdr	0x28	1
#pragma INTERRUPT _intUndefHdr	0x2A	1
#pragma INTERRUPT _intI2CSINT	0x2C	1
#pragma INTERRUPT _intI2CMINT	0x2E	1

#pragma INTERRUPT _intUndefHdr	0x30	1
#pragma INTERRUPT _intUndefHdr	0x32	1
#pragma INTERRUPT _intTM8INT	0x34	1
#pragma INTERRUPT _intTM9INT	0x36	1
#pragma INTERRUPT _intUndefHdr	0x38	1
#pragma INTERRUPT _intUndefHdr	0x3A	1
#pragma INTERRUPT _intUndefHdr	0x3C	1
#pragma INTERRUPT _intUndefHdr	0x3E	1

#pragma INTERRUPT _intUA0INT	0x40	1
#pragma INTERRUPT _intUA1INT	0x42	1
#pragma INTERRUPT _intUndefHdr	0x44	1
#pragma INTERRUPT _intUndefHdr	0x46	1
#pragma INTERRUPT _intUndefHdr	0x48	1
#pragma INTERRUPT _intUndefHdr	0x4A	1
#pragma INTERRUPT _intCMP0INT	0x4C	1
#pragma INTERRUPT _intCMP1INT	0x4E	1

#pragma INTERRUPT _intUndefHdr	0x50	1
#pragma INTERRUPT _intUndefHdr	0x52	1
#pragma INTERRUPT _intUndefHdr	0x54	1
#pragma INTERRUPT _intUndefHdr	0x56	1
#pragma INTERRUPT _intTMEINT	0x58	1
#pragma INTERRUPT _intTMFINT	0x5A	1
#pragma INTERRUPT _intTMAINT	0x5C	1
#pragma INTERRUPT _intTMBINT	0x5E	1

#pragma INTERRUPT _intPWCINT	0x60	1
#pragma INTERRUPT _intPWDINT	0x62	1
#pragma INTERRUPT _intPWEINT	0x64	1
#pragma INTERRUPT _intPWFINT	0x66	1
#pragma INTERRUPT _intUndefHdr	0x68	1
#pragma INTERRUPT _intT128HINT	0x6A	1
#pragma INTERRUPT _intUndefHdr	0x6C	1
#pragma INTERRUPT _intT32HINT	0x6E	1

#pragma INTERRUPT _intT16HINT	0x70	1
#pragma INTERRUPT _intUndefHdr	0x72	1
#pragma INTERRUPT _intUndefHdr	0x74	1
#pragma INTERRUPT _intT2HINT	0x76	1
#pragma INTERRUPT _intUndefHdr	0x78	1
#pragma INTERRUPT _intUndefHdr	0x7A	1
#pragma INTERRUPT _intUndefHdr	0x7C	1
#pragma INTERRUPT _intUndefHdr	0x7E	1

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	irq_init
	Form:			void irq_init( void )
	Parameters:		void
	Return value:	void
	Description:	irq module initialize.
******************************************************************************/
void irq_init( void )
{
	int		irqNo;
	
	/*=== register setting. ===*/
	IE1 = (unsigned char)0x00u;
	IE2 = (unsigned char)0x00u;
	IE3 = (unsigned char)0x00u;
	IE4 = (unsigned char)0x00u;
	IE5 = (unsigned char)0x00u;
	IE6 = (unsigned char)0x00u;
	IE7 =  (unsigned char)0x00u;
	IRQ0 = (unsigned char)0x00u;
	IRQ1 = (unsigned char)0x00u;
	IRQ2 = (unsigned char)0x00u;
	IRQ3 = (unsigned char)0x00u;
	IRQ4 = (unsigned char)0x00u;
	IRQ5 = (unsigned char)0x00u;
	IRQ6 = (unsigned char)0x00u;
	IRQ7 = (unsigned char)0x00u;
	/*=== handler setting. ===*/
	for( irqNo = 0; irqNo < IRQ_SIZE; irqNo++ ) {
		_sIrqHdr[irqNo] = _intNullHdr;
	}
}

/*******************************************************************************
	Routine Name:	irq_ei
	Form:			void irq_ei( void )
	Parameters:		void
	Return value:	void
	Description:	EI.
******************************************************************************/
void irq_ei( void )
{
	__EI();
}

/*******************************************************************************
	Routine Name:	irq_di
	Form:			void irq_di( void )
	Parameters:		void
	Return value:	void
	Description:	DI.
******************************************************************************/
void irq_di( void )
{
	__DI();
}

/*******************************************************************************
	Routine Name:	irq_setHdr
	Form:			int irq_setHdr( unsigned char intNo, void (*func)( void ) )
	Parameters:		unsigned char intNo : Interrupt number.
						IRQ_NO_WDTINT(= 0)
						...
						IRQ_NO_AL1INT(=25)
					void (*func)( void ) : Handler.
	Return value:	int
						IRQ_R_OK(=0)
						IRQ_R_ERR_INTNO(=-1)
	Description:	Clear interrupt request flag.
******************************************************************************/
int irq_setHdr( unsigned char intNo, void (*func)( void ) )
{
	/*=== parameter check. ===*/
	/*--- check [intNo]. ---*/
	if( intNo >= (unsigned char)IRQ_SIZE ) {
		return ( IRQ_R_ERR_INTNO );
	}
	/*=== Handler setting.  ===*/
	if( func != (void *)0 ) {
		_sIrqHdr[intNo] = func;
	}
	else {
		_sIrqHdr[intNo] = _intNullHdr;
	}
	return ( IRQ_R_OK );
}


/*############################################################################*/
/*#                              Subroutine                                  #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	_intUndefHdr
	Form:			static void _intUndefHdr( void )
	Parameters:		void
	Return value:	void
	Description:	NULL Handler.
******************************************************************************/
static void _intUndefHdr( void )
{
	return;
}

/*******************************************************************************
	Routine Name:	_intNullHdr
	Form:			static void _intNullHdr( void )
	Parameters:		void
	Return value:	void
	Description:	NULL Handler.
******************************************************************************/
static void _intNullHdr( void )
{
	return;
}

/*******************************************************************************
	Routine Name:	_intbranchHdr
	Form:			static void _branchHdr( void )
	Parameters:		unsigned char intNo : Interrupt number.
						IRQ_NO_WDTINT(= 0)
						...
						IRQ_NO_T2HINT(=30)
	Return value:	void
	Description:	Branch to Handler.
******************************************************************************/
static void _branchHdr( unsigned char intNo )
{
	_sIrqHdr[intNo]();
}

/*############################################################################*/
/*#                               Handler                                    #*/
/*############################################################################*/

static void _intWDTINT(void)	{	_branchHdr(IRQ_NO_WDTINT);		}
static void _intVLSINT(void)	{	_branchHdr(IRQ_NO_VLSINT);		}
static void _intPA0INT(void)	{	_branchHdr(IRQ_NO_PA0INT);		}
static void _intPA1INT(void)	{	_branchHdr(IRQ_NO_PA1INT);		}
static void _intPA2INT(void)	{	_branchHdr(IRQ_NO_PA2INT);		}
static void _intPB0INT(void)	{	_branchHdr(IRQ_NO_PB0INT);		}
static void _intPB1INT(void)	{	_branchHdr(IRQ_NO_PB1INT);		}
static void _intPB2INT(void)	{	_branchHdr(IRQ_NO_PB2INT);		}
static void _intPB3INT(void)	{	_branchHdr(IRQ_NO_PB3INT);		}
static void _intSIO0INT(void)	{	_branchHdr(IRQ_NO_SIO0INT);		}
static void _intSADINT(void)	{	_branchHdr(IRQ_NO_SADINT);		}
static void _intI2CSINT(void)	{	_branchHdr(IRQ_NO_I2CSINT);		}
static void _intI2CMINT(void)	{	_branchHdr(IRQ_NO_I2CMINT);		}
static void _intTM8INT(void)	{	_branchHdr(IRQ_NO_TM8INT);		}
static void _intTM9INT(void)	{	_branchHdr(IRQ_NO_TM9INT);		}
static void _intUA0INT(void)	{	_branchHdr(IRQ_NO_UA0INT);		}
static void _intUA1INT(void)	{	_branchHdr(IRQ_NO_UA1INT);		}
static void _intCMP0INT(void)	{	_branchHdr(IRQ_NO_CMP0INT);		}
static void _intCMP1INT(void)	{	_branchHdr(IRQ_NO_CMP1INT);		}
static void _intTMEINT(void)	{	_branchHdr(IRQ_NO_TMEINT);		}
static void _intTMFINT(void)	{	_branchHdr(IRQ_NO_TMFINT);		}
static void _intTMAINT(void)	{	_branchHdr(IRQ_NO_TMAINT);		}
static void _intTMBINT(void)	{	_branchHdr(IRQ_NO_TMBINT);		}
static void _intPWCINT(void)	{	_branchHdr(IRQ_NO_PWCINT);		}
static void _intPWDINT(void)	{	_branchHdr(IRQ_NO_PWDINT);		}
static void _intPWEINT(void)	{	_branchHdr(IRQ_NO_PWEINT);		}
static void _intPWFINT(void)	{	_branchHdr(IRQ_NO_PWFINT);		}
static void _intT128HINT(void)	{	_branchHdr(IRQ_NO_T128HINT);	}
static void _intT32HINT(void)	{	_branchHdr(IRQ_NO_T32HINT);		}
static void _intT16HINT(void)	{	_branchHdr(IRQ_NO_T16HINT);		}
static void _intT2HINT(void)	{	_branchHdr(IRQ_NO_T2HINT);		}
