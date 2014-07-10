/**************************************************************

    ML610178A.H - SFR define Header file for CCU8

    #CORE           "nX-U8/100"
    #TARGET         "ML610178A"
    #VERSION        "2.01"
    Last Edition  Mar 18, 2013
    Copyright (C) 2011 LAPIS SEMICONDUCTOR CO., LTD.
**************************************************************/
#ifndef _ML610178A_H_
#define _ML610178A_H_

typedef struct{
  unsigned char b0  : 1 ;
  unsigned char b1  : 1 ;
  unsigned char b2  : 1 ;
  unsigned char b3  : 1 ;
  unsigned char b4  : 1 ;
  unsigned char b5  : 1 ;
  unsigned char b6  : 1 ;
  unsigned char b7  : 1 ;
} _BYTE_FIELD;

/*---------------------------------------------------
	CODE ADDRESS SYMBOLS
---------------------------------------------------*/
#define WDTINT	0x0008
#define NMINT	0x000A
#define LOSCINT	0x000C
#define P00INT	0x0010
#define P01INT	0x0012
#define P02INT	0x0014
#define P03INT	0x0016
#define SIO0INT	0x0020
#define SIO1INT	0x0022
#define SADINT	0x0024
#define I2C0INT	0x002E
#define TM0INT	0x0030
#define TM1INT	0x0032
#define TM8INT	0x0034
#define TM9INT	0x0036
#define UA0INT	0x0040
#define UA1INT	0x0042
#define TMAINT	0x005C
#define TMBINT	0x005E
#define PW4INT	0x0060
#define PW5INT	0x0062
#define T128HINT	0x006A
#define T32HINT	0x006E
#define T16HINT	0x0070
#define T2HINT	0x0076
/*---------------------------------------------------
	END OF CODE ADDRESS SYMBOLS
---------------------------------------------------*/

/*---------------------------------------------------
	DATA ADDRESS SYMBOLS
---------------------------------------------------*/
#define DSR (*(volatile unsigned char __near *)0xF000)
#define _B_DSR (*(volatile _BYTE_FIELD __near *)0xF000)

#define RSTAT (*(volatile unsigned char __near *)0xF001)
#define _B_RSTAT (*(volatile _BYTE_FIELD __near *)0xF001)

#define FCON (*(volatile unsigned int __near *)0xF002)

#define FCON0 (*(volatile unsigned char __near *)0xF002)
#define _B_FCON0 (*(volatile _BYTE_FIELD __near *)0xF002)

#define FCON1 (*(volatile unsigned char __near *)0xF003)
#define _B_FCON1 (*(volatile _BYTE_FIELD __near *)0xF003)

#define STPACP (*(volatile unsigned char __near *)0xF008)

#define SBYCON (*(volatile unsigned char __near *)0xF009)
#define _B_SBYCON (*(volatile _BYTE_FIELD __near *)0xF009)

#define LTBR (*(volatile unsigned char __near *)0xF00A)
#define _B_LTBR (*(volatile _BYTE_FIELD __near *)0xF00A)

#define HTBDR (*(volatile unsigned char __near *)0xF00B)
#define _B_HTBDR (*(volatile _BYTE_FIELD __near *)0xF00B)

#define LTBADJ (*(volatile unsigned int __near *)0xF00C)

#define LTBADJL (*(volatile unsigned char __near *)0xF00C)
#define _B_LTBADJL (*(volatile _BYTE_FIELD __near *)0xF00C)

#define LTBADJH (*(volatile unsigned char __near *)0xF00D)
#define _B_LTBADJH (*(volatile _BYTE_FIELD __near *)0xF00D)

#define WDTCON (*(volatile unsigned char __near *)0xF00E)
#define _B_WDTCON (*(volatile _BYTE_FIELD __near *)0xF00E)

#define WDTMOD (*(volatile unsigned char __near *)0xF00F)
#define _B_WDTMOD (*(volatile _BYTE_FIELD __near *)0xF00F)

#define IE0 (*(volatile unsigned char __near *)0xF010)
#define _B_IE0 (*(volatile _BYTE_FIELD __near *)0xF010)

#define IE1 (*(volatile unsigned char __near *)0xF011)
#define _B_IE1 (*(volatile _BYTE_FIELD __near *)0xF011)

#define IE2 (*(volatile unsigned char __near *)0xF012)
#define _B_IE2 (*(volatile _BYTE_FIELD __near *)0xF012)

#define IE3 (*(volatile unsigned char __near *)0xF013)
#define _B_IE3 (*(volatile _BYTE_FIELD __near *)0xF013)

#define IE4 (*(volatile unsigned char __near *)0xF014)
#define _B_IE4 (*(volatile _BYTE_FIELD __near *)0xF014)

#define IE5 (*(volatile unsigned char __near *)0xF015)
#define _B_IE5 (*(volatile _BYTE_FIELD __near *)0xF015)

#define IE6 (*(volatile unsigned char __near *)0xF016)
#define _B_IE6 (*(volatile _BYTE_FIELD __near *)0xF016)

#define IE7 (*(volatile unsigned char __near *)0xF017)
#define _B_IE7 (*(volatile _BYTE_FIELD __near *)0xF017)

#define IRQ0 (*(volatile unsigned char __near *)0xF018)
#define _B_IRQ0 (*(volatile _BYTE_FIELD __near *)0xF018)

#define IRQ1 (*(volatile unsigned char __near *)0xF019)
#define _B_IRQ1 (*(volatile _BYTE_FIELD __near *)0xF019)

#define IRQ2 (*(volatile unsigned char __near *)0xF01A)
#define _B_IRQ2 (*(volatile _BYTE_FIELD __near *)0xF01A)

#define IRQ3 (*(volatile unsigned char __near *)0xF01B)
#define _B_IRQ3 (*(volatile _BYTE_FIELD __near *)0xF01B)

#define IRQ4 (*(volatile unsigned char __near *)0xF01C)
#define _B_IRQ4 (*(volatile _BYTE_FIELD __near *)0xF01C)

#define IRQ5 (*(volatile unsigned char __near *)0xF01D)
#define _B_IRQ5 (*(volatile _BYTE_FIELD __near *)0xF01D)

#define IRQ6 (*(volatile unsigned char __near *)0xF01E)
#define _B_IRQ6 (*(volatile _BYTE_FIELD __near *)0xF01E)

#define IRQ7 (*(volatile unsigned char __near *)0xF01F)
#define _B_IRQ7 (*(volatile _BYTE_FIELD __near *)0xF01F)

#define EXICON0 (*(volatile unsigned char __near *)0xF020)
#define _B_EXICON0 (*(volatile _BYTE_FIELD __near *)0xF020)

#define EXICON1 (*(volatile unsigned char __near *)0xF021)
#define _B_EXICON1 (*(volatile _BYTE_FIELD __near *)0xF021)

#define EXICON2 (*(volatile unsigned char __near *)0xF022)
#define _B_EXICON2 (*(volatile _BYTE_FIELD __near *)0xF022)

#define BLKCON0 (*(volatile unsigned char __near *)0xF028)
#define _B_BLKCON0 (*(volatile _BYTE_FIELD __near *)0xF028)

#define BLKCON2 (*(volatile unsigned char __near *)0xF02A)
#define _B_BLKCON2 (*(volatile _BYTE_FIELD __near *)0xF02A)

#define BLKCON4 (*(volatile unsigned char __near *)0xF02C)
#define _B_BLKCON4 (*(volatile _BYTE_FIELD __near *)0xF02C)

#define BLKCON6 (*(volatile unsigned char __near *)0xF02E)
#define _B_BLKCON6 (*(volatile _BYTE_FIELD __near *)0xF02E)

#define BLKCON7 (*(volatile unsigned char __near *)0xF02F)
#define _B_BLKCON7 (*(volatile _BYTE_FIELD __near *)0xF02F)

#define TM0DC (*(volatile unsigned int __near *)0xF030)

#define TM0D (*(volatile unsigned char __near *)0xF030)
#define _B_TM0D (*(volatile _BYTE_FIELD __near *)0xF030)

#define TM0C (*(volatile unsigned char __near *)0xF031)
#define _B_TM0C (*(volatile _BYTE_FIELD __near *)0xF031)

#define TM0CON (*(volatile unsigned int __near *)0xF032)

#define TM0CON0 (*(volatile unsigned char __near *)0xF032)
#define _B_TM0CON0 (*(volatile _BYTE_FIELD __near *)0xF032)

#define TM0CON1 (*(volatile unsigned char __near *)0xF033)
#define _B_TM0CON1 (*(volatile _BYTE_FIELD __near *)0xF033)

#define TM1DC (*(volatile unsigned int __near *)0xF034)

#define TM1D (*(volatile unsigned char __near *)0xF034)
#define _B_TM1D (*(volatile _BYTE_FIELD __near *)0xF034)

#define TM1C (*(volatile unsigned char __near *)0xF035)
#define _B_TM1C (*(volatile _BYTE_FIELD __near *)0xF035)

#define TM1CON (*(volatile unsigned int __near *)0xF036)

#define TM1CON0 (*(volatile unsigned char __near *)0xF036)
#define _B_TM1CON0 (*(volatile _BYTE_FIELD __near *)0xF036)

#define TM1CON1 (*(volatile unsigned char __near *)0xF037)
#define _B_TM1CON1 (*(volatile _BYTE_FIELD __near *)0xF037)

#define FSTAT (*(volatile unsigned char __near *)0xF070)
#define _B_FSTAT (*(volatile _BYTE_FIELD __near *)0xF070)

#define BLDCON (*(volatile unsigned int __near *)0xF0D0)

#define BLDCON0 (*(volatile unsigned char __near *)0xF0D0)
#define _B_BLDCON0 (*(volatile _BYTE_FIELD __near *)0xF0D0)

#define BLDCON1 (*(volatile unsigned char __near *)0xF0D1)
#define _B_BLDCON1 (*(volatile _BYTE_FIELD __near *)0xF0D1)

#define BIASCON (*(volatile unsigned char __near *)0xF0F0)
#define _B_BIASCON (*(volatile _BYTE_FIELD __near *)0xF0F0)

#define DSPMOD (*(volatile unsigned int __near *)0xF0F2)

#define DSPMOD0 (*(volatile unsigned char __near *)0xF0F2)
#define _B_DSPMOD0 (*(volatile _BYTE_FIELD __near *)0xF0F2)

#define DSPCON (*(volatile unsigned char __near *)0xF0F4)
#define _B_DSPCON (*(volatile _BYTE_FIELD __near *)0xF0F4)

#define DSPR00 (*(volatile unsigned char __near *)0xF100)

#define DSPR01 (*(volatile unsigned char __near *)0xF101)

#define DSPR02 (*(volatile unsigned char __near *)0xF102)

#define DSPR03 (*(volatile unsigned char __near *)0xF103)

#define DSPR04 (*(volatile unsigned char __near *)0xF104)

#define DSPR05 (*(volatile unsigned char __near *)0xF105)

#define DSPR06 (*(volatile unsigned char __near *)0xF106)

#define DSPR07 (*(volatile unsigned char __near *)0xF107)

#define DSPR08 (*(volatile unsigned char __near *)0xF108)

#define DSPR09 (*(volatile unsigned char __near *)0xF109)

#define DSPR0A (*(volatile unsigned char __near *)0xF10A)

#define DSPR0B (*(volatile unsigned char __near *)0xF10B)

#define DSPR0C (*(volatile unsigned char __near *)0xF10C)

#define DSPR0D (*(volatile unsigned char __near *)0xF10D)

#define DSPR0E (*(volatile unsigned char __near *)0xF10E)

#define DSPR0F (*(volatile unsigned char __near *)0xF10F)

#define DSPR10 (*(volatile unsigned char __near *)0xF110)

#define DSPR11 (*(volatile unsigned char __near *)0xF111)

#define DSPR12 (*(volatile unsigned char __near *)0xF112)

#define DSPR13 (*(volatile unsigned char __near *)0xF113)

#define DSPR14 (*(volatile unsigned char __near *)0xF114)

#define DSPR15 (*(volatile unsigned char __near *)0xF115)

#define DSPR16 (*(volatile unsigned char __near *)0xF116)

#define DSPR17 (*(volatile unsigned char __near *)0xF117)

#define DSPR18 (*(volatile unsigned char __near *)0xF118)

#define DSPR19 (*(volatile unsigned char __near *)0xF119)

#define DSPR1A (*(volatile unsigned char __near *)0xF11A)

#define DSPR1B (*(volatile unsigned char __near *)0xF11B)

#define DSPR1C (*(volatile unsigned char __near *)0xF11C)

#define DSPR1D (*(volatile unsigned char __near *)0xF11D)

#define DSPR1E (*(volatile unsigned char __near *)0xF11E)

#define DSPR1F (*(volatile unsigned char __near *)0xF11F)

