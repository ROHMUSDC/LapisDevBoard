;; Compile Options : /TML610111 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /D_ML610Q111 /SS 1024 /SD /Oa /Om /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.31.4
;; File Name       : main.c

	type (ML610111) 
	model small, near
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$_initPeri$main segment code 2h #0h
	$$_initState$main segment code 2h #0h
	$$_intPA0$main segment code 2h #0h
	$$_intTMB$main segment code 2h #0h
	$$_swInit$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	STACKSEG 0400h
CVERSION 3.31.4
CSGLOBAL 03H 0000H "_initState" 08H 02H 23H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 17H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 27H 00H 80H 00H 00H 00H 01H
CSGLOBAL 03H 0000H "_initPeri" 08H 02H 22H 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "_intPA0" 08H 02H 24H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intTMB" 08H 02H 25H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_swInit" 08H 02H 26H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CGLOBAL 01H 42H 0002H "state" 02H 00H 08H
CSGLOBAL 42H 0001H "_clrWdt" 02H 00H 00H
CSGLOBAL 42H 0001H "_swInput" 02H 00H 00H
CGLOBAL 02H 42H 0002H "stepGreenLed" 02H 00H 08H
CGLOBAL 02H 42H 0002H "stepBlueLed" 02H 00H 08H
CGLOBAL 01H 42H 0001H "state_exec_cnt" 02H 00H 00H
CSGLOBAL 42H 0001H "_ledChange" 02H 00H 00H
CSGLOBAL 42H 0001H "_ledSel" 02H 00H 00H
CGLOBAL 02H 42H 0002H "stepRedLed" 02H 00H 08H
CFILE 0001H 00000029H "common\\common.h"
CFILE 0002H 00000022H "main\\mcu.h"
CFILE 0003H 000007EEH "C:\\Users\\cschell\\U8DEV~1\\Inc\\ml610111.h"
CFILE 0004H 00000049H "irq\\irq.h"
CFILE 0005H 00000022H "clock\\clock.h"
CFILE 0006H 000000A0H "timer\\timer.h"
CFILE 0007H 00000024H "main\\main.h"
CFILE 0008H 0000003BH "led\\led.h"
CFILE 0009H 00000036H "tbc\\tbc.h"
CFILE 0000H 0000013FH "main\\main.c"

	rseg $$main$main
CFUNCTION 39

_main	:
CBLOCK 39 1 116

