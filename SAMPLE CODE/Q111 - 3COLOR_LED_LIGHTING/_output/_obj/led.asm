;; Compile Options : /TML610111 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /D_ML610Q111 /SS 1024 /SD /Oa /Om /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.31.4
;; File Name       : led.c

	type (ML610111) 
	model small, near
	$$TAB_tblLedDuty$led segment table 2h #0h
	$$TAB_valLedPeriod$led segment table 2h #0h
	$$led_DutySet$led segment code 2h #0h
	$$led_Init$led segment code 2h #0h
	$$led_Off$led segment code 2h #0h
	$$led_On$led segment code 2h #0h
	$$led_cde_Off$led segment code 2h #0h
	$$led_cde_On$led segment code 2h #0h
	$$led_f_Off$led segment code 2h #0h
	$$led_f_On$led segment code 2h #0h
CVERSION 3.31.4
CGLOBAL 01H 03H 0000H "led_f_Off" 08H 02H 03H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "led_cde_Off" 08H 02H 02H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "led_f_On" 08H 02H 06H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "led_cde_On" 08H 02H 05H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "led_DutySet" 08H 02H 07H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "led_Init" 08H 02H 00H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "led_On" 08H 02H 04H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "led_Off" 08H 02H 01H 00H 81H 02H 00H 00H 07H
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
CSGLOBAL 00H 0002H "_valLedPeriod" 02H 00H 08H
CGLOBAL 00H 42H 0002H "stepGreenLed" 02H 00H 08H
CGLOBAL 00H 42H 0002H "stepBlueLed" 02H 00H 08H
CSGLOBAL 00H 0040H "_tblLedDuty" 05H 01H 20H 00H 00H 08H
CGLOBAL 00H 42H 0002H "stepRedLed" 02H 00H 08H
CGLOBAL 00H 42H 0001H "stepLed" 02H 00H 00H
CFILE 0001H 00000029H "common\\common.h"
CFILE 0002H 00000022H "main\\mcu.h"
CFILE 0003H 000007EEH "C:\\Users\\cschell\\U8DEV~1\\Inc\\ml610111.h"
CFILE 0004H 0000003BH "led\\led.h"
CFILE 0005H 000000A0H "timer\\timer.h"
CFILE 0006H 00000080H "pwm\\pwm.h"
CFILE 0007H 00000022H "clock\\clock.h"
CFILE 0000H 000000D6H "led\\led.c"

	rseg $$led_Init$led
CFUNCTION 0

_led_Init	:
CBLOCK 0 1 89