#define DSPR20 (*(volatile unsigned char __near *)0xF120)

#define DSPR21 (*(volatile unsigned char __near *)0xF121)

#define DSPR22 (*(volatile unsigned char __near *)0xF122)

#define DSPR23 (*(volatile unsigned char __near *)0xF123)

#define DSPR24 (*(volatile unsigned char __near *)0xF124)

#define DSPR25 (*(volatile unsigned char __near *)0xF125)

#define DSPR26 (*(volatile unsigned char __near *)0xF126)

#define DSPR27 (*(volatile unsigned char __near *)0xF127)

#define NMID (*(volatile unsigned char __near *)0xF200)
#define _B_NMID (*(volatile _BYTE_FIELD __near *)0xF200)

#define NMICON (*(volatile unsigned char __near *)0xF201)
#define _B_NMICON (*(volatile _BYTE_FIELD __near *)0xF201)

#define P0D (*(volatile unsigned char __near *)0xF204)
#define _B_P0D (*(volatile _BYTE_FIELD __near *)0xF204)

#define P0CON (*(volatile unsigned int __near *)0xF206)

#define P0CON0 (*(volatile unsigned char __near *)0xF206)
#define _B_P0CON0 (*(volatile _BYTE_FIELD __near *)0xF206)

#define P0CON1 (*(volatile unsigned char __near *)0xF207)
#define _B_P0CON1 (*(volatile _BYTE_FIELD __near *)0xF207)

#define P1D (*(volatile unsigned char __near *)0xF208)
#define _B_P1D (*(volatile _BYTE_FIELD __near *)0xF208)

#define P1CON (*(volatile unsigned int __near *)0xF20A)

#define P1CON0 (*(volatile unsigned char __near *)0xF20A)
#define _B_P1CON0 (*(volatile _BYTE_FIELD __near *)0xF20A)

#define P1CON1 (*(volatile unsigned char __near *)0xF20B)
#define _B_P1CON1 (*(volatile _BYTE_FIELD __near *)0xF20B)

#define P2D (*(volatile unsigned char __near *)0xF210)
#define _B_P2D (*(volatile _BYTE_FIELD __near *)0xF210)

#define P2CON (*(volatile unsigned int __near *)0xF212)

#define P2CON0 (*(volatile unsigned char __near *)0xF212)
#define _B_P2CON0 (*(volatile _BYTE_FIELD __near *)0xF212)

#define P2CON1 (*(volatile unsigned char __near *)0xF213)
#define _B_P2CON1 (*(volatile _BYTE_FIELD __near *)0xF213)

#define P2MOD (*(volatile unsigned char __near *)0xF214)
#define _B_P2MOD (*(volatile _BYTE_FIELD __near *)0xF214)

#define P2MOD1 (*(volatile unsigned char __near *)0xF215)
#define _B_P2MOD1 (*(volatile _BYTE_FIELD __near *)0xF215)

#define P3D (*(volatile unsigned char __near *)0xF218)
#define _B_P3D (*(volatile _BYTE_FIELD __near *)0xF218)

#define P3DIR (*(volatile unsigned char __near *)0xF219)
#define _B_P3DIR (*(volatile _BYTE_FIELD __near *)0xF219)

#define P3CON (*(volatile unsigned int __near *)0xF21A)

#define P3CON0 (*(volatile unsigned char __near *)0xF21A)
#define _B_P3CON0 (*(volatile _BYTE_FIELD __near *)0xF21A)

#define P3CON1 (*(volatile unsigned char __near *)0xF21B)
#define _B_P3CON1 (*(volatile _BYTE_FIELD __near *)0xF21B)

#define P3MOD (*(volatile unsigned int __near *)0xF21C)

#define P3MOD0 (*(volatile unsigned char __near *)0xF21C)
#define _B_P3MOD0 (*(volatile _BYTE_FIELD __near *)0xF21C)

#define P3MOD1 (*(volatile unsigned char __near *)0xF21D)
#define _B_P3MOD1 (*(volatile _BYTE_FIELD __near *)0xF21D)

#define P4D (*(volatile unsigned char __near *)0xF220)
#define _B_P4D (*(volatile _BYTE_FIELD __near *)0xF220)

#define P4DIR (*(volatile unsigned char __near *)0xF221)
#define _B_P4DIR (*(volatile _BYTE_FIELD __near *)0xF221)

#define P4CON (*(volatile unsigned int __near *)0xF222)

#define P4CON0 (*(volatile unsigned char __near *)0xF222)
#define _B_P4CON0 (*(volatile _BYTE_FIELD __near *)0xF222)

#define P4CON1 (*(volatile unsigned char __near *)0xF223)
#define _B_P4CON1 (*(volatile _BYTE_FIELD __near *)0xF223)

#define P4MOD (*(volatile unsigned int __near *)0xF224)

#define P4MOD0 (*(volatile unsigned char __near *)0xF224)
#define _B_P4MOD0 (*(volatile _BYTE_FIELD __near *)0xF224)

#define P4MOD1 (*(volatile unsigned char __near *)0xF225)
#define _B_P4MOD1 (*(volatile _BYTE_FIELD __near *)0xF225)

#define P5D (*(volatile unsigned char __near *)0xF228)
#define _B_P5D (*(volatile _BYTE_FIELD __near *)0xF228)

#define P5DIR (*(volatile unsigned char __near *)0xF229)
#define _B_P5DIR (*(volatile _BYTE_FIELD __near *)0xF229)

#define P5CON (*(volatile unsigned int __near *)0xF22A)

#define P5CON0 (*(volatile unsigned char __near *)0xF22A)
#define _B_P5CON0 (*(volatile _BYTE_FIELD __near *)0xF22A)

#define P5CON1 (*(volatile unsigned char __near *)0xF22B)
#define _B_P5CON1 (*(volatile _BYTE_FIELD __near *)0xF22B)

#define P5MOD (*(volatile unsigned int __near *)0xF22C)

#define P5MOD0 (*(volatile unsigned char __near *)0xF22C)
#define _B_P5MOD0 (*(volatile _BYTE_FIELD __near *)0xF22C)

#define P5MOD1 (*(volatile unsigned char __near *)0xF22D)
#define _B_P5MOD1 (*(volatile _BYTE_FIELD __near *)0xF22D)

#define P6D (*(volatile unsigned char __near *)0xF230)
#define _B_P6D (*(volatile _BYTE_FIELD __near *)0xF230)

#define P6DIR (*(volatile unsigned char __near *)0xF231)
#define _B_P6DIR (*(volatile _BYTE_FIELD __near *)0xF231)

#define P6CON (*(volatile unsigned int __near *)0xF232)

#define P6CON0 (*(volatile unsigned char __near *)0xF232)
#define _B_P6CON0 (*(volatile _BYTE_FIELD __near *)0xF232)

#define P6CON1 (*(volatile unsigned char __near *)0xF233)
#define _B_P6CON1 (*(volatile _BYTE_FIELD __near *)0xF233)

#define P9D (*(volatile unsigned char __near *)0xF248)
#define _B_P9D (*(volatile _BYTE_FIELD __near *)0xF248)

#define P9CON (*(volatile unsigned int __near *)0xF24A)

#define P9CON0 (*(volatile unsigned char __near *)0xF24A)
#define _B_P9CON0 (*(volatile _BYTE_FIELD __near *)0xF24A)

#define P9CON1 (*(volatile unsigned char __near *)0xF24B)
#define _B_P9CON1 (*(volatile _BYTE_FIELD __near *)0xF24B)

#define PCD (*(volatile unsigned char __near *)0xF260)
#define _B_PCD (*(volatile _BYTE_FIELD __near *)0xF260)

#define PCDIR (*(volatile unsigned char __near *)0xF261)
#define _B_PCDIR (*(volatile _BYTE_FIELD __near *)0xF261)

#define PCCON (*(volatile unsigned int __near *)0xF262)

#define PCCON0 (*(volatile unsigned char __near *)0xF262)
#define _B_PCCON0 (*(volatile _BYTE_FIELD __near *)0xF262)

#define PCCON1 (*(volatile unsigned char __near *)0xF263)
#define _B_PCCON1 (*(volatile _BYTE_FIELD __near *)0xF263)

#define PDD (*(volatile unsigned char __near *)0xF268)
#define _B_PDD (*(volatile _BYTE_FIELD __near *)0xF268)

#define PDDIR (*(volatile unsigned char __near *)0xF269)
#define _B_PDDIR (*(volatile _BYTE_FIELD __near *)0xF269)

#define PDCON (*(volatile unsigned int __near *)0xF26A)

#define PDCON0 (*(volatile unsigned char __near *)0xF26A)
#define _B_PDCON0 (*(volatile _BYTE_FIELD __near *)0xF26A)

#define PDCON1 (*(volatile unsigned char __near *)0xF26B)
#define _B_PDCON1 (*(volatile _BYTE_FIELD __near *)0xF26B)

#define PED (*(volatile unsigned char __near *)0xF270)
#define _B_PED (*(volatile _BYTE_FIELD __near *)0xF270)

#define PEDIR (*(volatile unsigned char __near *)0xF271)
#define _B_PEDIR (*(volatile _BYTE_FIELD __near *)0xF271)

#define PECON (*(volatile unsigned int __near *)0xF272)

#define PECON0 (*(volatile unsigned char __near *)0xF272)
#define _B_PECON0 (*(volatile _BYTE_FIELD __near *)0xF272)

#define PECON1 (*(volatile unsigned char __near *)0xF273)
#define _B_PECON1 (*(volatile _BYTE_FIELD __near *)0xF273)

#define PFD (*(volatile unsigned char __near *)0xF278)
#define _B_PFD (*(volatile _BYTE_FIELD __near *)0xF278)

#define PFDIR (*(volatile unsigned char __near *)0xF279)
#define _B_PFDIR (*(volatile _BYTE_FIELD __near *)0xF279)

#define PFCON (*(volatile unsigned int __near *)0xF27A)

#define PFCON0 (*(volatile unsigned char __near *)0xF27A)
#define _B_PFCON0 (*(volatile _BYTE_FIELD __near *)0xF27A)

#define PFCON1 (*(volatile unsigned char __near *)0xF27B)
#define _B_PFCON1 (*(volatile _BYTE_FIELD __near *)0xF27B)

#define SIO0BUF (*(volatile unsigned int __near *)0xF280)

#define SIO0BUFL (*(volatile unsigned char __near *)0xF280)
#define _B_SIO0BUFL (*(volatile _BYTE_FIELD __near *)0xF280)

#define SIO0BUFH (*(volatile unsigned char __near *)0xF281)
#define _B_SIO0BUFH (*(volatile _BYTE_FIELD __near *)0xF281)

#define SIO0CON (*(volatile unsigned char __near *)0xF282)
#define _B_SIO0CON (*(volatile _BYTE_FIELD __near *)0xF282)

#define SIO0MOD (*(volatile unsigned int __near *)0xF284)

#define SIO0MOD0 (*(volatile unsigned char __near *)0xF284)
#define _B_SIO0MOD0 (*(volatile _BYTE_FIELD __near *)0xF284)

#define SIO0MOD1 (*(volatile unsigned char __near *)0xF285)
#define _B_SIO0MOD1 (*(volatile _BYTE_FIELD __near *)0xF285)

#define SIO1BUF (*(volatile unsigned int __near *)0xF288)

#define SIO1BUFL (*(volatile unsigned char __near *)0xF288)
#define _B_SIO1BUFL (*(volatile _BYTE_FIELD __near *)0xF288)

#define SIO1BUFH (*(volatile unsigned char __near *)0xF289)
#define _B_SIO1BUFH (*(volatile _BYTE_FIELD __near *)0xF289)

#define SIO1CON (*(volatile unsigned char __near *)0xF28A)
#define _B_SIO1CON (*(volatile _BYTE_FIELD __near *)0xF28A)

#define SIO1MOD (*(volatile unsigned int __near *)0xF28C)

#define SIO1MOD0 (*(volatile unsigned char __near *)0xF28C)
#define _B_SIO1MOD0 (*(volatile _BYTE_FIELD __near *)0xF28C)

#define SIO1MOD1 (*(volatile unsigned char __near *)0xF28D)
#define _B_SIO1MOD1 (*(volatile _BYTE_FIELD __near *)0xF28D)

#define UA0BUF (*(volatile unsigned char __near *)0xF290)
#define _B_UA0BUF (*(volatile _BYTE_FIELD __near *)0xF290)

#define UA0CON (*(volatile unsigned char __near *)0xF291)
#define _B_UA0CON (*(volatile _BYTE_FIELD __near *)0xF291)

#define UA0MOD (*(volatile unsigned int __near *)0xF292)

#define UA0MOD0 (*(volatile unsigned char __near *)0xF292)
#define _B_UA0MOD0 (*(volatile _BYTE_FIELD __near *)0xF292)