;;{
CLINEA 0000H 0001H 0074H 0001H 0001H
CBLOCK 39 2 116

;;	_initPeri();
CLINEA 0000H 0001H 0077H 0002H 000DH
	bl	__initPeri

;;	_initState();
CLINEA 0000H 0001H 007AH 0002H 000EH
	bl	__initState

;;	for (;;)
CLINEA 0000H 0000H 007DH 0002H 0009H
_$L3 :
CBLOCK 39 3 126

;;		if( _clrWdt == CLR_WDT ) {
CLINEA 0000H 0001H 0080H 0003H 001CH
	l	r0,	NEAR __clrWdt
	bne	_$L7
CBLOCK 39 4 128

;;			main_clrWDT();
CLINEA 0000H 0001H 0081H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 39 4 130

;;		}
CLINEA 0000H 0000H 0082H 0003H 0003H
_$L7 :

;;		if( WDTR == FLG_CLR ) {
CLINEA 0000H 0001H 0084H 0003H 0019H
	tb	0f001h.2
	beq	_$M1
	b	_$L9
_$M1 :
CBLOCK 39 5 132

;;			switch( state_exec_cnt / CONTINU_STATE_COUNT ) {
CLINEA 0000H 0001H 0085H 0004H 0033H
	l	r0,	NEAR _state_exec_cnt
	mov	r1,	#00h
	mov	r2,	#03h
	div	er0,	r2
	mov	er2,	er0
CBLOCK 39 6 133
	cmp	r1,	#00h
	bne	_$L15
	mov	r0,	r2
	bne	_$M2
	b	_$L16
_$M2 :

;;			switch( state_exec_cnt / CONTINU_STATE_COUNT ) {
CLINEA 0000H 0000H 0085H 0004H 0033H
	cmp	r2,	#01h
	bne	_$M3
	b	_$L17
_$M3 :

;;			switch( state_exec_cnt / CONTINU_STATE_COUNT ) {
CLINEA 0000H 0000H 0085H 0004H 0033H
	cmp	r2,	#02h
	bne	_$M4
	b	_$L18
_$M4 :

;;				default:	led_Off();					break;
CLINEA 0000H 0001H 0089H 0005H 0022H
_$L15 :
	bl	_led_Off
CBLOCKEND 39 6 138

;;			}
CLINEA 0000H 0000H 008AH 0004H 0004H
_$L14 :

;;			if( _ledChange == FLG_SET){
CLINEA 0000H 0001H 008CH 0004H 001EH
	l	r0,	NEAR __ledChange
	cmp	r0,	#01h
	beq	_$M5
	b	_$L53
_$M5 :
CBLOCK 39 7 140

;;				if( state_exec_cnt == STATE_COUNT_MAX ) {
CLINEA 0000H 0001H 008DH 0005H 002DH
	l	r0,	NEAR _state_exec_cnt
	cmp	r0,	#09h
	bne	_$L21
CBLOCK 39 8 141

;;					state_exec_cnt = STATE_COUNT_MIN;
CLINEA 0000H 0001H 008EH 0006H 0026H
	mov	r0,	#00h
	st	r0,	NEAR _state_exec_cnt
CBLOCKEND 39 8 143

;;				}
CLINEA 0000H 0000H 008FH 0005H 0005H
_$L21 :

;;				if( state == STATE_RED_GREEN ) {
CLINEA 0000H 0001H 0091H 0005H 0024H
	l	er0,	NEAR _state
	cmp	r0,	#01h
	cmpc	r1,	#00h
	bne	_$L27
CBLOCK 39 9 145

;;					if( stepGreenLed == STEP_LED_MAX ) {
CLINEA 0000H 0001H 0092H 0006H 0029H
	l	er0,	NEAR _stepGreenLed
	cmp	r0,	#01fh
	cmpc	r1,	#00h
	bne	_$L25
CBLOCK 39 10 146

;;						state = STATE_GREEN_RED;
CLINEA 0000H 0001H 0093H 0007H 001EH
	mov	er0,	#2 
	st	er0,	NEAR _state
CBLOCKEND 39 10 148

;;					else {
CLINEA 0000H 0001H 0095H 0006H 000BH
	bal	_$L27
_$L25 :
CBLOCK 39 11 149

;;						stepRedLed = STEP_LED_MAX;
CLINEA 0000H 0001H 0096H 0007H 0020H
	mov	er0,	#31
	st	er0,	NEAR _stepRedLed

;;						stepGreenLed += STEP_UP;
CLINEA 0000H 0001H 0097H 0007H 001EH
	l	er0,	NEAR _stepGreenLed
	add	er0,	#1 
	st	er0,	NEAR _stepGreenLed

;;						stepBlueLed = STEP_LED_MIN;
CLINEA 0000H 0001H 0098H 0007H 0021H
	mov	er0,	#0 
	st	er0,	NEAR _stepBlueLed
CBLOCKEND 39 11 153

;;					}
CLINEA 0000H 0000H 0099H 0006H 0006H
_$L27 :
CBLOCKEND 39 9 154

;;				if( state == STATE_GREEN_RED ) {
CLINEA 0000H 0001H 009BH 0005H 0024H
	l	er0,	NEAR _state
	cmp	r0,	#02h
	cmpc	r1,	#00h
	bne	_$L32
CBLOCK 39 12 155

;;					if( stepRedLed == STEP_LED_MIN ) {
CLINEA 0000H 0001H 009CH 0006H 0027H
	l	er0,	NEAR _stepRedLed
	bne	_$L30
CBLOCK 39 13 156

;;						state = STATE_GREEN_BLUE;
CLINEA 0000H 0001H 009DH 0007H 001FH
	mov	er0,	#3 
	st	er0,	NEAR _state
CBLOCKEND 39 13 158

;;					else {
CLINEA 0000H 0001H 009FH 0006H 000BH
	bal	_$L32
_$L30 :
CBLOCK 39 14 159

;;						stepRedLed -= STEP_DOWN;
CLINEA 0000H 0001H 00A0H 0007H 001EH
	add	er0,	#-1
	st	er0,	NEAR _stepRedLed

;;						stepGreenLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00A1H 0007H 0022H
	mov	er0,	#31
	st	er0,	NEAR _stepGreenLed

;;						stepBlueLed = STEP_LED_MIN;
CLINEA 0000H 0001H 00A2H 0007H 0021H
	mov	er0,	#0 
	st	er0,	NEAR _stepBlueLed
CBLOCKEND 39 14 163

;;					}
CLINEA 0000H 0000H 00A3H 0006H 0006H
_$L32 :
CBLOCKEND 39 12 164

;;				if( state == STATE_GREEN_BLUE ) {
CLINEA 0000H 0001H 00A5H 0005H 0025H
	l	er0,	NEAR _state
	cmp	r0,	#03h
	cmpc	r1,	#00h
	bne	_$L37
CBLOCK 39 15 165

;;					if( stepBlueLed == STEP_LED_MAX ) {
CLINEA 0000H 0001H 00A6H 0006H 0028H
	l	er0,	NEAR _stepBlueLed
	cmp	r0,	#01fh
	cmpc	r1,	#00h
	bne	_$L35
CBLOCK 39 16 166

;;						state = STATE_BLUE_GREEN;
CLINEA 0000H 0001H 00A7H 0007H 001FH
	mov	er0,	#4 
	st	er0,	NEAR _state
CBLOCKEND 39 16 168

;;					else {
CLINEA 0000H 0001H 00A9H 0006H 000BH
	bal	_$L37
_$L35 :
CBLOCK 39 17 169

;;						stepRedLed = STEP_LED_MIN;
CLINEA 0000H 0001H 00AAH 0007H 0020H
	mov	er0,	#0 
	st	er0,	NEAR _stepRedLed

;;						stepGreenLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00ABH 0007H 0022H
	mov	er0,	#31
	st	er0,	NEAR _stepGreenLed

;;						stepBlueLed += STEP_UP;
CLINEA 0000H 0001H 00ACH 0007H 001DH
	l	er0,	NEAR _stepBlueLed
	add	er0,	#1 
	st	er0,	NEAR _stepBlueLed
CBLOCKEND 39 17 173

;;					}
CLINEA 0000H 0000H 00ADH 0006H 0006H
_$L37 :
CBLOCKEND 39 15 174

;;				if( state == STATE_BLUE_GREEN ) {
CLINEA 0000H 0001H 00AFH 0005H 0025H
	l	er0,	NEAR _state
	cmp	r0,	#04h
	cmpc	r1,	#00h
	bne	_$L42
CBLOCK 39 18 175

;;					if( stepGreenLed == STEP_LED_MIN ) {
CLINEA 0000H 0001H 00B0H 0006H 0029H
	l	er0,	NEAR _stepGreenLed
	bne	_$L40
CBLOCK 39 19 176

;;						state = STATE_BLUE_RED;
CLINEA 0000H 0001H 00B1H 0007H 001DH
	mov	er0,	#5 
	st	er0,	NEAR _state
CBLOCKEND 39 19 178

;;					else {
CLINEA 0000H 0001H 00B3H 0006H 000BH
	bal	_$L42
_$L40 :
CBLOCK 39 20 179

;;						stepRedLed = STEP_LED_MIN;
CLINEA 0000H 0001H 00B4H 0007H 0020H
	mov	er0,	#0 
	st	er0,	NEAR _stepRedLed

;;						stepGreenLed -= STEP_DOWN;
CLINEA 0000H 0001H 00B5H 0007H 0020H
	l	er0,	NEAR _stepGreenLed
	add	er0,	#-1
	st	er0,	NEAR _stepGreenLed

;;						stepBlueLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00B6H 0007H 0021H
	mov	er0,	#31
	st	er0,	NEAR _stepBlueLed
CBLOCKEND 39 20 183

;;					}
CLINEA 0000H 0000H 00B7H 0006H 0006H
_$L42 :
CBLOCKEND 39 18 184

;;				if( state == STATE_BLUE_RED ) {
CLINEA 0000H 0001H 00B9H 0005H 0023H
	l	er0,	NEAR _state
	cmp	r0,	#05h
	cmpc	r1,	#00h
	bne	_$L47
CBLOCK 39 21 185

;;					if( stepRedLed == STEP_LED_MAX ) {
CLINEA 0000H 0001H 00BAH 0006H 0027H
	l	er0,	NEAR _stepRedLed
	cmp	r0,	#01fh
	cmpc	r1,	#00h
	bne	_$L45
CBLOCK 39 22 186

;;						state = STATE_RED_BLUE;
CLINEA 0000H 0001H 00BBH 0007H 001DH
	mov	er0,	#0 
	st	er0,	NEAR _state
CBLOCKEND 39 22 188

;;					else {
CLINEA 0000H 0001H 00BDH 0006H 000BH
	bal	_$L47
_$L45 :
CBLOCK 39 23 189

;;						stepRedLed += STEP_UP;
CLINEA 0000H 0001H 00BEH 0007H 001CH
	add	er0,	#1 
	st	er0,	NEAR _stepRedLed

;;						stepGreenLed = STEP_LED_MIN;
CLINEA 0000H 0001H 00BFH 0007H 0022H
	mov	er0,	#0 
	st	er0,	NEAR _stepGreenLed

;;						stepBlueLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00C0H 0007H 0021H
	mov	er0,	#31
	st	er0,	NEAR _stepBlueLed
CBLOCKEND 39 23 193

;;					}
CLINEA 0000H 0000H 00C1H 0006H 0006H
_$L47 :
CBLOCKEND 39 21 194

;;				if( state == STATE_RED_BLUE ) {
CLINEA 0000H 0001H 00C3H 0005H 0023H
	l	er0,	NEAR _state
	bne	_$L52
CBLOCK 39 24 195

;;					if( stepBlueLed == STEP_LED_MIN ) {
CLINEA 0000H 0001H 00C4H 0006H 0028H
	l	er0,	NEAR _stepBlueLed
	bne	_$L50
CBLOCK 39 25 196

;;						state = STATE_RED_GREEN;
CLINEA 0000H 0001H 00C5H 0007H 001EH
	mov	er0,	#1 
	st	er0,	NEAR _state

;;						state_exec_cnt++;
CLINEA 0000H 0000H 00C6H 0007H 0017H
	lea	OFFSET _state_exec_cnt
	inc	[ea]
CBLOCKEND 39 25 199

;;					else {
CLINEA 0000H 0001H 00C8H 0006H 000BH
	bal	_$L52
_$L50 :
CBLOCK 39 26 200

;;						stepRedLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00C9H 0007H 0020H
	mov	er0,	#31
	st	er0,	NEAR _stepRedLed

;;						stepGreenLed = STEP_LED_MIN;
CLINEA 0000H 0001H 00CAH 0007H 0022H
	mov	er0,	#0 
	st	er0,	NEAR _stepGreenLed

;;						stepBlueLed -= STEP_DOWN;
CLINEA 0000H 0001H 00CBH 0007H 001FH
	l	er0,	NEAR _stepBlueLed
	add	er0,	#-1
	st	er0,	NEAR _stepBlueLed
CBLOCKEND 39 26 204

;;					}
CLINEA 0000H 0000H 00CCH 0006H 0006H
_$L52 :
CBLOCKEND 39 24 205

;;			led_DutySet();
CLINEA 0000H 0001H 00CEH 0004H 0011H
	bl	_led_DutySet

;;			_ledChange = FLG_CLR;
CLINEA 0000H 0001H 00CFH 0004H 0018H
	mov	r0,	#00h
	st	r0,	NEAR __ledChange
CBLOCKEND 39 7 208

;;			}
CLINEA 0000H 0000H 00D0H 0004H 0004H
CBLOCKEND 39 5 209

;;		else {
CLINEA 0000H 0001H 00D2H 0003H 0008H
	bal	_$L53
_$L9 :
CBLOCK 39 27 210

;;			led_On();
CLINEA 0000H 0001H 00D3H 0004H 000CH
	bl	_led_On

;;			stepRedLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00D4H 0004H 001DH
	mov	er0,	#31
	st	er0,	NEAR _stepRedLed

;;			stepGreenLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00D5H 0004H 001FH
	st	er0,	NEAR _stepGreenLed

;;			stepBlueLed = STEP_LED_MAX;
CLINEA 0000H 0001H 00D6H 0004H 001EH
	st	er0,	NEAR _stepBlueLed

;;			led_DutySet();
CLINEA 0000H 0001H 00D7H 0004H 0011H
	bl	_led_DutySet
CBLOCKEND 39 27 216

;;		}
CLINEA 0000H 0000H 00D8H 0003H 0003H
_$L53 :
CBLOCKEND 39 3 217
	b	_$L3

;;	}
CLINEA 0000H 0000H 00D9H 0002H 0002H
CBLOCKEND 39 2 220

;;				case 0:	led_On();					break;
CLINEA 0000H 0001H 0086H 0005H 0020H
_$L16 :
	bl	_led_On
	b	_$L14

;;				case 1:	led_f_Off();	led_cde_On();	break;
CLINEA 0000H 0001H 0087H 0005H 002DH
_$L17 :
	bl	_led_f_Off
	bl	_led_cde_On
	b	_$L14

;;				case 2:	led_cde_Off();	led_f_On();		break;
CLINEA 0000H 0001H 0088H 0005H 002EH
_$L18 :
	bl	_led_cde_Off
	bl	_led_f_On
	b	_$L14
CBLOCKEND 39 1 220
CFUNCTIONEND 39


	rseg $$main_clrWDT$main
CFUNCTION 23

_main_clrWDT	:
CBLOCK 23 1 230

;;{
CLINEA 0000H 0001H 00E6H 0001H 0001H
CBLOCK 23 2 230

;;	do {
CLINEA 0000H 0001H 00E7H 0002H 0005H
_$L57 :
CBLOCK 23 3 231

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 00E8H 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 23 3 233

;;	} while (WDP != 1);
CLINEA 0000H 0000H 00E9H 0002H 0014H
	tb	0f00eh.0
	beq	_$L57

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 00EAH 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 23 2 235

;;}
CLINEA 0000H 0001H 00EBH 0001H 0001H
	rt
CBLOCKEND 23 1 235
CFUNCTIONEND 23


	rseg $$_initPeri$main
CFUNCTION 34

__initPeri	:
CBLOCK 34 1 249

;;{
CLINEA 0000H 0001H 00F9H 0001H 0001H
	push	lr
CBLOCK 34 2 249
CRET 0000H

;;	BLKCON2 = 0xC9; // UART0
CLINEA 0000H 0001H 00FBH 0002H 0019H
	mov	r0,	#0c9h
	st	r0,	0f02ah

;;	BLKCON4 = 0x01;
CLINEA 0000H 0001H 00FCH 0002H 0010H
	mov	r0,	#01h
	st	r0,	0f02ch

;;	BLKCON6 = 0xC0; // 
CLINEA 0000H 0001H 00FDH 0002H 0014H
	mov	r0,	#0c0h
	st	r0,	0f02eh

;;	BLKCON7 = 0x00; // PWMC/D/E/F
CLINEA 0000H 0001H 00FEH 0002H 001EH
	mov	r0,	#00h
	st	r0,	0f02fh

;;	irq_di();
CLINEA 0000H 0001H 0101H 0002H 000AH
	bl	_irq_di

;;	irq_init();
CLINEA 0000H 0001H 0102H 0002H 000CH
	bl	_irq_init

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_PA0INT, _intPA0 );
CLINEA 0000H 0001H 0103H 0002H 003BH
	mov	r2,	#BYTE1 OFFSET __intPA0
	mov	r3,	#BYTE2 OFFSET __intPA0
	mov	r0,	#02h
	bl	_irq_setHdr

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_TMBINT, _intTMB );
CLINEA 0000H 0001H 0104H 0002H 003BH
	mov	r2,	#BYTE1 OFFSET __intTMB
	mov	r3,	#BYTE2 OFFSET __intTMB
	mov	r0,	#016h
	bl	_irq_setHdr

;;	QPA0 = 0;
CLINEA 0000H 0001H 0105H 0002H 000AH
	rb	0f019h.0

;;	QTMB = 0;
CLINEA 0000H 0001H 0106H 0002H 000AH
	rb	0f01dh.7

;;	EPA0 = 1;
CLINEA 0000H 0001H 0107H 0002H 000AH
	sb	0f011h.0

;;	ETMB = 1;
CLINEA 0000H 0001H 0108H 0002H 000AH
	sb	0f015h.7

;;	irq_ei();
CLINEA 0000H 0001H 0109H 0002H 000AH
	bl	_irq_ei

;;	WDTMOD = WDT_23MS; // 
CLINEA 0000H 0001H 010CH 0002H 0017H
	mov	r0,	#04h
	st	r0,	0f00fh

;;	main_clrWDT();
CLINEA 0000H 0001H 010DH 0002H 000FH
	bl	_main_clrWDT

;;	clk_setSysclk();
CLINEA 0000H 0001H 0110H 0002H 0011H
	bl	_clk_setSysclk

;;	(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 );
CLINEA 0000H 0001H 0113H 0002H 0031H
	mov	r0,	#0fh
	bl	_tb_setHtbdiv

;;	tm_init( TM_CH_NO_AB );						/* Timer channel */
CLINEA 0000H 0001H 0116H 0002H 0031H
	mov	r0,	#02h
	bl	_tm_init

;;	tm_setABSource(TM_CS_LSCLK);					/* Operation clock */
CLINEA 0000H 0001H 0117H 0002H 0037H
	mov	r0,	#00h
	bl	_tm_setABSource

;;	tm_setABData( (unsigned short)(MAIN_TIMER_CNT) );	/* Timer count value */
CLINEA 0000H 0001H 0118H 0002H 004AH
	mov	r0,	#08fh
	mov	r1,	#02h
	bl	_tm_setABData

;;	tm_startAB();
CLINEA 0000H 0001H 0119H 0002H 000EH
	bl	_tm_startAB

;;	_swInit();
CLINEA 0000H 0001H 011BH 0002H 000BH
	bl	__swInit

;;	led_Init();
CLINEA 0000H 0001H 011EH 0002H 000CH
	bl	_led_Init
CBLOCKEND 34 2 287

;;}
CLINEA 0000H 0001H 011FH 0001H 0001H
	pop	pc
CBLOCKEND 34 1 287
CFUNCTIONEND 34


	rseg $$_initState$main
CFUNCTION 35

__initState	:
CBLOCK 35 1 290

;;{
CLINEA 0000H 0001H 0122H 0001H 0001H
CBLOCK 35 2 290

;;	state = STATE_RED_GREEN;
CLINEA 0000H 0001H 0123H 0002H 0019H
	mov	er0,	#1 
	st	er0,	NEAR _state
CBLOCKEND 35 2 292

;;}
CLINEA 0000H 0001H 0124H 0001H 0001H
	rt
CBLOCKEND 35 1 292
CFUNCTIONEND 35


	rseg $$_intPA0$main
CFUNCTION 36

__intPA0	:
CBLOCK 36 1 295

;;{
CLINEA 0000H 0001H 0127H 0001H 0001H
CBLOCK 36 2 295

;;	_clrWdt = NOT_CLR_WDT;
CLINEA 0000H 0001H 0128H 0002H 0017H
	mov	r0,	#01h
	st	r0,	NEAR __clrWdt
CBLOCKEND 36 2 297

;;}
CLINEA 0000H 0001H 0129H 0001H 0001H
	rt
CBLOCKEND 36 1 297
CFUNCTIONEND 36


	rseg $$_intTMB$main
CFUNCTION 37

__intTMB	:
CBLOCK 37 1 300

;;{
CLINEA 0000H 0001H 012CH 0001H 0001H
CBLOCK 37 2 300

;;	_ledChange = FLG_SET;
CLINEA 0000H 0001H 012DH 0002H 0016H
	mov	r0,	#01h
	st	r0,	NEAR __ledChange
CBLOCKEND 37 2 302

;;}
CLINEA 0000H 0001H 012EH 0001H 0001H
	rt
CBLOCKEND 37 1 302
CFUNCTIONEND 37


	rseg $$_swInit$main
CFUNCTION 38

__swInit	:
CBLOCK 38 1 305

;;{
CLINEA 0000H 0001H 0131H 0001H 0001H
CBLOCK 38 2 305

;;	PA0DIR = 1;
CLINEA 0000H 0001H 0133H 0002H 000CH
	sb	0f251h.0

;;	PA0C0 = 0;
CLINEA 0000H 0001H 0134H 0002H 000BH
	rb	0f252h.0

;;	PA0C1 = 1;
CLINEA 0000H 0001H 0135H 0002H 000BH
	sb	0f253h.0

;;	PA0MD0 = 0;
CLINEA 0000H 0001H 0136H 0002H 000CH
	rb	0f254h.0

;;	PA0MD0 = 0;
CLINEA 0000H 0001H 0137H 0002H 000CH
	rb	0f254h.0

;;	PA0E0 = 1;
CLINEA 0000H 0001H 0139H 0002H 000BH
	sb	0f024h.0

;;	PA0E1 = 0;
CLINEA 0000H 0001H 013AH 0002H 000BH
	rb	0f025h.0

;;	PA0SM = 1;
CLINEA 0000H 0001H 013BH 0002H 000BH
	sb	0f026h.0

;;	_swInput = SW_NONE;
CLINEA 0000H 0001H 013DH 0002H 0014H
	mov	r0,	#00h
	st	r0,	NEAR __swInput
CBLOCKEND 38 2 318

;;}
CLINEA 0000H 0001H 013EH 0001H 0001H
	rt
CBLOCKEND 38 1 318
CFUNCTIONEND 38

	public _state
	public _main_clrWDT
	public _main
	public _state_exec_cnt
	extrn code near : _irq_init
	extrn code near : _tm_startAB
	extrn code near : _led_f_Off
	extrn code near : _led_cde_Off
	extrn code near : _tm_setABData
	extrn code near : _led_f_On
	extrn code near : _led_cde_On
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _led_DutySet
	extrn code near : _clk_setSysclk
	extrn code near : _irq_setHdr
	extrn code near : _tm_setABSource
	extrn code near : _led_Init
	extrn data near : _stepGreenLed
	extrn data near : _stepBlueLed
	extrn code near : _led_On
	extrn code near : _led_Off
	extrn code near : _tm_init
	extrn data near : _stepRedLed
	extrn code near : _tb_setHtbdiv
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NINITTAB
	dw	01h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h

	rseg $$NINITVAR
_state :
	ds	02h
_state_exec_cnt :
	ds	01h
__swInput :
	ds	01h
__ledSel :
	ds	01h
__ledChange :
	ds	01h
__clrWdt :
	ds	01h

	rseg $$NINITTAB
	align

	rseg $$NINITVAR
	align

	end