;;{
CLINEA 0000H 0001H 0059H 0001H 0001H
	push	lr
CBLOCK 0 2 89
CRET 0000H

;;	PC0DIR = 0;	// output
CLINEA 0000H 0001H 005AH 0002H 0016H
	rb	0f261h.0

;;	PC0C0 = 1;
CLINEA 0000H 0001H 005BH 0002H 000BH
	sb	0f262h.0

;;	PC0C1 = 1;	// cmos
CLINEA 0000H 0001H 005CH 0002H 0013H
	sb	0f263h.0

;;	PC0MD0 = 0;
CLINEA 0000H 0001H 005DH 0002H 000CH
	rb	0f264h.0

;;	PC0MD1 = 1;	// PWMF0
CLINEA 0000H 0001H 005EH 0002H 0015H
	sb	0f265h.0

;;	PC1DIR = 0;	// output
CLINEA 0000H 0001H 0060H 0002H 0016H
	rb	0f261h.1

;;	PC1C0 = 1;
CLINEA 0000H 0001H 0061H 0002H 000BH
	sb	0f262h.1

;;	PC1C1 = 1;	// cmos
CLINEA 0000H 0001H 0062H 0002H 0013H
	sb	0f263h.1

;;	PC1MD0 = 0;
CLINEA 0000H 0001H 0063H 0002H 000CH
	rb	0f264h.1

;;	PC1MD1 = 1;	// PWMF1
CLINEA 0000H 0001H 0064H 0002H 0015H
	sb	0f265h.1

;;	PC2DIR = 0;	// output
CLINEA 0000H 0001H 0066H 0002H 0016H
	rb	0f261h.2

;;	PC2C0 = 1;
CLINEA 0000H 0001H 0067H 0002H 000BH
	sb	0f262h.2

;;	PC2C1 = 1;	// cmos
CLINEA 0000H 0001H 0068H 0002H 0013H
	sb	0f263h.2

;;	PC2MD0 = 0;
CLINEA 0000H 0001H 0069H 0002H 000CH
	rb	0f264h.2

;;	PC2MD1 = 1;	// PWMF2
CLINEA 0000H 0001H 006AH 0002H 0015H
	sb	0f265h.2

;;	PB0DIR = 0;	// output
CLINEA 0000H 0001H 006CH 0002H 0016H
	rb	0f259h.0

;;	PB0C0 = 1;
CLINEA 0000H 0001H 006DH 0002H 000BH
	sb	0f25ah.0

;;	PB0C1 = 1;	// cmos
CLINEA 0000H 0001H 006EH 0002H 0013H
	sb	0f25bh.0

;;	PB0MD0 = 1;
CLINEA 0000H 0001H 006FH 0002H 000CH
	sb	0f25ch.0

;;	PB0MD1 = 0;	// PWMC
CLINEA 0000H 0001H 0070H 0002H 0014H
	rb	0f25dh.0

;;	PB1DIR = 0;	// output
CLINEA 0000H 0001H 0072H 0002H 0016H
	rb	0f259h.1

;;	PB1C0 = 1;
CLINEA 0000H 0001H 0073H 0002H 000BH
	sb	0f25ah.1

;;	PB1C1 = 1;	// cmos
CLINEA 0000H 0001H 0074H 0002H 0013H
	sb	0f25bh.1

;;	PB1MD0 = 1;
CLINEA 0000H 0001H 0075H 0002H 000CH
	sb	0f25ch.1

;;	PB1MD1 = 0;	// PWMD
CLINEA 0000H 0001H 0076H 0002H 0014H
	rb	0f25dh.1

;;	PB2DIR = 0;	// output
CLINEA 0000H 0001H 0078H 0002H 0016H
	rb	0f259h.2

;;	PB2C0 = 1;
CLINEA 0000H 0001H 0079H 0002H 000BH
	sb	0f25ah.2

;;	PB2C1 = 1;	// cmos
CLINEA 0000H 0001H 007AH 0002H 0013H
	sb	0f25bh.2

;;	PB2MD0 = 1;
CLINEA 0000H 0001H 007BH 0002H 000CH
	sb	0f25ch.2

;;	PB2MD1 = 0;	// PWME
CLINEA 0000H 0001H 007CH 0002H 0014H
	rb	0f25dh.2

;;	pwmF_setPeriod( _valLedPeriod );
CLINEA 0000H 0001H 007EH 0002H 0021H
	mov	er0,	#-1
	bl	_pwmF_setPeriod

;;	pwmF_selectClock( PWM_CS_HTBCLK );
CLINEA 0000H 0001H 007FH 0002H 0023H
	mov	r0,	#01h
	bl	_pwmF_selectClock

;;	pwmF_selectOutputPolarity( PWM_NEG_NEG );
CLINEA 0000H 0001H 0080H 0002H 002AH
	mov	r0,	#01h
	bl	_pwmF_selectOutputPolarity

;;	pwmF_setOneShotMode( PWM_OS_DIS );
CLINEA 0000H 0001H 0081H 0002H 0023H
	mov	r0,	#00h
	bl	_pwmF_setOneShotMode

;;	pwmF0_setEnable();
CLINEA 0000H 0001H 0082H 0002H 0013H
	bl	_pwmF0_setEnable

;;	pwmF1_setEnable();
CLINEA 0000H 0001H 0083H 0002H 0013H
	bl	_pwmF1_setEnable

;;	pwmF2_setEnable();
CLINEA 0000H 0001H 0084H 0002H 0013H
	bl	_pwmF2_setEnable

;;	pwmC_setPeriod( _valLedPeriod );
CLINEA 0000H 0001H 0086H 0002H 0021H
	mov	er0,	#-1
	bl	_pwmC_setPeriod

;;	pwmC_selectClock( PWM_CS_HTBCLK );
CLINEA 0000H 0001H 0087H 0002H 0023H
	mov	r0,	#01h
	bl	_pwmC_selectClock

;;	pwmC_selectOutputPolarity( PWM_NEG_NEG );
CLINEA 0000H 0001H 0088H 0002H 002AH
	mov	r0,	#01h
	bl	_pwmC_selectOutputPolarity

;;	pwmC_setOneShotMode( PWM_OS_DIS );
CLINEA 0000H 0001H 0089H 0002H 0023H
	mov	r0,	#00h
	bl	_pwmC_setOneShotMode

;;	pwmD_setPeriod( _valLedPeriod );
CLINEA 0000H 0001H 008BH 0002H 0021H
	mov	er0,	#-1
	bl	_pwmD_setPeriod

;;	pwmD_selectClock( PWM_CS_HTBCLK );
CLINEA 0000H 0001H 008CH 0002H 0023H
	mov	r0,	#01h
	bl	_pwmD_selectClock

;;	pwmD_selectOutputPolarity( PWM_NEG_NEG );
CLINEA 0000H 0001H 008DH 0002H 002AH
	mov	r0,	#01h
	bl	_pwmD_selectOutputPolarity

;;	pwmD_setOneShotMode( PWM_OS_DIS );
CLINEA 0000H 0001H 008EH 0002H 0023H
	mov	r0,	#00h
	bl	_pwmD_setOneShotMode

;;	pwmE_setPeriod( _valLedPeriod );
CLINEA 0000H 0001H 0090H 0002H 0021H
	mov	er0,	#-1
	bl	_pwmE_setPeriod

;;	pwmE_selectClock( PWM_CS_HTBCLK );
CLINEA 0000H 0001H 0091H 0002H 0023H
	mov	r0,	#01h
	bl	_pwmE_selectClock

;;	pwmE_selectOutputPolarity( PWM_NEG_NEG );
CLINEA 0000H 0001H 0092H 0002H 002AH
	mov	r0,	#01h
	bl	_pwmE_selectOutputPolarity

;;	pwmE_setOneShotMode( PWM_OS_DIS );
CLINEA 0000H 0001H 0093H 0002H 0023H
	mov	r0,	#00h
	bl	_pwmE_setOneShotMode

;;	stepRedLed = STEP_LED_MAX;
CLINEA 0000H 0001H 0095H 0002H 001BH
	mov	er0,	#31
	st	er0,	NEAR _stepRedLed

;;	stepGreenLed = STEP_LED_MIN;
CLINEA 0000H 0001H 0096H 0002H 001DH
	mov	er0,	#0 
	st	er0,	NEAR _stepGreenLed

;;	stepBlueLed = STEP_LED_MIN;
CLINEA 0000H 0001H 0097H 0002H 001CH
	st	er0,	NEAR _stepBlueLed

;;	led_DutySet();
CLINEA 0000H 0001H 0098H 0002H 000FH
	bl	_led_DutySet
CBLOCKEND 0 2 153

;;}
CLINEA 0000H 0001H 0099H 0001H 0001H
	pop	pc