#define UA0MOD1 (*(volatile unsigned char __near *)0xF293)
#define _B_UA0MOD1 (*(volatile _BYTE_FIELD __near *)0xF293)

#define UA0BRT (*(volatile unsigned int __near *)0xF294)

#define UA0BRTL (*(volatile unsigned char __near *)0xF294)
#define _B_UA0BRTL (*(volatile _BYTE_FIELD __near *)0xF294)

#define UA0BRTH (*(volatile unsigned char __near *)0xF295)
#define _B_UA0BRTH (*(volatile _BYTE_FIELD __near *)0xF295)

#define UA0STAT (*(volatile unsigned char __near *)0xF296)
#define _B_UA0STAT (*(volatile _BYTE_FIELD __near *)0xF296)

#define UA1BUF (*(volatile unsigned char __near *)0xF298)
#define _B_UA1BUF (*(volatile _BYTE_FIELD __near *)0xF298)

#define UA1CON (*(volatile unsigned char __near *)0xF299)
#define _B_UA1CON (*(volatile _BYTE_FIELD __near *)0xF299)

#define UA1MOD (*(volatile unsigned int __near *)0xF29A)

#define UA1MOD0 (*(volatile unsigned char __near *)0xF29A)
#define _B_UA1MOD0 (*(volatile _BYTE_FIELD __near *)0xF29A)

#define UA1MOD1 (*(volatile unsigned char __near *)0xF29B)
#define _B_UA1MOD1 (*(volatile _BYTE_FIELD __near *)0xF29B)

#define UA1BRT (*(volatile unsigned int __near *)0xF29C)

#define UA1BRTL (*(volatile unsigned char __near *)0xF29C)
#define _B_UA1BRTL (*(volatile _BYTE_FIELD __near *)0xF29C)

#define UA1BRTH (*(volatile unsigned char __near *)0xF29D)
#define _B_UA1BRTH (*(volatile _BYTE_FIELD __near *)0xF29D)

#define UA1STAT (*(volatile unsigned char __near *)0xF29E)
#define _B_UA1STAT (*(volatile _BYTE_FIELD __near *)0xF29E)

#define I2C0RD (*(volatile unsigned char __near *)0xF2A0)
#define _B_I2C0RD (*(volatile _BYTE_FIELD __near *)0xF2A0)

#define I2C0SA (*(volatile unsigned char __near *)0xF2A1)
#define _B_I2C0SA (*(volatile _BYTE_FIELD __near *)0xF2A1)

#define I2C0TD (*(volatile unsigned char __near *)0xF2A2)
#define _B_I2C0TD (*(volatile _BYTE_FIELD __near *)0xF2A2)

#define I2C0CON (*(volatile unsigned char __near *)0xF2A3)
#define _B_I2C0CON (*(volatile _BYTE_FIELD __near *)0xF2A3)

#define I2C0MOD (*(volatile unsigned char __near *)0xF2A4)
#define _B_I2C0MOD (*(volatile _BYTE_FIELD __near *)0xF2A4)

#define I2C0STAT (*(volatile unsigned char __near *)0xF2A5)
#define _B_I2C0STAT (*(volatile _BYTE_FIELD __near *)0xF2A5)

#define SADR0 (*(volatile unsigned int __near *)0xF2D0)

#define SADR0L (*(volatile unsigned char __near *)0xF2D0)
#define _B_SADR0L (*(volatile _BYTE_FIELD __near *)0xF2D0)

#define SADR0H (*(volatile unsigned char __near *)0xF2D1)
#define _B_SADR0H (*(volatile _BYTE_FIELD __near *)0xF2D1)

#define SADR1 (*(volatile unsigned int __near *)0xF2D2)

#define SADR1L (*(volatile unsigned char __near *)0xF2D2)
#define _B_SADR1L (*(volatile _BYTE_FIELD __near *)0xF2D2)

#define SADR1H (*(volatile unsigned char __near *)0xF2D3)
#define _B_SADR1H (*(volatile _BYTE_FIELD __near *)0xF2D3)

#define SADR2 (*(volatile unsigned int __near *)0xF2D4)

#define SADR2L (*(volatile unsigned char __near *)0xF2D4)
#define _B_SADR2L (*(volatile _BYTE_FIELD __near *)0xF2D4)

#define SADR2H (*(volatile unsigned char __near *)0xF2D5)
#define _B_SADR2H (*(volatile _BYTE_FIELD __near *)0xF2D5)

#define SADR3 (*(volatile unsigned int __near *)0xF2D6)

#define SADR3L (*(volatile unsigned char __near *)0xF2D6)
#define _B_SADR3L (*(volatile _BYTE_FIELD __near *)0xF2D6)

#define SADR3H (*(volatile unsigned char __near *)0xF2D7)
#define _B_SADR3H (*(volatile _BYTE_FIELD __near *)0xF2D7)

#define SADR4 (*(volatile unsigned int __near *)0xF2D8)

#define SADR4L (*(volatile unsigned char __near *)0xF2D8)
#define _B_SADR4L (*(volatile _BYTE_FIELD __near *)0xF2D8)

#define SADR4H (*(volatile unsigned char __near *)0xF2D9)
#define _B_SADR4H (*(volatile _BYTE_FIELD __near *)0xF2D9)

#define SADR5 (*(volatile unsigned int __near *)0xF2DA)

#define SADR5L (*(volatile unsigned char __near *)0xF2DA)
#define _B_SADR5L (*(volatile _BYTE_FIELD __near *)0xF2DA)

#define SADR5H (*(volatile unsigned char __near *)0xF2DB)
#define _B_SADR5H (*(volatile _BYTE_FIELD __near *)0xF2DB)

#define SADR6 (*(volatile unsigned int __near *)0xF2DC)

#define SADR6L (*(volatile unsigned char __near *)0xF2DC)
#define _B_SADR6L (*(volatile _BYTE_FIELD __near *)0xF2DC)

#define SADR6H (*(volatile unsigned char __near *)0xF2DD)
#define _B_SADR6H (*(volatile _BYTE_FIELD __near *)0xF2DD)

#define SADR7 (*(volatile unsigned int __near *)0xF2DE)

#define SADR7L (*(volatile unsigned char __near *)0xF2DE)
#define _B_SADR7L (*(volatile _BYTE_FIELD __near *)0xF2DE)

#define SADR7H (*(volatile unsigned char __near *)0xF2DF)
#define _B_SADR7H (*(volatile _BYTE_FIELD __near *)0xF2DF)

#define SADR8 (*(volatile unsigned int __near *)0xF2E0)

#define SADR8L (*(volatile unsigned char __near *)0xF2E0)
#define _B_SADR8L (*(volatile _BYTE_FIELD __near *)0xF2E0)

#define SADR8H (*(volatile unsigned char __near *)0xF2E1)
#define _B_SADR8H (*(volatile _BYTE_FIELD __near *)0xF2E1)

#define SADR9 (*(volatile unsigned int __near *)0xF2E2)

#define SADR9L (*(volatile unsigned char __near *)0xF2E2)
#define _B_SADR9L (*(volatile _BYTE_FIELD __near *)0xF2E2)

#define SADR9H (*(volatile unsigned char __near *)0xF2E3)
#define _B_SADR9H (*(volatile _BYTE_FIELD __near *)0xF2E3)

#define SADRA (*(volatile unsigned int __near *)0xF2E4)

#define SADRAL (*(volatile unsigned char __near *)0xF2E4)
#define _B_SADRAL (*(volatile _BYTE_FIELD __near *)0xF2E4)

#define SADRAH (*(volatile unsigned char __near *)0xF2E5)
#define _B_SADRAH (*(volatile _BYTE_FIELD __near *)0xF2E5)

#define SADRB (*(volatile unsigned int __near *)0xF2E6)

#define SADRBL (*(volatile unsigned char __near *)0xF2E6)
#define _B_SADRBL (*(volatile _BYTE_FIELD __near *)0xF2E6)

#define SADRBH (*(volatile unsigned char __near *)0xF2E7)
#define _B_SADRBH (*(volatile _BYTE_FIELD __near *)0xF2E7)

#define SADRC (*(volatile unsigned int __near *)0xF2E8)

#define SADRCL (*(volatile unsigned char __near *)0xF2E8)
#define _B_SADRCL (*(volatile _BYTE_FIELD __near *)0xF2E8)

#define SADRCH (*(volatile unsigned char __near *)0xF2E9)
#define _B_SADRCH (*(volatile _BYTE_FIELD __near *)0xF2E9)

#define SADRD (*(volatile unsigned int __near *)0xF2EA)

#define SADRDL (*(volatile unsigned char __near *)0xF2EA)
#define _B_SADRDL (*(volatile _BYTE_FIELD __near *)0xF2EA)

#define SADRDH (*(volatile unsigned char __near *)0xF2EB)
#define _B_SADRDH (*(volatile _BYTE_FIELD __near *)0xF2EB)

#define SADRE (*(volatile unsigned int __near *)0xF2EC)

#define SADREL (*(volatile unsigned char __near *)0xF2EC)
#define _B_SADREL (*(volatile _BYTE_FIELD __near *)0xF2EC)

#define SADREH (*(volatile unsigned char __near *)0xF2ED)
#define _B_SADREH (*(volatile _BYTE_FIELD __near *)0xF2ED)

#define SADRF (*(volatile unsigned int __near *)0xF2EE)

#define SADRFL (*(volatile unsigned char __near *)0xF2EE)
#define _B_SADRFL (*(volatile _BYTE_FIELD __near *)0xF2EE)

#define SADRFH (*(volatile unsigned char __near *)0xF2EF)
#define _B_SADRFH (*(volatile _BYTE_FIELD __near *)0xF2EF)

#define SADCON (*(volatile unsigned int __near *)0xF2F0)

#define SADCON0 (*(volatile unsigned char __near *)0xF2F0)
#define _B_SADCON0 (*(volatile _BYTE_FIELD __near *)0xF2F0)

#define SADCON1 (*(volatile unsigned char __near *)0xF2F1)
#define _B_SADCON1 (*(volatile _BYTE_FIELD __near *)0xF2F1)

#define SADMOD (*(volatile unsigned int __near *)0xF2F2)

#define SADMOD0 (*(volatile unsigned char __near *)0xF2F2)
#define _B_SADMOD0 (*(volatile _BYTE_FIELD __near *)0xF2F2)

#define SADMOD1 (*(volatile unsigned char __near *)0xF2F3)
#define _B_SADMOD1 (*(volatile _BYTE_FIELD __near *)0xF2F3)

#define CODEOP0 (*(volatile unsigned char __near *)0xF3D8)
#define _B_CODEOP0 (*(volatile _BYTE_FIELD __near *)0xF3D8)

#define PW4P (*(volatile unsigned int __near *)0xF8A0)

#define PW4PL (*(volatile unsigned char __near *)0xF8A0)
#define _B_PW4PL (*(volatile _BYTE_FIELD __near *)0xF8A0)

#define PW4PH (*(volatile unsigned char __near *)0xF8A1)
#define _B_PW4PH (*(volatile _BYTE_FIELD __near *)0xF8A1)

#define PW4D (*(volatile unsigned int __near *)0xF8A2)

#define PW4DL (*(volatile unsigned char __near *)0xF8A2)
#define _B_PW4DL (*(volatile _BYTE_FIELD __near *)0xF8A2)

#define PW4DH (*(volatile unsigned char __near *)0xF8A3)
#define _B_PW4DH (*(volatile _BYTE_FIELD __near *)0xF8A3)

#define PW4C (*(volatile unsigned int __near *)0xF8A4)

#define PW4CL (*(volatile unsigned char __near *)0xF8A4)
#define _B_PW4CL (*(volatile _BYTE_FIELD __near *)0xF8A4)

#define PW4CH (*(volatile unsigned char __near *)0xF8A5)
#define _B_PW4CH (*(volatile _BYTE_FIELD __near *)0xF8A5)

#define PW4CON (*(volatile unsigned int __near *)0xF8A6)

#define PW4CON0 (*(volatile unsigned char __near *)0xF8A6)
#define _B_PW4CON0 (*(volatile _BYTE_FIELD __near *)0xF8A6)

#define PW4CON1 (*(volatile unsigned char __near *)0xF8A7)
#define _B_PW4CON1 (*(volatile _BYTE_FIELD __near *)0xF8A7)

#define PW4CON2 (*(volatile unsigned char __near *)0xF8A8)
#define _B_PW4CON2 (*(volatile _BYTE_FIELD __near *)0xF8A8)

#define PW4CON3 (*(volatile unsigned char __near *)0xF8A9)
#define _B_PW4CON3 (*(volatile _BYTE_FIELD __near *)0xF8A9)

#define PW5P (*(volatile unsigned int __near *)0xF8B0)

