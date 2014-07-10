/******************************************************************************
	pwmCF.h

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
    2012.02.22  ver.1.00
******************************************************************************/
#ifndef _PWM_H_
#define _PWM_H_

#include "mcu.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Parameter value. ===*/
#define	PWM_CS_LSCLK			(0x00u)	/* 動作クロックとしてLSCLKを選択 */
#define PWM_CS_HTBCLK			(0x01u)	/* 動作クロックとしてHTBCLKを選択 */
#define PWM_CS_PLLCLK			(0x02u)	/* 動作クロックとしてPLLクロックを選択 */
#define PWM_IS_PERIOD			(0x00u)	/* 周期一致時に割込み発生 */
#define PWM_IS_DUTY			(0x01u)	/* デューティ一致時に割込み発生 */
#define PWM_IS_PERIOD_DUTY		(0x02u)	/* 周期／デューティ一致時に割込み発生 */
#define PWM_NEG_POS			(0x00u)	/* 出力論理:正論理 */
#define PWM_NEG_NEG			(0x01u)	/* 出力論理:負論理 */
#define PWM_OS_DIS			(0x00u)	/* ワンショットモード無効(繰り返しモード) */
#define PWM_OS_ENA			(0x01u)	/* ワンショットモード有効(ワンショットモード) */
#define PWM_SDE_DIS			(0x00u)	/* 緊急停止不使用 */
#define PWM_SDE_ENA_RE			(0x01u)	/* コンパレータ立ち上がりエッジで緊急停止 */
#define PWM_SDE_ENA_FE			(0x02u)	/* コンパレータ立ち下がりエッジで緊急停止 */
#define PWM_SDE_ENA_BE			(0x03u)	/* PB0立ち上がりエッジで緊急停止 */

/*=== Return value. ===*/
#define PWM_FLG_L			(0x00u)	/* 出力フラグ=”0” */
#define PWM_FLG_H			(0x01u)	/* 出力フラグ=”1” */
#define PWM_STAT_STP			(0x00u)	/* カウント停止中 */
#define PWM_STAT_ACT			(0x01u)	/* カウント動作中 */
#define PWM_SDST_NO_SD			(0x00u)	/* 緊急停止割込み発生なし */
#define PWM_SDST_SDED			(0x01u)	/* 緊急停止割込み発生あり */

#define pwmC_getCount()			(PW4C)
#define	pwmC_getOutputFlag()		(PCFLG)
#define pwmC_getCountStatus()		(PCSTAT)
#define pwmD_getCount()			(PW4D)
#define	pwmD_getOutputFlag()		(PDFLG)
#define pwmD_getCountStatus()		(PDSTAT)
#define pwmE_getCount()			(PW4E)
#define	pwmE_getOutputFlag()		(PEFLG)
#define pwmE_getCountStatus()		(PESTAT)
#define pwmF_getCount()			(PWFC)
#define	pwmF_getOutputFlag()		(PFFLG)
#define pwmF_getCountStatus()		(PFSTAT)


/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/
void pwmC_setPeriod(unsigned short period);
void pwmC_setDuty(unsigned short duty);
void pwmC_clearCount(void);
void pwmC_selectClock(unsigned char clkSel);
void pwmC_selectInterrupt(unsigned char intSel);
void pwmC_selectOutputPolarity(unsigned char outPol);
void pwmC_start(void);
void pwmC_stop(void);
void pwmC_setCountStartMode(unsigned char startMode, unsigned char extCtrl);
void pwmC_selectCtrlPin(unsigned char pinSel);
void pwmC_setOneShotMode(unsigned char mode);

void pwmD_setPeriod(unsigned short period);
void pwmD_setDuty(unsigned short duty);
void pwmD_clearCount(void);
void pwmD_selectClock(unsigned char clkSel);
void pwmD_selectInterrupt(unsigned char intSel);
void pwmD_selectOutputPolarity(unsigned char outPol);
void pwmD_start(void);
void pwmD_stop(void);
void pwmD_setCountStartMode(unsigned char startMode, unsigned char extCtrl);
void pwmD_selectCtrlPin(unsigned char pinSel);
void pwmD_setOneShotMode(unsigned char mode);

void pwmE_setPeriod(unsigned short period);
void pwmE_setDuty(unsigned short duty);
void pwmE_clearCount(void);
void pwmE_selectClock(unsigned char clkSel);
void pwmE_selectInterrupt(unsigned char intSel);
void pwmE_selectOutputPolarity(unsigned char outPol);
void pwmE_start(void);
void pwmE_stop(void);
void pwmE_setCountStartMode(unsigned char startMode, unsigned char extCtrl);
void pwmE_selectCtrlPin(unsigned char pinSel);
void pwmE_setOneShotMode(unsigned char mode);

void pwmF_setPeriod(unsigned short period);
void pwmF0_setDuty(unsigned short duty);
void pwmF1_setDuty(unsigned short duty);
void pwmF2_setDuty(unsigned short duty);
void pwmF_clearCount(void);
void pwmF_selectClock(unsigned char clkSel);
void pwmF_selectInterrupt(unsigned char intSel);
void pwmF_selectOutputPolarity(unsigned char outPol);
void pwmF_start(void);
void pwmF_stop(void);
void pwmF_setCountStartMode(unsigned char startMode, unsigned char extCtrl);
void pwmF_selectCtrlPin(unsigned char pinSel);
void pwmF_setOneShotMode(unsigned char mode);

void pwmF0_setEnable(void);
void pwmF1_setEnable(void);
void pwmF2_setEnable(void);
void pwmF0_setDisable(void);
void pwmF1_setDisable(void);
void pwmF2_setDisable(void);
void pwmF_dutyUpdate(void);

#endif /* _PWM_H_ */