CBLOCKEND 0 1 153
CFUNCTIONEND 0


	rseg $$led_Off$led
CFUNCTION 1

_led_Off	:
CBLOCK 1 1 156

;;{
CLINEA 0000H 0001H 009CH 0001H 0001H
	push	lr
CBLOCK 1 2 156
CRET 0000H

;;	PCRUN = 0;
CLINEA 0000H 0001H 009DH 0002H 000BH
	rb	0f917h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 009EH 0002H 000BH
	rb	0f927h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 009FH 0002H 000BH
	rb	0f937h.0

;;	PFRUN = 0;
CLINEA 0000H 0001H 00A0H 0002H 000BH
	rb	0f973h.0

;;	pwmC_clearCount();
CLINEA 0000H 0001H 00A1H 0002H 0013H
	bl	_pwmC_clearCount

;;	pwmD_clearCount();
CLINEA 0000H 0001H 00A2H 0002H 0013H
	bl	_pwmD_clearCount

;;	pwmE_clearCount();
CLINEA 0000H 0001H 00A3H 0002H 0013H
	bl	_pwmE_clearCount

;;	pwmF_clearCount();
CLINEA 0000H 0001H 00A4H 0002H 0013H
	bl	_pwmF_clearCount
CBLOCKEND 1 2 165

;;}
CLINEA 0000H 0001H 00A5H 0001H 0001H
	pop	pc
CBLOCKEND 1 1 165
CFUNCTIONEND 1


	rseg $$led_cde_Off$led
CFUNCTION 2

_led_cde_Off	:
CBLOCK 2 1 168