#define PW5PL (*(volatile unsigned char __near *)0xF8B0)
#define _B_PW5PL (*(volatile _BYTE_FIELD __near *)0xF8B0)

#define PW5PH (*(volatile unsigned char __near *)0xF8B1)
#define _B_PW5PH (*(volatile _BYTE_FIELD __near *)0xF8B1)

#define PW5D (*(volatile unsigned int __near *)0xF8B2)

#define PW5DL (*(volatile unsigned char __near *)0xF8B2)
#define _B_PW5DL (*(volatile _BYTE_FIELD __near *)0xF8B2)

#define PW5DH (*(volatile unsigned char __near *)0xF8B3)
#define _B_PW5DH (*(volatile _BYTE_FIELD __near *)0xF8B3)

#define PW5C (*(volatile unsigned int __near *)0xF8B4)

#define PW5CL (*(volatile unsigned char __near *)0xF8B4)
#define _B_PW5CL (*(volatile _BYTE_FIELD __near *)0xF8B4)

#define PW5CH (*(volatile unsigned char __near *)0xF8B5)
#define _B_PW5CH (*(volatile _BYTE_FIELD __near *)0xF8B5)

#define PW5CON (*(volatile unsigned int __near *)0xF8B6)

#define PW5CON0 (*(volatile unsigned char __near *)0xF8B6)
#define _B_PW5CON0 (*(volatile _BYTE_FIELD __near *)0xF8B6)

#define PW5CON1 (*(volatile unsigned char __near *)0xF8B7)
#define _B_PW5CON1 (*(volatile _BYTE_FIELD __near *)0xF8B7)

#define PW5CON2 (*(volatile unsigned char __near *)0xF8B8)
#define _B_PW5CON2 (*(volatile _BYTE_FIELD __near *)0xF8B8)

#define TM8DC (*(volatile unsigned int __near *)0xF8E0)

#define TM8D (*(volatile unsigned char __near *)0xF8E0)
#define _B_TM8D (*(volatile _BYTE_FIELD __near *)0xF8E0)

#define TM8C (*(volatile unsigned char __near *)0xF8E1)
#define _B_TM8C (*(volatile _BYTE_FIELD __near *)0xF8E1)

#define TM8CON (*(volatile unsigned int __near *)0xF8E2)

#define TM8CON0 (*(volatile unsigned char __near *)0xF8E2)
#define _B_TM8CON0 (*(volatile _BYTE_FIELD __near *)0xF8E2)

#define TM8CON1 (*(volatile unsigned char __near *)0xF8E3)
#define _B_TM8CON1 (*(volatile _BYTE_FIELD __near *)0xF8E3)

#define TM9DC (*(volatile unsigned int __near *)0xF8E4)

#define TM9D (*(volatile unsigned char __near *)0xF8E4)
#define _B_TM9D (*(volatile _BYTE_FIELD __near *)0xF8E4)

#define TM9C (*(volatile unsigned char __near *)0xF8E5)
#define _B_TM9C (*(volatile _BYTE_FIELD __near *)0xF8E5)

#define TM9CON (*(volatile unsigned int __near *)0xF8E6)

#define TM9CON0 (*(volatile unsigned char __near *)0xF8E6)
#define _B_TM9CON0 (*(volatile _BYTE_FIELD __near *)0xF8E6)

#define TM9CON1 (*(volatile unsigned char __near *)0xF8E7)
#define _B_TM9CON1 (*(volatile _BYTE_FIELD __near *)0xF8E7)

#define TMADC (*(volatile unsigned int __near *)0xF8E8)

#define TMAD (*(volatile unsigned char __near *)0xF8E8)
#define _B_TMAD (*(volatile _BYTE_FIELD __near *)0xF8E8)

#define TMAC (*(volatile unsigned char __near *)0xF8E9)
#define _B_TMAC (*(volatile _BYTE_FIELD __near *)0xF8E9)

#define TMACON (*(volatile unsigned int __near *)0xF8EA)

#define TMACON0 (*(volatile unsigned char __near *)0xF8EA)
#define _B_TMACON0 (*(volatile _BYTE_FIELD __near *)0xF8EA)

#define TMACON1 (*(volatile unsigned char __near *)0xF8EB)
#define _B_TMACON1 (*(volatile _BYTE_FIELD __near *)0xF8EB)

#define TMBDC (*(volatile unsigned int __near *)0xF8EC)

#define TMBD (*(volatile unsigned char __near *)0xF8EC)
#define _B_TMBD (*(volatile _BYTE_FIELD __near *)0xF8EC)

#define TMBC (*(volatile unsigned char __near *)0xF8ED)
#define _B_TMBC (*(volatile _BYTE_FIELD __near *)0xF8ED)

#define TMBCON (*(volatile unsigned int __near *)0xF8EE)

#define TMBCON0 (*(volatile unsigned char __near *)0xF8EE)
#define _B_TMBCON0 (*(volatile _BYTE_FIELD __near *)0xF8EE)

#define TMBCON1 (*(volatile unsigned char __near *)0xF8EF)
#define _B_TMBCON1 (*(volatile _BYTE_FIELD __near *)0xF8EF)

#define LSELS1 (*(volatile unsigned char __near *)0xF8F1)
#define _B_LSELS1 (*(volatile _BYTE_FIELD __near *)0xF8F1)

#define LSELS2 (*(volatile unsigned char __near *)0xF8F2)
#define _B_LSELS2 (*(volatile _BYTE_FIELD __near *)0xF8F2)

#define LSELS3 (*(volatile unsigned char __near *)0xF8F3)
#define _B_LSELS3 (*(volatile _BYTE_FIELD __near *)0xF8F3)

#define LSELS4 (*(volatile unsigned char __near *)0xF8F4)
#define _B_LSELS4 (*(volatile _BYTE_FIELD __near *)0xF8F4)

/*---------------------------------------------------
	END OF DATA ADDRESS SYMBOLS
---------------------------------------------------*/

/*---------------------------------------------------
	BIT ADDRESS SYMBOLS
---------------------------------------------------*/

#define DSR0		(_B_DSR.b0)
#define DSR1		(_B_DSR.b1)
#define DSR2		(_B_DSR.b2)
#define DSR3		(_B_DSR.b3)

#define POR		(_B_RSTAT.b0)
#define WDTR		(_B_RSTAT.b2)

#define SYSC0		(_B_FCON0.b0)
#define SYSC1		(_B_FCON0.b1)
#define OSCM0		(_B_FCON0.b2)
#define OSCM1		(_B_FCON0.b3)
#define OUTC0		(_B_FCON0.b4)
#define OUTC1		(_B_FCON0.b5)

#define SYSCLK		(_B_FCON1.b0)
#define ENOSC		(_B_FCON1.b1)
#define LPLL		(_B_FCON1.b7)

#define HLT		(_B_SBYCON.b0)
#define STP		(_B_SBYCON.b1)

#define T128HZ		(_B_LTBR.b0)
#define T64HZ		(_B_LTBR.b1)
#define T32HZ		(_B_LTBR.b2)
#define T16HZ		(_B_LTBR.b3)
#define T8HZ		(_B_LTBR.b4)
#define T4HZ		(_B_LTBR.b5)
#define T2HZ		(_B_LTBR.b6)
#define T1HZ		(_B_LTBR.b7)

#define HTD0		(_B_HTBDR.b0)
#define HTD1		(_B_HTBDR.b1)
#define HTD2		(_B_HTBDR.b2)
#define HTD3		(_B_HTBDR.b3)

#define LADJ0		(_B_LTBADJL.b0)
#define LADJ1		(_B_LTBADJL.b1)
#define LADJ2		(_B_LTBADJL.b2)
#define LADJ3		(_B_LTBADJL.b3)
#define LADJ4		(_B_LTBADJL.b4)
#define LADJ5		(_B_LTBADJL.b5)
#define LADJ6		(_B_LTBADJL.b6)
#define LADJ7		(_B_LTBADJL.b7)

#define LADJ8		(_B_LTBADJH.b0)
#define LADJ9		(_B_LTBADJH.b1)
#define LADJS		(_B_LTBADJH.b2)

#define WDP		(_B_WDTCON.b0)

#define WDT0		(_B_WDTMOD.b0)
#define WDT1		(_B_WDTMOD.b1)

#define ELOSC		(_B_IE0.b6)

#define EP00		(_B_IE1.b0)
#define EP01		(_B_IE1.b1)
#define EP02		(_B_IE1.b2)
#define EP03		(_B_IE1.b3)

#define ESIO0		(_B_IE2.b0)
#define ESIO1		(_B_IE2.b1)
#define ESAD		(_B_IE2.b2)
#define EI2C0		(_B_IE2.b7)

#define ETM0		(_B_IE3.b0)
#define ETM1		(_B_IE3.b1)
#define ETM8		(_B_IE3.b2)
#define ETM9		(_B_IE3.b3)

#define EUA0		(_B_IE4.b0)
#define EUA1		(_B_IE4.b1)

#define ETMA		(_B_IE5.b6)
#define ETMB		(_B_IE5.b7)

#define EPW4		(_B_IE6.b0)
#define EPW5		(_B_IE6.b1)
#define E128H		(_B_IE6.b5)
#define E32H		(_B_IE6.b7)

#define E16H		(_B_IE7.b0)
#define E2H		(_B_IE7.b3)

#define QWDT		(_B_IRQ0.b0)
#define QNMI		(_B_IRQ0.b1)
#define QLOSC		(_B_IRQ0.b6)

#define QP00		(_B_IRQ1.b0)
#define QP01		(_B_IRQ1.b1)
#define QP02		(_B_IRQ1.b2)
#define QP03		(_B_IRQ1.b3)

#define QSIO0		(_B_IRQ2.b0)
#define QSIO1		(_B_IRQ2.b1)
#define QSAD		(_B_IRQ2.b2)
#define QI2C0		(_B_IRQ2.b7)

#define QTM0		(_B_IRQ3.b0)
#define QTM1		(_B_IRQ3.b1)
#define QTM8		(_B_IRQ3.b2)
#define QTM9		(_B_IRQ3.b3)

#define QUA0		(_B_IRQ4.b0)
#define QUA1		(_B_IRQ4.b1)

#define QTMA		(_B_IRQ5.b6)
#define QTMB		(_B_IRQ5.b7)

#define QPW4		(_B_IRQ6.b0)
#define QPW5		(_B_IRQ6.b1)
#define Q128H		(_B_IRQ6.b5)
#define Q32H		(_B_IRQ6.b7)

#define Q16H		(_B_IRQ7.b0)
#define Q2H		(_B_IRQ7.b3)

#define P00E0		(_B_EXICON0.b0)
#define P01E0		(_B_EXICON0.b1)
#define P02E0		(_B_EXICON0.b2)
#define P03E0		(_B_EXICON0.b3)

#define P00E1		(_B_EXICON1.b0)
#define P01E1		(_B_EXICON1.b1)
#define P02E1		(_B_EXICON1.b2)
#define P03E1		(_B_EXICON1.b3)

#define P00SM		(_B_EXICON2.b0)
#define P01SM		(_B_EXICON2.b1)
#define P02SM		(_B_EXICON2.b2)
#define P03SM		(_B_EXICON2.b3)

#define DTM0		(_B_BLKCON0.b0)
#define DTM1		(_B_BLKCON0.b1)

#define DSIO0		(_B_BLKCON2.b0)
#define DSIO1		(_B_BLKCON2.b1)
#define DUA0		(_B_BLKCON2.b2)
#define DUA1		(_B_BLKCON2.b3)
#define DI2C0		(_B_BLKCON2.b7)

#define DSAD		(_B_BLKCON4.b0)
#define DBLD		(_B_BLKCON4.b5)
#define DLCD		(_B_BLKCON4.b6)

#define DTM8		(_B_BLKCON6.b0)
#define DTM9		(_B_BLKCON6.b1)
#define DTMA		(_B_BLKCON6.b2)
#define DTMB		(_B_BLKCON6.b3)

#define DPW4		(_B_BLKCON7.b0)
#define DPW5		(_B_BLKCON7.b1)

#define T0D0		(_B_TM0D.b0)
#define T0D1		(_B_TM0D.b1)
#define T0D2		(_B_TM0D.b2)
#define T0D3		(_B_TM0D.b3)
#define T0D4		(_B_TM0D.b4)
#define T0D5		(_B_TM0D.b5)
#define T0D6		(_B_TM0D.b6)
#define T0D7		(_B_TM0D.b7)

#define T0C0		(_B_TM0C.b0)
#define T0C1		(_B_TM0C.b1)
#define T0C2		(_B_TM0C.b2)
#define T0C3		(_B_TM0C.b3)
#define T0C4		(_B_TM0C.b4)
#define T0C5		(_B_TM0C.b5)
#define T0C6		(_B_TM0C.b6)
#define T0C7		(_B_TM0C.b7)

#define T0CS0		(_B_TM0CON0.b0)
#define T0CS1		(_B_TM0CON0.b1)
#define T01M16		(_B_TM0CON0.b2)

#define T0RUN		(_B_TM0CON1.b0)
#define T0STAT		(_B_TM0CON1.b7)

#define T1D0		(_B_TM1D.b0)
#define T1D1		(_B_TM1D.b1)
#define T1D2		(_B_TM1D.b2)
#define T1D3		(_B_TM1D.b3)
#define T1D4		(_B_TM1D.b4)
#define T1D5		(_B_TM1D.b5)
#define T1D6		(_B_TM1D.b6)
#define T1D7		(_B_TM1D.b7)

#define T1C0		(_B_TM1C.b0)
#define T1C1		(_B_TM1C.b1)
#define T1C2		(_B_TM1C.b2)
#define T1C3		(_B_TM1C.b3)
#define T1C4		(_B_TM1C.b4)
#define T1C5		(_B_TM1C.b5)
#define T1C6		(_B_TM1C.b6)
#define T1C7		(_B_TM1C.b7)

#define T1CS0		(_B_TM1CON0.b0)
#define T1CS1		(_B_TM1CON0.b1)

#define T1RUN		(_B_TM1CON1.b0)
#define T1STAT		(_B_TM1CON1.b7)

#define LOSCS		(_B_FSTAT.b2)

#define LD0		(_B_BLDCON0.b0)
#define LD1		(_B_BLDCON0.b1)
#define LD2		(_B_BLDCON0.b2)
#define LD3		(_B_BLDCON0.b3)

#define ENBL		(_B_BLDCON1.b0)
#define BLDF		(_B_BLDCON1.b1)

#define BSEL0		(_B_BIASCON.b4)
#define BSEL1		(_B_BIASCON.b5)

#define DUTY0		(_B_DSPMOD0.b0)
#define DUTY1		(_B_DSPMOD0.b1)
#define FRM0		(_B_DSPMOD0.b5)
#define FRM1		(_B_DSPMOD0.b6)
#define FRM2		(_B_DSPMOD0.b7)

#define LMD0		(_B_DSPCON.b0)
#define LMD1		(_B_DSPCON.b1)

#define NMI		(_B_NMID.b0)

#define NMIC		(_B_NMICON.b0)

#define P00D		(_B_P0D.b0)
#define P01D		(_B_P0D.b1)
#define P02D		(_B_P0D.b2)
#define P03D		(_B_P0D.b3)

#define P00C0		(_B_P0CON0.b0)
#define P01C0		(_B_P0CON0.b1)
#define P02C0		(_B_P0CON0.b2)
#define P03C0		(_B_P0CON0.b3)

#define P00C1		(_B_P0CON1.b0)
#define P01C1		(_B_P0CON1.b1)
#define P02C1		(_B_P0CON1.b2)
#define P03C1		(_B_P0CON1.b3)

#define P10D		(_B_P1D.b0)
#define P11D		(_B_P1D.b1)

#define P10C0		(_B_P1CON0.b0)
#define P11C0		(_B_P1CON0.b1)

#define P10C1		(_B_P1CON1.b0)
#define P11C1		(_B_P1CON1.b1)

#define P20D		(_B_P2D.b0)
#define P21D		(_B_P2D.b1)
#define P22D		(_B_P2D.b2)
#define P23D		(_B_P2D.b3)

#define P20C0		(_B_P2CON0.b0)
#define P21C0		(_B_P2CON0.b1)
#define P22C0		(_B_P2CON0.b2)
#define P23C0		(_B_P2CON0.b3)

#define P20C1		(_B_P2CON1.b0)
#define P21C1		(_B_P2CON1.b1)
#define P22C1		(_B_P2CON1.b2)
#define P23C1		(_B_P2CON1.b3)

#define P20MD		(_B_P2MOD.b0)
#define P21MD		(_B_P2MOD.b1)
#define P22MD		(_B_P2MOD.b2)
#define P23MD		(_B_P2MOD.b3)

#define P20MD1		(_B_P2MOD1.b0)
#define P21MD1		(_B_P2MOD1.b1)
#define P22MD1		(_B_P2MOD1.b2)
#define P23MD1		(_B_P2MOD1.b3)

#define P30D		(_B_P3D.b0)
#define P31D		(_B_P3D.b1)
#define P32D		(_B_P3D.b2)
#define P33D		(_B_P3D.b3)
#define P34D		(_B_P3D.b4)
#define P35D		(_B_P3D.b5)
#define P36D		(_B_P3D.b6)

#define P30DIR		(_B_P3DIR.b0)
#define P31DIR		(_B_P3DIR.b1)
#define P32DIR		(_B_P3DIR.b2)
#define P33DIR		(_B_P3DIR.b3)
#define P34DIR		(_B_P3DIR.b4)
#define P35DIR		(_B_P3DIR.b5)
#define P36DIR		(_B_P3DIR.b6)

#define P30C0		(_B_P3CON0.b0)
#define P31C0		(_B_P3CON0.b1)
#define P32C0		(_B_P3CON0.b2)
#define P33C0		(_B_P3CON0.b3)
#define P34C0		(_B_P3CON0.b4)
#define P35C0		(_B_P3CON0.b5)
#define P36C0		(_B_P3CON0.b6)

#define P30C1		(_B_P3CON1.b0)
#define P31C1		(_B_P3CON1.b1)
#define P32C1		(_B_P3CON1.b2)
#define P33C1		(_B_P3CON1.b3)
#define P34C1		(_B_P3CON1.b4)
#define P35C1		(_B_P3CON1.b5)
#define P36C1		(_B_P3CON1.b6)

#define P30MD0		(_B_P3MOD0.b0)
#define P31MD0		(_B_P3MOD0.b1)
#define P32MD0		(_B_P3MOD0.b2)
#define P33MD0		(_B_P3MOD0.b3)
#define P34MD0		(_B_P3MOD0.b4)
#define P35MD0		(_B_P3MOD0.b5)
#define P36MD0		(_B_P3MOD0.b6)

#define P30MD1		(_B_P3MOD1.b0)
#define P31MD1		(_B_P3MOD1.b1)
#define P32MD1		(_B_P3MOD1.b2)
#define P33MD1		(_B_P3MOD1.b3)
#define P34MD1		(_B_P3MOD1.b4)
#define P35MD1		(_B_P3MOD1.b5)
#define P36MD1		(_B_P3MOD1.b6)

#define P40D		(_B_P4D.b0)
#define P41D		(_B_P4D.b1)
#define P42D		(_B_P4D.b2)
#define P43D		(_B_P4D.b3)
#define P44D		(_B_P4D.b4)
#define P45D		(_B_P4D.b5)
#define P46D		(_B_P4D.b6)
#define P47D		(_B_P4D.b7)

#define P40DIR		(_B_P4DIR.b0)
#define P41DIR		(_B_P4DIR.b1)
#define P42DIR		(_B_P4DIR.b2)
#define P43DIR		(_B_P4DIR.b3)
#define P44DIR		(_B_P4DIR.b4)
#define P45DIR		(_B_P4DIR.b5)
#define P46DIR		(_B_P4DIR.b6)
#define P47DIR		(_B_P4DIR.b7)

#define P40C0		(_B_P4CON0.b0)
#define P41C0		(_B_P4CON0.b1)
#define P42C0		(_B_P4CON0.b2)
#define P43C0		(_B_P4CON0.b3)
#define P44C0		(_B_P4CON0.b4)
#define P45C0		(_B_P4CON0.b5)
#define P46C0		(_B_P4CON0.b6)
#define P47C0		(_B_P4CON0.b7)

#define P40C1		(_B_P4CON1.b0)
#define P41C1		(_B_P4CON1.b1)
#define P42C1		(_B_P4CON1.b2)
#define P43C1		(_B_P4CON1.b3)
#define P44C1		(_B_P4CON1.b4)
#define P45C1		(_B_P4CON1.b5)
#define P46C1		(_B_P4CON1.b6)
#define P47C1		(_B_P4CON1.b7)

#define P40MD0		(_B_P4MOD0.b0)
#define P41MD0		(_B_P4MOD0.b1)
#define P42MD0		(_B_P4MOD0.b2)
#define P43MD0		(_B_P4MOD0.b3)
#define P44MD0		(_B_P4MOD0.b4)
#define P45MD0		(_B_P4MOD0.b5)
#define P46MD0		(_B_P4MOD0.b6)
#define P47MD0		(_B_P4MOD0.b7)

#define P40MD1		(_B_P4MOD1.b0)
#define P41MD1		(_B_P4MOD1.b1)
#define P42MD1		(_B_P4MOD1.b2)
#define P43MD1		(_B_P4MOD1.b3)
#define P44MD1		(_B_P4MOD1.b4)
#define P45MD1		(_B_P4MOD1.b5)
#define P46MD1		(_B_P4MOD1.b6)
#define P47MD1		(_B_P4MOD1.b7)

#define P50D		(_B_P5D.b0)
#define P51D		(_B_P5D.b1)
#define P52D		(_B_P5D.b2)
#define P53D		(_B_P5D.b3)

#define P50DIR		(_B_P5DIR.b0)
#define P51DIR		(_B_P5DIR.b1)
#define P52DIR		(_B_P5DIR.b2)
#define P53DIR		(_B_P5DIR.b3)

#define P50C0		(_B_P5CON0.b0)
#define P51C0		(_B_P5CON0.b1)
#define P52C0		(_B_P5CON0.b2)
#define P53C0		(_B_P5CON0.b3)

#define P50C1		(_B_P5CON1.b0)
#define P51C1		(_B_P5CON1.b1)
#define P52C1		(_B_P5CON1.b2)
#define P53C1		(_B_P5CON1.b3)

#define P50MD0		(_B_P5MOD0.b0)
#define P51MD0		(_B_P5MOD0.b1)
#define P52MD0		(_B_P5MOD0.b2)
#define P53MD0		(_B_P5MOD0.b3)

#define P50MD1		(_B_P5MOD1.b0)
#define P51MD1		(_B_P5MOD1.b1)
#define P52MD1		(_B_P5MOD1.b2)
#define P53MD1		(_B_P5MOD1.b3)

#define P60D		(_B_P6D.b0)
#define P61D		(_B_P6D.b1)
#define P62D		(_B_P6D.b2)
#define P63D		(_B_P6D.b3)
#define P64D		(_B_P6D.b4)
#define P65D		(_B_P6D.b5)
#define P66D		(_B_P6D.b6)
#define P67D		(_B_P6D.b7)

#define P60DIR		(_B_P6DIR.b0)
#define P61DIR		(_B_P6DIR.b1)
#define P62DIR		(_B_P6DIR.b2)
#define P63DIR		(_B_P6DIR.b3)
#define P64DIR		(_B_P6DIR.b4)
#define P65DIR		(_B_P6DIR.b5)
#define P66DIR		(_B_P6DIR.b6)
#define P67DIR		(_B_P6DIR.b7)

#define P60C0		(_B_P6CON0.b0)
#define P61C0		(_B_P6CON0.b1)
#define P62C0		(_B_P6CON0.b2)
#define P63C0		(_B_P6CON0.b3)
#define P64C0		(_B_P6CON0.b4)
#define P65C0		(_B_P6CON0.b5)
#define P66C0		(_B_P6CON0.b6)
#define P67C0		(_B_P6CON0.b7)

#define P60C1		(_B_P6CON1.b0)
#define P61C1		(_B_P6CON1.b1)
#define P62C1		(_B_P6CON1.b2)
#define P63C1		(_B_P6CON1.b3)
#define P64C1		(_B_P6CON1.b4)
#define P65C1		(_B_P6CON1.b5)
#define P66C1		(_B_P6CON1.b6)
#define P67C1		(_B_P6CON1.b7)

#define P90D		(_B_P9D.b0)
#define P91D		(_B_P9D.b1)
#define P92D		(_B_P9D.b2)
#define P93D		(_B_P9D.b3)

#define P90C0		(_B_P9CON0.b0)
#define P91C0		(_B_P9CON0.b1)
#define P92C0		(_B_P9CON0.b2)
#define P93C0		(_B_P9CON0.b3)

#define P90C1		(_B_P9CON1.b0)
#define P91C1		(_B_P9CON1.b1)
#define P92C1		(_B_P9CON1.b2)
#define P93C1		(_B_P9CON1.b3)

#define PC0D		(_B_PCD.b0)
#define PC1D		(_B_PCD.b1)
#define PC2D		(_B_PCD.b2)
#define PC3D		(_B_PCD.b3)
#define PC4D		(_B_PCD.b4)
#define PC5D		(_B_PCD.b5)
#define PC6D		(_B_PCD.b6)
#define PC7D		(_B_PCD.b7)