;;{
CLINEA 0000H 0001H 00A8H 0001H 0001H
	push	lr
CBLOCK 2 2 168
CRET 0000H

;;	PCRUN = 0;
CLINEA 0000H 0001H 00A9H 0002H 000BH
	rb	0f917h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 00AAH 0002H 000BH
	rb	0f927h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 00ABH 0002H 000BH
	rb	0f937h.0

;;	pwmC_clearCount();
CLINEA 0000H 0001H 00ACH 0002H 0013H
	bl	_pwmC_clearCount

;;	pwmD_clearCount();
CLINEA 0000H 0001H 00ADH 0002H 0013H
	bl	_pwmD_clearCount

;;	pwmE_clearCount();
CLINEA 0000H 0001H 00AEH 0002H 0013H
	bl	_pwmE_clearCount
CBLOCKEND 2 2 175

;;}
CLINEA 0000H 0001H 00AFH 0001H 0001H
	pop	pc
CBLOCKEND 2 1 175
CFUNCTIONEND 2


	rseg $$led_f_Off$led
CFUNCTION 3

_led_f_Off	:
CBLOCK 3 1 178

;;{
CLINEA 0000H 0001H 00B2H 0001H 0001H
CBLOCK 3 2 178

;;	PFRUN = 0;
CLINEA 0000H 0001H 00B3H 0002H 000BH
	rb	0f973h.0

;;	pwmF_clearCount();
CLINEA 0000H 0001H 00B4H 0002H 0013H
	b	_pwmF_clearCount
CBLOCKEND 3 2 181
CLINEA 0000H 0001H 00B5H 0001H 0001H
CBLOCKEND 3 1 181
CFUNCTIONEND 3


	rseg $$led_On$led
CFUNCTION 4

_led_On	:
CBLOCK 4 1 184

;;{
CLINEA 0000H 0001H 00B8H 0001H 0001H
CBLOCK 4 2 184

;;	PCRUN = 1;
CLINEA 0000H 0001H 00B9H 0002H 000BH
	sb	0f917h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 00BAH 0002H 000BH
	sb	0f927h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 00BBH 0002H 000BH
	sb	0f937h.0

;;	PFRUN = 1;
CLINEA 0000H 0001H 00BCH 0002H 000BH
	sb	0f973h.0
CBLOCKEND 4 2 189

;;}
CLINEA 0000H 0001H 00BDH 0001H 0001H
	rt
CBLOCKEND 4 1 189
CFUNCTIONEND 4


	rseg $$led_cde_On$led
CFUNCTION 5

_led_cde_On	:
CBLOCK 5 1 192

;;{
CLINEA 0000H 0001H 00C0H 0001H 0001H
CBLOCK 5 2 192

;;	PCRUN = 1;
CLINEA 0000H 0001H 00C1H 0002H 000BH
	sb	0f917h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 00C2H 0002H 000BH
	sb	0f927h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 00C3H 0002H 000BH
	sb	0f937h.0
CBLOCKEND 5 2 196

;;}
CLINEA 0000H 0001H 00C4H 0001H 0001H
	rt
CBLOCKEND 5 1 196
CFUNCTIONEND 5


	rseg $$led_f_On$led
CFUNCTION 6

_led_f_On	:
CBLOCK 6 1 199

;;{
CLINEA 0000H 0001H 00C7H 0001H 0001H
CBLOCK 6 2 199

;;	PFRUN = 1;
CLINEA 0000H 0001H 00C8H 0002H 000BH
	sb	0f973h.0
CBLOCKEND 6 2 201

;;}
CLINEA 0000H 0001H 00C9H 0001H 0001H
	rt
CBLOCKEND 6 1 201
CFUNCTIONEND 6


	rseg $$led_DutySet$led
CFUNCTION 7

_led_DutySet	:
CBLOCK 7 1 204

;;{
CLINEA 0000H 0001H 00CCH 0001H 0001H
	push	lr
CBLOCK 7 2 204
CRET 0000H

;;	pwmC_setDuty( _tblLedDuty[stepBlueLed] );
CLINEA 0000H 0001H 00CDH 0002H 002AH
	l	er0,	NEAR _stepBlueLed
	add	er0,	er0
	l	er0,	NEAR __tblLedDuty[er0]
	bl	_pwmC_setDuty

;;	pwmD_setDuty( _tblLedDuty[stepRedLed] );
CLINEA 0000H 0001H 00CEH 0002H 0029H
	l	er0,	NEAR _stepRedLed
	add	er0,	er0
	l	er0,	NEAR __tblLedDuty[er0]
	bl	_pwmD_setDuty

;;	pwmE_setDuty( _tblLedDuty[stepGreenLed] );
CLINEA 0000H 0001H 00CFH 0002H 002BH
	l	er0,	NEAR _stepGreenLed
	add	er0,	er0
	l	er0,	NEAR __tblLedDuty[er0]
	bl	_pwmE_setDuty

;;	pwmF0_setDuty( _tblLedDuty[stepBlueLed] );
CLINEA 0000H 0001H 00D1H 0002H 002BH
	l	er0,	NEAR _stepBlueLed
	add	er0,	er0
	l	er0,	NEAR __tblLedDuty[er0]
	bl	_pwmF0_setDuty

;;	pwmF1_setDuty( _tblLedDuty[stepRedLed] );
CLINEA 0000H 0001H 00D2H 0002H 002AH
	l	er0,	NEAR _stepRedLed
	add	er0,	er0
	l	er0,	NEAR __tblLedDuty[er0]
	bl	_pwmF1_setDuty

;;	pwmF2_setDuty( _tblLedDuty[stepGreenLed] );
CLINEA 0000H 0001H 00D3H 0002H 002CH
	l	er0,	NEAR _stepGreenLed
	add	er0,	er0
	l	er0,	NEAR __tblLedDuty[er0]
	bl	_pwmF2_setDuty

;;	pwmF_dutyUpdate();
CLINEA 0000H 0001H 00D4H 0002H 0013H
	bl	_pwmF_dutyUpdate
CBLOCKEND 7 2 213

;;}
CLINEA 0000H 0001H 00D5H 0001H 0001H
	pop	pc
CBLOCKEND 7 1 213
CFUNCTIONEND 7

	public _led_f_Off
	public _led_cde_Off
	public _led_f_On
	public _led_cde_On
	public _led_DutySet
	public _led_Init
	public _led_On
	public _led_Off
	_stepGreenLed comm data 02h #00h
	_stepBlueLed comm data 02h #00h
	_stepRedLed comm data 02h #00h
	_stepLed comm data 01h #00h
	extrn code near : _pwmE_clearCount
	extrn code near : _pwmC_clearCount
	extrn code near : _pwmE_selectClock
	extrn code near : _pwmF_selectClock
	extrn code near : _pwmC_selectClock
	extrn code near : _pwmD_selectClock
	extrn code near : _pwmF1_setEnable
	extrn code near : _pwmF0_setDuty
	extrn code near : _pwmF_selectOutputPolarity
	extrn code near : _pwmD_setPeriod
	extrn code near : _pwmD_setOneShotMode
	extrn code near : _pwmC_setOneShotMode
	extrn code near : _pwmE_selectOutputPolarity
	extrn code near : _pwmD_setDuty
	extrn code near : _pwmC_setDuty
	extrn code near : _pwmD_selectOutputPolarity
	extrn code near : _pwmE_setDuty
	extrn code near : _pwmF2_setEnable
	extrn code near : _pwmF_setOneShotMode
	extrn code near : _pwmE_setPeriod
	extrn code near : _pwmF_clearCount
	extrn code near : _pwmD_clearCount
	extrn code near : _pwmC_selectOutputPolarity
	extrn code near : _pwmF0_setEnable
	extrn code near : _pwmC_setPeriod
	extrn code near : _pwmE_setOneShotMode
	extrn code near : _pwmF_setPeriod
	extrn code near : _pwmF1_setDuty
	extrn code near : _pwmF_dutyUpdate
	extrn code near : _pwmF2_setDuty
	extrn code near : _main

	rseg $$TAB_valLedPeriod$led
__valLedPeriod :
	dw	0ffffh

	rseg $$TAB_tblLedDuty$led
__tblLedDuty :
	dw	00h
	dw	0842h
	dw	01084h
	dw	018c6h
	dw	02108h
	dw	0294ah
	dw	0318ch
	dw	039ceh
	dw	04210h
	dw	04a52h
	dw	05294h
	dw	05ad6h
	dw	06318h
	dw	06b5ah
	dw	0739ch
	dw	07bdeh
	dw	08420h
	dw	08c62h
	dw	094a4h
	dw	09ce6h
	dw	0a528h
	dw	0ad6ah
	dw	0b5ach
	dw	0bdeeh
	dw	0c630h
	dw	0ce72h
	dw	0d6b4h
	dw	0def6h
	dw	0e738h
	dw	0ef7ah
	dw	0f7bch
	dw	0ffffh

	end