#define PC0DIR		(_B_PCDIR.b0)
#define PC1DIR		(_B_PCDIR.b1)
#define PC2DIR		(_B_PCDIR.b2)
#define PC3DIR		(_B_PCDIR.b3)
#define PC4DIR		(_B_PCDIR.b4)
#define PC5DIR		(_B_PCDIR.b5)
#define PC6DIR		(_B_PCDIR.b6)
#define PC7DIR		(_B_PCDIR.b7)

#define PC0C0		(_B_PCCON0.b0)
#define PC1C0		(_B_PCCON0.b1)
#define PC2C0		(_B_PCCON0.b2)
#define PC3C0		(_B_PCCON0.b3)
#define PC4C0		(_B_PCCON0.b4)
#define PC5C0		(_B_PCCON0.b5)
#define PC6C0		(_B_PCCON0.b6)
#define PC7C0		(_B_PCCON0.b7)

#define PC0C1		(_B_PCCON1.b0)
#define PC1C1		(_B_PCCON1.b1)
#define PC2C1		(_B_PCCON1.b2)
#define PC3C1		(_B_PCCON1.b3)
#define PC4C1		(_B_PCCON1.b4)
#define PC5C1		(_B_PCCON1.b5)
#define PC6C1		(_B_PCCON1.b6)
#define PC7C1		(_B_PCCON1.b7)

#define PD0D		(_B_PDD.b0)
#define PD1D		(_B_PDD.b1)
#define PD2D		(_B_PDD.b2)
#define PD3D		(_B_PDD.b3)
#define PD4D		(_B_PDD.b4)
#define PD5D		(_B_PDD.b5)
#define PD6D		(_B_PDD.b6)
#define PD7D		(_B_PDD.b7)

#define PD0DIR		(_B_PDDIR.b0)
#define PD1DIR		(_B_PDDIR.b1)
#define PD2DIR		(_B_PDDIR.b2)
#define PD3DIR		(_B_PDDIR.b3)
#define PD4DIR		(_B_PDDIR.b4)
#define PD5DIR		(_B_PDDIR.b5)
#define PD6DIR		(_B_PDDIR.b6)
#define PD7DIR		(_B_PDDIR.b7)

#define PD0C0		(_B_PDCON0.b0)
#define PD1C0		(_B_PDCON0.b1)
#define PD2C0		(_B_PDCON0.b2)
#define PD3C0		(_B_PDCON0.b3)
#define PD4C0		(_B_PDCON0.b4)
#define PD5C0		(_B_PDCON0.b5)
#define PD6C0		(_B_PDCON0.b6)
#define PD7C0		(_B_PDCON0.b7)

#define PD0C1		(_B_PDCON1.b0)
#define PD1C1		(_B_PDCON1.b1)
#define PD2C1		(_B_PDCON1.b2)
#define PD3C1		(_B_PDCON1.b3)
#define PD4C1		(_B_PDCON1.b4)
#define PD5C1		(_B_PDCON1.b5)
#define PD6C1		(_B_PDCON1.b6)
#define PD7C1		(_B_PDCON1.b7)

#define PE0D		(_B_PED.b0)
#define PE1D		(_B_PED.b1)
#define PE2D		(_B_PED.b2)
#define PE3D		(_B_PED.b3)
#define PE4D		(_B_PED.b4)
#define PE5D		(_B_PED.b5)
#define PE6D		(_B_PED.b6)
#define PE7D		(_B_PED.b7)

#define PE0DIR		(_B_PEDIR.b0)
#define PE1DIR		(_B_PEDIR.b1)
#define PE2DIR		(_B_PEDIR.b2)
#define PE3DIR		(_B_PEDIR.b3)
#define PE4DIR		(_B_PEDIR.b4)
#define PE5DIR		(_B_PEDIR.b5)
#define PE6DIR		(_B_PEDIR.b6)
#define PE7DIR		(_B_PEDIR.b7)

#define PE0C0		(_B_PECON0.b0)
#define PE1C0		(_B_PECON0.b1)
#define PE2C0		(_B_PECON0.b2)
#define PE3C0		(_B_PECON0.b3)
#define PE4C0		(_B_PECON0.b4)
#define PE5C0		(_B_PECON0.b5)
#define PE6C0		(_B_PECON0.b6)
#define PE7C0		(_B_PECON0.b7)

#define PE0C1		(_B_PECON1.b0)
#define PE1C1		(_B_PECON1.b1)
#define PE2C1		(_B_PECON1.b2)
#define PE3C1		(_B_PECON1.b3)
#define PE4C1		(_B_PECON1.b4)
#define PE5C1		(_B_PECON1.b5)
#define PE6C1		(_B_PECON1.b6)
#define PE7C1		(_B_PECON1.b7)

#define PF0D		(_B_PFD.b0)
#define PF1D		(_B_PFD.b1)
#define PF2D		(_B_PFD.b2)
#define PF3D		(_B_PFD.b3)
#define PF4D		(_B_PFD.b4)
#define PF5D		(_B_PFD.b5)
#define PF6D		(_B_PFD.b6)
#define PF7D		(_B_PFD.b7)

#define PF0DIR		(_B_PFDIR.b0)
#define PF1DIR		(_B_PFDIR.b1)
#define PF2DIR		(_B_PFDIR.b2)
#define PF3DIR		(_B_PFDIR.b3)
#define PF4DIR		(_B_PFDIR.b4)
#define PF5DIR		(_B_PFDIR.b5)
#define PF6DIR		(_B_PFDIR.b6)
#define PF7DIR		(_B_PFDIR.b7)

#define PF0C0		(_B_PFCON0.b0)
#define PF1C0		(_B_PFCON0.b1)
#define PF2C0		(_B_PFCON0.b2)
#define PF3C0		(_B_PFCON0.b3)
#define PF4C0		(_B_PFCON0.b4)
#define PF5C0		(_B_PFCON0.b5)
#define PF6C0		(_B_PFCON0.b6)
#define PF7C0		(_B_PFCON0.b7)

#define PF0C1		(_B_PFCON1.b0)
#define PF1C1		(_B_PFCON1.b1)
#define PF2C1		(_B_PFCON1.b2)
#define PF3C1		(_B_PFCON1.b3)
#define PF4C1		(_B_PFCON1.b4)
#define PF5C1		(_B_PFCON1.b5)
#define PF6C1		(_B_PFCON1.b6)
#define PF7C1		(_B_PFCON1.b7)

#define S0B0		(_B_SIO0BUFL.b0)
#define S0B1		(_B_SIO0BUFL.b1)
#define S0B2		(_B_SIO0BUFL.b2)
#define S0B3		(_B_SIO0BUFL.b3)
#define S0B4		(_B_SIO0BUFL.b4)
#define S0B5		(_B_SIO0BUFL.b5)
#define S0B6		(_B_SIO0BUFL.b6)
#define S0B7		(_B_SIO0BUFL.b7)

#define S0B8		(_B_SIO0BUFH.b0)
#define S0B9		(_B_SIO0BUFH.b1)
#define S0B10		(_B_SIO0BUFH.b2)
#define S0B11		(_B_SIO0BUFH.b3)
#define S0B12		(_B_SIO0BUFH.b4)
#define S0B13		(_B_SIO0BUFH.b5)
#define S0B14		(_B_SIO0BUFH.b6)
#define S0B15		(_B_SIO0BUFH.b7)

#define S0EN		(_B_SIO0CON.b0)

#define S0DIR		(_B_SIO0MOD0.b0)
#define S0MD0		(_B_SIO0MOD0.b1)
#define S0MD1		(_B_SIO0MOD0.b2)
#define S0LG		(_B_SIO0MOD0.b3)

#define S0CK0		(_B_SIO0MOD1.b0)
#define S0CK1		(_B_SIO0MOD1.b1)
#define S0CK2		(_B_SIO0MOD1.b2)
#define S0CK3		(_B_SIO0MOD1.b3)
#define S0CKT		(_B_SIO0MOD1.b4)

#define S1B0		(_B_SIO1BUFL.b0)
#define S1B1		(_B_SIO1BUFL.b1)
#define S1B2		(_B_SIO1BUFL.b2)
#define S1B3		(_B_SIO1BUFL.b3)
#define S1B4		(_B_SIO1BUFL.b4)
#define S1B5		(_B_SIO1BUFL.b5)
#define S1B6		(_B_SIO1BUFL.b6)
#define S1B7		(_B_SIO1BUFL.b7)

#define S1B8		(_B_SIO1BUFH.b0)
#define S1B9		(_B_SIO1BUFH.b1)
#define S1B10		(_B_SIO1BUFH.b2)
#define S1B11		(_B_SIO1BUFH.b3)
#define S1B12		(_B_SIO1BUFH.b4)
#define S1B13		(_B_SIO1BUFH.b5)
#define S1B14		(_B_SIO1BUFH.b6)
#define S1B15		(_B_SIO1BUFH.b7)

#define S1EN		(_B_SIO1CON.b0)

#define S1DIR		(_B_SIO1MOD0.b0)
#define S1MD0		(_B_SIO1MOD0.b1)
#define S1MD1		(_B_SIO1MOD0.b2)
#define S1LG		(_B_SIO1MOD0.b3)

#define S1CK0		(_B_SIO1MOD1.b0)
#define S1CK1		(_B_SIO1MOD1.b1)
#define S1CK2		(_B_SIO1MOD1.b2)
#define S1CK3		(_B_SIO1MOD1.b3)
#define S1CKT		(_B_SIO1MOD1.b4)

#define U0B0		(_B_UA0BUF.b0)
#define U0B1		(_B_UA0BUF.b1)
#define U0B2		(_B_UA0BUF.b2)
#define U0B3		(_B_UA0BUF.b3)
#define U0B4		(_B_UA0BUF.b4)
#define U0B5		(_B_UA0BUF.b5)
#define U0B6		(_B_UA0BUF.b6)
#define U0B7		(_B_UA0BUF.b7)

#define U0EN		(_B_UA0CON.b0)

#define U0IO		(_B_UA0MOD0.b0)
#define U0CK0		(_B_UA0MOD0.b1)
#define U0CK1		(_B_UA0MOD0.b2)
#define U0RSEL		(_B_UA0MOD0.b4)
#define U0RSS		(_B_UA0MOD0.b5)

#define U0LG0		(_B_UA0MOD1.b0)
#define U0LG1		(_B_UA0MOD1.b1)
#define U0PT0		(_B_UA0MOD1.b2)
#define U0PT1		(_B_UA0MOD1.b3)
#define U0STP		(_B_UA0MOD1.b4)
#define U0NEG		(_B_UA0MOD1.b5)
#define U0DIR		(_B_UA0MOD1.b6)

#define U0BR0		(_B_UA0BRTL.b0)
#define U0BR1		(_B_UA0BRTL.b1)
#define U0BR2		(_B_UA0BRTL.b2)
#define U0BR3		(_B_UA0BRTL.b3)
#define U0BR4		(_B_UA0BRTL.b4)
#define U0BR5		(_B_UA0BRTL.b5)
#define U0BR6		(_B_UA0BRTL.b6)
#define U0BR7		(_B_UA0BRTL.b7)

#define U0BR8		(_B_UA0BRTH.b0)
#define U0BR9		(_B_UA0BRTH.b1)
#define U0BR10		(_B_UA0BRTH.b2)
#define U0BR11		(_B_UA0BRTH.b3)

#define U0FER		(_B_UA0STAT.b0)
#define U0OER		(_B_UA0STAT.b1)
#define U0PER		(_B_UA0STAT.b2)
#define U0FUL		(_B_UA0STAT.b3)

#define U1B0		(_B_UA1BUF.b0)
#define U1B1		(_B_UA1BUF.b1)
#define U1B2		(_B_UA1BUF.b2)
#define U1B3		(_B_UA1BUF.b3)
#define U1B4		(_B_UA1BUF.b4)
#define U1B5		(_B_UA1BUF.b5)
#define U1B6		(_B_UA1BUF.b6)
#define U1B7		(_B_UA1BUF.b7)

#define U1EN		(_B_UA1CON.b0)

#define U1IO		(_B_UA1MOD0.b0)
#define U1CK0		(_B_UA1MOD0.b1)
#define U1CK1		(_B_UA1MOD0.b2)
#define U1RSEL		(_B_UA1MOD0.b4)
#define U1RSS		(_B_UA1MOD0.b5)

#define U1LG0		(_B_UA1MOD1.b0)
#define U1LG1		(_B_UA1MOD1.b1)
#define U1PT0		(_B_UA1MOD1.b2)
#define U1PT1		(_B_UA1MOD1.b3)
#define U1STP		(_B_UA1MOD1.b4)
#define U1NEG		(_B_UA1MOD1.b5)
#define U1DIR		(_B_UA1MOD1.b6)

#define U1BR0		(_B_UA1BRTL.b0)
#define U1BR1		(_B_UA1BRTL.b1)
#define U1BR2		(_B_UA1BRTL.b2)
#define U1BR3		(_B_UA1BRTL.b3)
#define U1BR4		(_B_UA1BRTL.b4)
#define U1BR5		(_B_UA1BRTL.b5)
#define U1BR6		(_B_UA1BRTL.b6)
#define U1BR7		(_B_UA1BRTL.b7)

#define U1BR8		(_B_UA1BRTH.b0)
#define U1BR9		(_B_UA1BRTH.b1)
#define U1BR10		(_B_UA1BRTH.b2)
#define U1BR11		(_B_UA1BRTH.b3)

#define U1FER		(_B_UA1STAT.b0)
#define U1OER		(_B_UA1STAT.b1)
#define U1PER		(_B_UA1STAT.b2)
#define U1FUL		(_B_UA1STAT.b3)

#define I20R0		(_B_I2C0RD.b0)
#define I20R1		(_B_I2C0RD.b1)
#define I20R2		(_B_I2C0RD.b2)
#define I20R3		(_B_I2C0RD.b3)
#define I20R4		(_B_I2C0RD.b4)
#define I20R5		(_B_I2C0RD.b5)
#define I20R6		(_B_I2C0RD.b6)
#define I20R7		(_B_I2C0RD.b7)

#define I20RW		(_B_I2C0SA.b0)
#define I20A0		(_B_I2C0SA.b1)
#define I20A1		(_B_I2C0SA.b2)
#define I20A2		(_B_I2C0SA.b3)
#define I20A3		(_B_I2C0SA.b4)
#define I20A4		(_B_I2C0SA.b5)
#define I20A5		(_B_I2C0SA.b6)
#define I20A6		(_B_I2C0SA.b7)

#define I20T0		(_B_I2C0TD.b0)
#define I20T1		(_B_I2C0TD.b1)
#define I20T2		(_B_I2C0TD.b2)
#define I20T3		(_B_I2C0TD.b3)
#define I20T4		(_B_I2C0TD.b4)
#define I20T5		(_B_I2C0TD.b5)
#define I20T6		(_B_I2C0TD.b6)
#define I20T7		(_B_I2C0TD.b7)

#define I20ST		(_B_I2C0CON.b0)
#define I20SP		(_B_I2C0CON.b1)
#define I20RS		(_B_I2C0CON.b2)
#define I20ACT		(_B_I2C0CON.b7)

#define I20EN		(_B_I2C0MOD.b0)
#define I20MD		(_B_I2C0MOD.b1)
#define I20DW0		(_B_I2C0MOD.b2)
#define I20DW1		(_B_I2C0MOD.b3)
#define I20SYN		(_B_I2C0MOD.b4)

#define I20BB		(_B_I2C0STAT.b0)
#define I20ACR		(_B_I2C0STAT.b1)
#define I20ER		(_B_I2C0STAT.b2)

#define SAR02		(_B_SADR0L.b6)
#define SAR03		(_B_SADR0L.b7)

#define SAR04		(_B_SADR0H.b0)
#define SAR05		(_B_SADR0H.b1)
#define SAR06		(_B_SADR0H.b2)
#define SAR07		(_B_SADR0H.b3)
#define SAR08		(_B_SADR0H.b4)
#define SAR09		(_B_SADR0H.b5)
#define SAR0A		(_B_SADR0H.b6)
#define SAR0B		(_B_SADR0H.b7)

#define SAR12		(_B_SADR1L.b6)
#define SAR13		(_B_SADR1L.b7)

#define SAR14		(_B_SADR1H.b0)
#define SAR15		(_B_SADR1H.b1)
#define SAR16		(_B_SADR1H.b2)
#define SAR17		(_B_SADR1H.b3)
#define SAR18		(_B_SADR1H.b4)
#define SAR19		(_B_SADR1H.b5)
#define SAR1A		(_B_SADR1H.b6)
#define SAR1B		(_B_SADR1H.b7)

#define SAR22		(_B_SADR2L.b6)
#define SAR23		(_B_SADR2L.b7)

#define SAR24		(_B_SADR2H.b0)
#define SAR25		(_B_SADR2H.b1)
#define SAR26		(_B_SADR2H.b2)
#define SAR27		(_B_SADR2H.b3)
#define SAR28		(_B_SADR2H.b4)
#define SAR29		(_B_SADR2H.b5)
#define SAR2A		(_B_SADR2H.b6)
#define SAR2B		(_B_SADR2H.b7)

#define SAR32		(_B_SADR3L.b6)
#define SAR33		(_B_SADR3L.b7)

#define SAR34		(_B_SADR3H.b0)
#define SAR35		(_B_SADR3H.b1)
#define SAR36		(_B_SADR3H.b2)
#define SAR37		(_B_SADR3H.b3)
#define SAR38		(_B_SADR3H.b4)
#define SAR39		(_B_SADR3H.b5)
#define SAR3A		(_B_SADR3H.b6)
#define SAR3B		(_B_SADR3H.b7)

#define SAR42		(_B_SADR4L.b6)
#define SAR43		(_B_SADR4L.b7)

#define SAR44		(_B_SADR4H.b0)
#define SAR45		(_B_SADR4H.b1)
#define SAR46		(_B_SADR4H.b2)
#define SAR47		(_B_SADR4H.b3)
#define SAR48		(_B_SADR4H.b4)
#define SAR49		(_B_SADR4H.b5)
#define SAR4A		(_B_SADR4H.b6)
#define SAR4B		(_B_SADR4H.b7)

#define SAR52		(_B_SADR5L.b6)
#define SAR53		(_B_SADR5L.b7)

#define SAR54		(_B_SADR5H.b0)
#define SAR55		(_B_SADR5H.b1)
#define SAR56		(_B_SADR5H.b2)
#define SAR57		(_B_SADR5H.b3)
#define SAR58		(_B_SADR5H.b4)
#define SAR59		(_B_SADR5H.b5)
#define SAR5A		(_B_SADR5H.b6)
#define SAR5B		(_B_SADR5H.b7)

#define SAR62		(_B_SADR6L.b6)
#define SAR63		(_B_SADR6L.b7)

#define SAR64		(_B_SADR6H.b0)
#define SAR65		(_B_SADR6H.b1)
#define SAR66		(_B_SADR6H.b2)
#define SAR67		(_B_SADR6H.b3)
#define SAR68		(_B_SADR6H.b4)
#define SAR69		(_B_SADR6H.b5)
#define SAR6A		(_B_SADR6H.b6)
#define SAR6B		(_B_SADR6H.b7)

#define SAR72		(_B_SADR7L.b6)
#define SAR73		(_B_SADR7L.b7)

#define SAR74		(_B_SADR7H.b0)
#define SAR75		(_B_SADR7H.b1)
#define SAR76		(_B_SADR7H.b2)
#define SAR77		(_B_SADR7H.b3)
#define SAR78		(_B_SADR7H.b4)
#define SAR79		(_B_SADR7H.b5)
#define SAR7A		(_B_SADR7H.b6)
#define SAR7B		(_B_SADR7H.b7)

#define SAR82		(_B_SADR8L.b6)
#define SAR83		(_B_SADR8L.b7)

#define SAR84		(_B_SADR8H.b0)
#define SAR85		(_B_SADR8H.b1)
#define SAR86		(_B_SADR8H.b2)
#define SAR87		(_B_SADR8H.b3)
#define SAR88		(_B_SADR8H.b4)
#define SAR89		(_B_SADR8H.b5)
#define SAR8A		(_B_SADR8H.b6)
#define SAR8B		(_B_SADR8H.b7)

#define SAR92		(_B_SADR9L.b6)
#define SAR93		(_B_SADR9L.b7)

#define SAR94		(_B_SADR9H.b0)
#define SAR95		(_B_SADR9H.b1)
#define SAR96		(_B_SADR9H.b2)
#define SAR97		(_B_SADR9H.b3)
#define SAR98		(_B_SADR9H.b4)
#define SAR99		(_B_SADR9H.b5)
#define SAR9A		(_B_SADR9H.b6)
#define SAR9B		(_B_SADR9H.b7)

#define SARA2		(_B_SADRAL.b6)
#define SARA3		(_B_SADRAL.b7)

#define SARA4		(_B_SADRAH.b0)
#define SARA5		(_B_SADRAH.b1)
#define SARA6		(_B_SADRAH.b2)
#define SARA7		(_B_SADRAH.b3)
#define SARA8		(_B_SADRAH.b4)
#define SARA9		(_B_SADRAH.b5)
#define SARAA		(_B_SADRAH.b6)
#define SARAB		(_B_SADRAH.b7)

#define SARB2		(_B_SADRBL.b6)
#define SARB3		(_B_SADRBL.b7)

#define SARB4		(_B_SADRBH.b0)
#define SARB5		(_B_SADRBH.b1)
#define SARB6		(_B_SADRBH.b2)
#define SARB7		(_B_SADRBH.b3)
#define SARB8		(_B_SADRBH.b4)
#define SARB9		(_B_SADRBH.b5)
#define SARBA		(_B_SADRBH.b6)
#define SARBB		(_B_SADRBH.b7)

#define SARC2		(_B_SADRCL.b6)
#define SARC3		(_B_SADRCL.b7)

#define SARC4		(_B_SADRCH.b0)
#define SARC5		(_B_SADRCH.b1)
#define SARC6		(_B_SADRCH.b2)
#define SARC7		(_B_SADRCH.b3)
#define SARC8		(_B_SADRCH.b4)
#define SARC9		(_B_SADRCH.b5)
#define SARCA		(_B_SADRCH.b6)
#define SARCB		(_B_SADRCH.b7)

#define SARD2		(_B_SADRDL.b6)
#define SARD3		(_B_SADRDL.b7)

#define SARD4		(_B_SADRDH.b0)
#define SARD5		(_B_SADRDH.b1)
#define SARD6		(_B_SADRDH.b2)
#define SARD7		(_B_SADRDH.b3)
#define SARD8		(_B_SADRDH.b4)
#define SARD9		(_B_SADRDH.b5)
#define SARDA		(_B_SADRDH.b6)
#define SARDB		(_B_SADRDH.b7)

#define SARE2		(_B_SADREL.b6)
#define SARE3		(_B_SADREL.b7)

#define SARE4		(_B_SADREH.b0)
#define SARE5		(_B_SADREH.b1)
#define SARE6		(_B_SADREH.b2)
#define SARE7		(_B_SADREH.b3)
#define SARE8		(_B_SADREH.b4)
#define SARE9		(_B_SADREH.b5)
#define SAREA		(_B_SADREH.b6)
#define SAREB		(_B_SADREH.b7)

#define SARF2		(_B_SADRFL.b6)
#define SARF3		(_B_SADRFL.b7)

#define SARF4		(_B_SADRFH.b0)
#define SARF5		(_B_SADRFH.b1)
#define SARF6		(_B_SADRFH.b2)
#define SARF7		(_B_SADRFH.b3)
#define SARF8		(_B_SADRFH.b4)
#define SARF9		(_B_SADRFH.b5)
#define SARFA		(_B_SADRFH.b6)
#define SARFB		(_B_SADRFH.b7)

#define SALP		(_B_SADCON0.b0)

#define SARUN		(_B_SADCON1.b0)

#define SACH0		(_B_SADMOD0.b0)
#define SACH1		(_B_SADMOD0.b1)
#define SACH2		(_B_SADMOD0.b2)
#define SACH3		(_B_SADMOD0.b3)
#define SACH4		(_B_SADMOD0.b4)
#define SACH5		(_B_SADMOD0.b5)
#define SACH6		(_B_SADMOD0.b6)
#define SACH7		(_B_SADMOD0.b7)

#define SACH8		(_B_SADMOD1.b0)
#define SACH9		(_B_SADMOD1.b1)
#define SACHA		(_B_SADMOD1.b2)
#define SACHB		(_B_SADMOD1.b3)
#define SACHC		(_B_SADMOD1.b4)
#define SACHD		(_B_SADMOD1.b5)
#define SACHE		(_B_SADMOD1.b6)
#define SACHF		(_B_SADMOD1.b7)

#define COLOSC		(_B_CODEOP0.b7)

#define P4P0		(_B_PW4PL.b0)
#define P4P1		(_B_PW4PL.b1)
#define P4P2		(_B_PW4PL.b2)
#define P4P3		(_B_PW4PL.b3)
#define P4P4		(_B_PW4PL.b4)
#define P4P5		(_B_PW4PL.b5)
#define P4P6		(_B_PW4PL.b6)
#define P4P7		(_B_PW4PL.b7)

#define P4P8		(_B_PW4PH.b0)
#define P4P9		(_B_PW4PH.b1)
#define P4P10		(_B_PW4PH.b2)
#define P4P11		(_B_PW4PH.b3)
#define P4P12		(_B_PW4PH.b4)
#define P4P13		(_B_PW4PH.b5)
#define P4P14		(_B_PW4PH.b6)
#define P4P15		(_B_PW4PH.b7)

#define P4D0		(_B_PW4DL.b0)
#define P4D1		(_B_PW4DL.b1)
#define P4D2		(_B_PW4DL.b2)
#define P4D3		(_B_PW4DL.b3)
#define P4D4		(_B_PW4DL.b4)
#define P4D5		(_B_PW4DL.b5)
#define P4D6		(_B_PW4DL.b6)
#define P4D7		(_B_PW4DL.b7)

#define P4D8		(_B_PW4DH.b0)
#define P4D9		(_B_PW4DH.b1)
#define P4D10		(_B_PW4DH.b2)
#define P4D11		(_B_PW4DH.b3)
#define P4D12		(_B_PW4DH.b4)
#define P4D13		(_B_PW4DH.b5)
#define P4D14		(_B_PW4DH.b6)
#define P4D15		(_B_PW4DH.b7)

#define P4C0		(_B_PW4CL.b0)
#define P4C1		(_B_PW4CL.b1)
#define P4C2		(_B_PW4CL.b2)
#define P4C3		(_B_PW4CL.b3)
#define P4C4		(_B_PW4CL.b4)
#define P4C5		(_B_PW4CL.b5)
#define P4C6		(_B_PW4CL.b6)
#define P4C7		(_B_PW4CL.b7)

#define P4C8		(_B_PW4CH.b0)
#define P4C9		(_B_PW4CH.b1)
#define P4C10		(_B_PW4CH.b2)
#define P4C11		(_B_PW4CH.b3)
#define P4C12		(_B_PW4CH.b4)
#define P4C13		(_B_PW4CH.b5)
#define P4C14		(_B_PW4CH.b6)
#define P4C15		(_B_PW4CH.b7)

#define P4CS0		(_B_PW4CON0.b0)
#define P4CS1		(_B_PW4CON0.b1)
#define P4IS0		(_B_PW4CON0.b2)
#define P4IS1		(_B_PW4CON0.b3)
#define P4NEG		(_B_PW4CON0.b4)
#define P4INI		(_B_PW4CON0.b5)
#define P4STPSEL		(_B_PW4CON0.b6)
#define P4CLIG		(_B_PW4CON0.b7)

#define P4RUN		(_B_PW4CON1.b0)
#define P4FLG		(_B_PW4CON1.b6)
#define P4STAT		(_B_PW4CON1.b7)

#define P4TGE0		(_B_PW4CON2.b0)
#define P4TGE1		(_B_PW4CON2.b1)
#define P4STM0		(_B_PW4CON2.b2)
#define P4STM1		(_B_PW4CON2.b3)
#define P4TGSEL		(_B_PW4CON2.b4)
#define P4MD		(_B_PW4CON2.b6)
#define P45MD		(_B_PW4CON2.b7)

#define P4SDE0		(_B_PW4CON3.b0)
#define P4SDE1		(_B_PW4CON3.b1)
#define P4DTMD		(_B_PW4CON3.b4)
#define P4SDST		(_B_PW4CON3.b7)

#define P5P0		(_B_PW5PL.b0)
#define P5P1		(_B_PW5PL.b1)
#define P5P2		(_B_PW5PL.b2)
#define P5P3		(_B_PW5PL.b3)
#define P5P4		(_B_PW5PL.b4)
#define P5P5		(_B_PW5PL.b5)
#define P5P6		(_B_PW5PL.b6)
#define P5P7		(_B_PW5PL.b7)

#define P5P8		(_B_PW5PH.b0)
#define P5P9		(_B_PW5PH.b1)
#define P5P10		(_B_PW5PH.b2)
#define P5P11		(_B_PW5PH.b3)
#define P5P12		(_B_PW5PH.b4)
#define P5P13		(_B_PW5PH.b5)
#define P5P14		(_B_PW5PH.b6)
#define P5P15		(_B_PW5PH.b7)

#define P5D0		(_B_PW5DL.b0)
#define P5D1		(_B_PW5DL.b1)
#define P5D2		(_B_PW5DL.b2)
#define P5D3		(_B_PW5DL.b3)
#define P5D4		(_B_PW5DL.b4)
#define P5D5		(_B_PW5DL.b5)
#define P5D6		(_B_PW5DL.b6)
#define P5D7		(_B_PW5DL.b7)

#define P5D8		(_B_PW5DH.b0)
#define P5D9		(_B_PW5DH.b1)
#define P5D10		(_B_PW5DH.b2)
#define P5D11		(_B_PW5DH.b3)
#define P5D12		(_B_PW5DH.b4)
#define P5D13		(_B_PW5DH.b5)
#define P5D14		(_B_PW5DH.b6)
#define P5D15		(_B_PW5DH.b7)

#define P5C0		(_B_PW5CL.b0)
#define P5C1		(_B_PW5CL.b1)
#define P5C2		(_B_PW5CL.b2)
#define P5C3		(_B_PW5CL.b3)
#define P5C4		(_B_PW5CL.b4)
#define P5C5		(_B_PW5CL.b5)
#define P5C6		(_B_PW5CL.b6)
#define P5C7		(_B_PW5CL.b7)

#define P5C8		(_B_PW5CH.b0)
#define P5C9		(_B_PW5CH.b1)
#define P5C10		(_B_PW5CH.b2)
#define P5C11		(_B_PW5CH.b3)
#define P5C12		(_B_PW5CH.b4)
#define P5C13		(_B_PW5CH.b5)
#define P5C14		(_B_PW5CH.b6)
#define P5C15		(_B_PW5CH.b7)

#define P5CS0		(_B_PW5CON0.b0)
#define P5CS1		(_B_PW5CON0.b1)
#define P5IS0		(_B_PW5CON0.b2)
#define P5IS1		(_B_PW5CON0.b3)
#define P5NEG		(_B_PW5CON0.b4)
#define P5INI		(_B_PW5CON0.b5)
#define P5STPSEL		(_B_PW5CON0.b6)
#define P5CLIG		(_B_PW5CON0.b7)

#define P5RUN		(_B_PW5CON1.b0)
#define P5FLG		(_B_PW5CON1.b6)
#define P5STAT		(_B_PW5CON1.b7)

#define P5TGE0		(_B_PW5CON2.b0)
#define P5TGE1		(_B_PW5CON2.b1)
#define P5STM0		(_B_PW5CON2.b2)
#define P5STM1		(_B_PW5CON2.b3)
#define P5TGSEL		(_B_PW5CON2.b4)
#define P5MD		(_B_PW5CON2.b6)

#define T8D0		(_B_TM8D.b0)
#define T8D1		(_B_TM8D.b1)
#define T8D2		(_B_TM8D.b2)
#define T8D3		(_B_TM8D.b3)
#define T8D4		(_B_TM8D.b4)
#define T8D5		(_B_TM8D.b5)
#define T8D6		(_B_TM8D.b6)
#define T8D7		(_B_TM8D.b7)

#define T8C0		(_B_TM8C.b0)
#define T8C1		(_B_TM8C.b1)
#define T8C2		(_B_TM8C.b2)
#define T8C3		(_B_TM8C.b3)
#define T8C4		(_B_TM8C.b4)
#define T8C5		(_B_TM8C.b5)
#define T8C6		(_B_TM8C.b6)
#define T8C7		(_B_TM8C.b7)

#define T8CS0		(_B_TM8CON0.b0)
#define T8CS1		(_B_TM8CON0.b1)
#define T89M16		(_B_TM8CON0.b5)
#define T8OST		(_B_TM8CON0.b7)

#define T8RUN		(_B_TM8CON1.b0)
#define T8STAT		(_B_TM8CON1.b7)

#define T9D0		(_B_TM9D.b0)
#define T9D1		(_B_TM9D.b1)
#define T9D2		(_B_TM9D.b2)
#define T9D3		(_B_TM9D.b3)
#define T9D4		(_B_TM9D.b4)
#define T9D5		(_B_TM9D.b5)
#define T9D6		(_B_TM9D.b6)
#define T9D7		(_B_TM9D.b7)

#define T9C0		(_B_TM9C.b0)
#define T9C1		(_B_TM9C.b1)
#define T9C2		(_B_TM9C.b2)
#define T9C3		(_B_TM9C.b3)
#define T9C4		(_B_TM9C.b4)
#define T9C5		(_B_TM9C.b5)
#define T9C6		(_B_TM9C.b6)
#define T9C7		(_B_TM9C.b7)

#define T9CS0		(_B_TM9CON0.b0)
#define T9CS1		(_B_TM9CON0.b1)
#define T9NEG		(_B_TM9CON0.b6)
#define T9OST		(_B_TM9CON0.b7)

#define T9RUN		(_B_TM9CON1.b0)
#define T9STAT		(_B_TM9CON1.b7)

#define TAD0		(_B_TMAD.b0)
#define TAD1		(_B_TMAD.b1)
#define TAD2		(_B_TMAD.b2)
#define TAD3		(_B_TMAD.b3)
#define TAD4		(_B_TMAD.b4)
#define TAD5		(_B_TMAD.b5)
#define TAD6		(_B_TMAD.b6)
#define TAD7		(_B_TMAD.b7)

#define TAC0		(_B_TMAC.b0)
#define TAC1		(_B_TMAC.b1)
#define TAC2		(_B_TMAC.b2)
#define TAC3		(_B_TMAC.b3)
#define TAC4		(_B_TMAC.b4)
#define TAC5		(_B_TMAC.b5)
#define TAC6		(_B_TMAC.b6)
#define TAC7		(_B_TMAC.b7)

#define TACS0		(_B_TMACON0.b0)
#define TACS1		(_B_TMACON0.b1)
#define TABM16		(_B_TMACON0.b5)
#define TAOST		(_B_TMACON0.b7)

#define TARUN		(_B_TMACON1.b0)
#define TASTAT		(_B_TMACON1.b7)

#define TBD0		(_B_TMBD.b0)
#define TBD1		(_B_TMBD.b1)
#define TBD2		(_B_TMBD.b2)
#define TBD3		(_B_TMBD.b3)
#define TBD4		(_B_TMBD.b4)
#define TBD5		(_B_TMBD.b5)
#define TBD6		(_B_TMBD.b6)
#define TBD7		(_B_TMBD.b7)

#define TBC0		(_B_TMBC.b0)
#define TBC1		(_B_TMBC.b1)
#define TBC2		(_B_TMBC.b2)
#define TBC3		(_B_TMBC.b3)
#define TBC4		(_B_TMBC.b4)
#define TBC5		(_B_TMBC.b5)
#define TBC6		(_B_TMBC.b6)
#define TBC7		(_B_TMBC.b7)

#define TBCS0		(_B_TMBCON0.b0)
#define TBCS1		(_B_TMBCON0.b1)
#define TBNEG		(_B_TMBCON0.b6)
#define TBOST		(_B_TMBCON0.b7)

#define TBRUN		(_B_TMBCON1.b0)
#define TBSTAT		(_B_TMBCON1.b7)

#define LSELS08		(_B_LSELS1.b0)
#define LSELS09		(_B_LSELS1.b1)
#define LSELS10		(_B_LSELS1.b2)
#define LSELS11		(_B_LSELS1.b3)
#define LSELS12		(_B_LSELS1.b4)
#define LSELS13		(_B_LSELS1.b5)
#define LSELS14		(_B_LSELS1.b6)
#define LSELS15		(_B_LSELS1.b7)

#define LSELS16		(_B_LSELS2.b0)
#define LSELS17		(_B_LSELS2.b1)
#define LSELS18		(_B_LSELS2.b2)
#define LSELS19		(_B_LSELS2.b3)
#define LSELS20		(_B_LSELS2.b4)
#define LSELS21		(_B_LSELS2.b5)
#define LSELS22		(_B_LSELS2.b6)
#define LSELS23		(_B_LSELS2.b7)

#define LSELS24		(_B_LSELS3.b0)
#define LSELS25		(_B_LSELS3.b1)
#define LSELS26		(_B_LSELS3.b2)
#define LSELS27		(_B_LSELS3.b3)
#define LSELS28		(_B_LSELS3.b4)
#define LSELS29		(_B_LSELS3.b5)
#define LSELS30		(_B_LSELS3.b6)
#define LSELS31		(_B_LSELS3.b7)

#define LSELS32		(_B_LSELS4.b0)
#define LSELS33		(_B_LSELS4.b1)
#define LSELS34		(_B_LSELS4.b2)
#define LSELS35		(_B_LSELS4.b3)
#define LSELS36		(_B_LSELS4.b4)
#define LSELS37		(_B_LSELS4.b5)
#define LSELS38		(_B_LSELS4.b6)
#define LSELS39		(_B_LSELS4.b7)
/*---------------------------------------------------
	END OF BIT ADDRESS SYMBOLS
---------------------------------------------------*/

#endif
