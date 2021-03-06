;; Compile Options : /TML610178A /ML /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /D_ML610Q178 /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.31.4
;; File Name       : led.c

	type (ML610178A) 
	model large, near
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$TAB_tblMixedColorDuty$led segment table 2h #0h
	$$TAB_tblNightLightDuty$led segment table 2h #0h
	$$TAB_tblSingleColorDuty$led segment table 2h #0h
	$$TAB_valSingleColorPeriod$led segment table 2h #0h
	$$adValueToStep$led segment code 2h any
	$$ledBulbDutySet$led segment code 2h any
	$$ledBulbInit$led segment code 2h any
	$$ledBulbOff$led segment code 2h any
	$$ledBulbOn$led segment code 2h any
	$$ledBulbStepUpDn$led segment code 2h any
	$$ledMixedDutySet$led segment code 2h any
	$$ledMixedInit$led segment code 2h any
	$$ledMixedOff$led segment code 2h any
	$$ledMixedOn$led segment code 2h any
	$$ledMixedStepUpDn$led segment code 2h any
	$$ledNaturalDutySet$led segment code 2h any
	$$ledNaturalInit$led segment code 2h any
	$$ledNaturalOff$led segment code 2h any
	$$ledNaturalOn$led segment code 2h any
	$$ledNaturalStepUpDn$led segment code 2h any
	$$ledNightDutySet$led segment code 2h any
	$$ledNightInit$led segment code 2h any
	$$ledNightOff$led segment code 2h any
	$$ledNightOn$led segment code 2h any
	$$ledNightStepUpDn$led segment code 2h any
	$$ledNightToggle$led segment code 2h any
CVERSION 3.31.4
CGLOBAL 01H 02H 0000H "ledNightStepUpDn" 08H 02H 14H 00H 81H 04H 00H 00H 00H
CGLOBAL 01H 03H 0000H "ledMixedInit" 08H 02H 0AH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledMixedStepUpDn" 08H 02H 0EH 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledBulbOn" 08H 02H 07H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNaturalInit" 08H 02H 00H 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNaturalDutySet" 08H 02H 03H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "ledBulbStepUpDn" 08H 02H 09H 00H 81H 04H 00H 00H 00H
CGLOBAL 01H 03H 0000H "ledMixedOff" 08H 02H 0BH 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledBulbOff" 08H 02H 06H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledBulbInit" 08H 02H 05H 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNightOff" 08H 02H 11H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "ledNaturalStepUpDn" 08H 02H 04H 00H 81H 04H 00H 00H 00H
CGLOBAL 01H 03H 0000H "ledNaturalOn" 08H 02H 02H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNightToggle" 08H 02H 15H 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNightInit" 08H 02H 10H 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledMixedDutySet" 08H 02H 0DH 00H 83H 08H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNightDutySet" 08H 02H 13H 00H 82H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNaturalOff" 08H 02H 01H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledMixedOn" 08H 02H 0CH 00H 81H 10H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ledNightOn" 08H 02H 12H 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 02H 0000H "adValueToStep" 08H 02H 0FH 00H 80H 02H 00H 00H 00H
CGLOBAL 01H 03H 0000H "ledBulbDutySet" 08H 02H 08H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0002H 0002H 00000004H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "dutyHigh" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000002H "dutyLow" 02H 00H 08H
CSTRUCTTAG 0000H 0000H 0001H 0004H 00000008H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "adMin" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000002H "adMax" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "dutyNatural" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000006H "dutyBulb" 02H 00H 08H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "STRUCT_STEP_MIXED_DUTY" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "STRUCT_STEP_NIGHT_DUTY" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 42H 0001H "_portNightNext" 02H 00H 00H
CGLOBAL 01H 42H 0001H "stepNight" 02H 00H 00H
CSGLOBAL 01H 00A0H "_tblMixedColorDuty" 07H 01H 14H 00H 00H 05H 01H 00H
CSGLOBAL 01H 0018H "_tblNightLightDuty" 07H 01H 06H 00H 00H 05H 02H 00H
CSGLOBAL 00H 0002H "_valSingleColorPeriod" 02H 00H 08H
CSGLOBAL 00H 0028H "_tblSingleColorDuty" 05H 01H 14H 00H 00H 08H
CGLOBAL 01H 42H 0001H "stepNatural" 02H 00H 00H
CGLOBAL 01H 42H 0001H "stepMixed" 02H 00H 00H
CGLOBAL 01H 42H 0001H "stepBulb" 02H 00H 00H
CFILE 0001H 00000027H "common\\common.h"
CFILE 0002H 00000020H "main\\mcu.h"
CFILE 0003H 000008AAH "main\\ml610178A.h"
CFILE 0004H 0000006EH "led\\led.h"
CFILE 0005H 000001ABH "timer\\timer.h"
CFILE 0006H 00000103H "pwm\\pwm45.h"
CFILE 0000H 000001DAH "led\\led.c"

	rseg $$ledNaturalInit$led
CFUNCTION 0

_ledNaturalInit	:
CBLOCK 0 1 124

;;{
CLINEA 0000H 0001H 007CH 0001H 0001H
	push	lr
CBLOCK 0 2 124
CRET 0000H

;;	P34DIR = 0;	// output
CLINEA 0000H 0001H 007DH 0002H 0016H
	rb	0f219h.4

;;	P34C0 = 1;
CLINEA 0000H 0001H 007EH 0002H 000BH
	sb	0f21ah.4

;;	P34C1 = 1;	// cmos
CLINEA 0000H 0001H 007FH 0002H 0013H
	sb	0f21bh.4
CBLOCK 0 3 129

;;	pwm4_setPeriod( _valSingleColorPeriod );
CLINEA 0000H 0000H 0081H 0002H 0029H
	mov	r0,	#0dh
	mov	r1,	#085h
	st	er0,	0f8a0h
CBLOCKEND 0 3 129
CBLOCK 0 4 130
CLOCAL 4AH 0001H 0000H 0004H "tmpCs" 02H 00H 00H

;;	pwm4_selectClock( PWM45_CS_HTBCLK );
CLINEA 0000H 0000H 0082H 0002H 0025H
	sb	0f8a6h.0
	rb	0f8a6h.1
CBLOCKEND 0 4 130
CBLOCK 0 5 131

;;	pwm4_selectOutputPolarity( PWM45_NEG_POS );
CLINEA 0000H 0000H 0083H 0002H 002CH
	rb	0f8a6h.4
CBLOCKEND 0 5 131
CBLOCK 0 6 132

;;	pwm4_selectInitializeLevel( PWM45_INI_HIGH );
CLINEA 0000H 0000H 0084H 0002H 002EH
	rb	0f8a6h.5
CBLOCKEND 0 6 132
CBLOCK 0 7 133

;;	pwm4_selectOutputAtStop( PWM45_STPSEL_INIT );
CLINEA 0000H 0000H 0085H 0002H 002EH
	sb	0f8a6h.6
CBLOCKEND 0 7 133
CBLOCK 0 8 134

;;	pwm4_setOneShotMode( PWM45_OS_DIS );
CLINEA 0000H 0000H 0086H 0002H 0025H
	rb	0f8a8h.6
CBLOCKEND 0 8 134
CBLOCK 0 9 136
CLOCAL 4AH 0001H 0000H 0009H "tmpMd" 02H 00H 00H

;;	pwm45_setCouplingMode( PWM45_CPL_DIS );
CLINEA 0000H 0000H 0088H 0002H 0028H
	rb	0f8a8h.7
	rb	0f8a9h.4
CBLOCKEND 0 9 136

;;	stepNatural = STEP_SINGLE_DEFAULT;
CLINEA 0000H 0001H 008AH 0002H 0023H
	mov	r0,	#09h
	st	r0,	NEAR _stepNatural

;;	ledNaturalOn();
CLINEA 0000H 0001H 008BH 0002H 0010H
	bl	_ledNaturalOn

;;	ledNaturalOff();
CLINEA 0000H 0001H 008DH 0002H 0011H
	bl	_ledNaturalOff
CBLOCKEND 0 2 143

;;}
CLINEA 0000H 0001H 008FH 0001H 0001H
	pop	pc
CBLOCKEND 0 1 143
CFUNCTIONEND 0


	rseg $$ledNaturalOff$led
CFUNCTION 1

_ledNaturalOff	:
CBLOCK 1 1 146

;;{
CLINEA 0000H 0001H 0092H 0001H 0001H
CBLOCK 1 2 146
CBLOCK 1 3 147

;;	pwm4_stop();
CLINEA 0000H 0000H 0093H 0002H 000DH
	rb	0f8a7h.0
CBLOCKEND 1 3 147

;;	P34MD0 = 0;
CLINEA 0000H 0001H 0095H 0002H 000CH
	rb	0f21ch.4

;;	P34MD1 = 0;	// port
CLINEA 0000H 0001H 0096H 0002H 0014H
	rb	0f21dh.4

;;	P34D = PORT_L;
CLINEA 0000H 0001H 0097H 0002H 000FH
	rb	0f218h.4
CBLOCKEND 1 2 152

;;}
CLINEA 0000H 0001H 0098H 0001H 0001H
	rt
CBLOCKEND 1 1 152
CFUNCTIONEND 1


	rseg $$ledNaturalOn$led
CFUNCTION 2

_ledNaturalOn	:
CBLOCK 2 1 155

;;{
CLINEA 0000H 0001H 009BH 0001H 0001H
CBLOCK 2 2 155

;;	P34MD0 = 0;
CLINEA 0000H 0001H 009CH 0002H 000CH
	rb	0f21ch.4

;;	P34MD1 = 1;	// pwm
CLINEA 0000H 0001H 009DH 0002H 0013H
	sb	0f21dh.4

;;	ledNaturalDutySet( _tblSingleColorDuty[stepNatural] );
CLINEA 0000H 0001H 009FH 0002H 0037H
	l	r0,	NEAR _stepNatural
	mov	r1,	#00h
	add	er0,	er0
	l	er0,	NEAR __tblSingleColorDuty[er0]
	b	_ledNaturalDutySet
CBLOCKEND 2 2 160
CLINEA 0000H 0001H 00A0H 0001H 0001H
CBLOCKEND 2 1 160
CFUNCTIONEND 2


	rseg $$ledNaturalDutySet$led
CFUNCTION 3

_ledNaturalDutySet	:
CBLOCK 3 1 162

;;{
CLINEA 0000H 0001H 00A2H 0001H 0001H
	mov	er2,	er0
CBLOCK 3 2 162
CARGUMENT 46H 0002H 0025H "duty" 02H 00H 01H

;;	P34MD0 = 0;
CLINEA 0000H 0001H 00A3H 0002H 000CH
	rb	0f21ch.4

;;	P34MD1 = 1;	// pwm
CLINEA 0000H 0001H 00A4H 0002H 0013H
	sb	0f21dh.4
CBLOCK 3 3 166

;;	pwm4_stop();
CLINEA 0000H 0000H 00A6H 0002H 000DH
	rb	0f8a7h.0
CBLOCKEND 3 3 166
CBLOCK 3 4 167

;;	pwm4_clearCount();
CLINEA 0000H 0000H 00A7H 0002H 0013H
	mov	r0,	#00h
	st	r0,	0f8a4h
CBLOCKEND 3 4 167

;;	if( duty < _valSingleColorPeriod )
CLINEA 0000H 0001H 00ABH 0002H 0023H
	cmp	r2,	#0dh
	cmpc	r3,	#085h
	bge	_$L72
CBLOCK 3 5 172
CBLOCK 3 6 173

;;		pwm4_setDuty( duty );
CLINEA 0000H 0000H 00ADH 0003H 0017H
	st	er2,	0f8a2h
CBLOCKEND 3 6 173
CBLOCK 3 7 174

;;		pwm4_start();
CLINEA 0000H 0000H 00AEH 0003H 000FH
	sb	0f8a7h.0
CBLOCKEND 3 7 174
CBLOCKEND 3 5 175

;;	}
CLINEA 0000H 0000H 00AFH 0002H 0002H
_$L72 :
CBLOCKEND 3 2 176

;;}
CLINEA 0000H 0001H 00B0H 0001H 0001H
	rt
CBLOCKEND 3 1 176
CFUNCTIONEND 3


	rseg $$ledNaturalStepUpDn$led
CFUNCTION 4

_ledNaturalStepUpDn	:
CBLOCK 4 1 179

;;{
CLINEA 0000H 0001H 00B3H 0001H 0001H
	push	lr
CBLOCK 4 2 179
CRET 0000H
CARGUMENT 46H 0001H 0014H "updn" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "ret" 02H 00H 00H

;;	if( updn == STEP_UP )
CLINEA 0000H 0001H 00B5H 0002H 0016H
	cmp	r0,	#00h
	bne	_$L83
CBLOCK 4 3 182

;;		if( stepNatural == STEP_SINGLE_MAX )
CLINEA 0000H 0001H 00B7H 0003H 0026H
	l	r0,	NEAR _stepNatural
	cmp	r0,	#013h
	bne	_$L85
CBLOCK 4 4 184

;;			ret = FAIL;
CLINEA 0000H 0001H 00B9H 0004H 000EH
	mov	r0,	#00h
CBLOCKEND 4 4 186

;;		else
CLINEA 0000H 0001H 00BBH 0003H 0006H
	bal	_$L87
_$L85 :
CBLOCK 4 5 188

;;			stepNatural++;
CLINEA 0000H 0000H 00BDH 0004H 0011H
	add	r0,	#01h
	st	r0,	NEAR _stepNatural

;;			ledNaturalOn();
CLINEA 0000H 0001H 00BEH 0004H 0012H
	bl	_ledNaturalOn

;;			ret = PASS;
CLINEA 0000H 0001H 00BFH 0004H 000EH
	mov	r0,	#01h
CBLOCKEND 4 5 192

;;		}
CLINEA 0000H 0000H 00C0H 0003H 0003H
_$L87 :

;;	else // STEP_DOWN
CLINEA 0000H 0001H 00C2H 0002H 0012H
	bal	_$L91
_$L83 :
CBLOCK 4 6 195

;;		if( stepNatural == STEP_SINGLE_MIN )
CLINEA 0000H 0001H 00C4H 0003H 0026H
	l	r0,	NEAR _stepNatural
	bne	_$L89
CBLOCK 4 7 197

;;			ret = FAIL;
CLINEA 0000H 0001H 00C6H 0004H 000EH
	mov	r0,	#00h
CBLOCKEND 4 7 199

;;		else
CLINEA 0000H 0001H 00C8H 0003H 0006H
	bal	_$L91
_$L89 :
CBLOCK 4 8 201

;;			stepNatural--;
CLINEA 0000H 0000H 00CAH 0004H 0011H
	add	r0,	#0ffh
	st	r0,	NEAR _stepNatural

;;			ledNaturalOn();
CLINEA 0000H 0001H 00CBH 0004H 0012H
	bl	_ledNaturalOn

;;			ret = PASS;
CLINEA 0000H 0001H 00CCH 0004H 000EH
	mov	r0,	#01h
CBLOCKEND 4 8 205

;;		}
CLINEA 0000H 0000H 00CDH 0003H 0003H
_$L91 :
CBLOCKEND 4 6 206

;;	return ret;
CLINEA 0000H 0001H 00D0H 0002H 000CH
CBLOCKEND 4 3 209
CBLOCKEND 4 2 209

;;}
CLINEA 0000H 0000H 00D1H 0001H 0001H
	pop	pc
CBLOCKEND 4 1 209
CFUNCTIONEND 4


	rseg $$ledBulbInit$led
CFUNCTION 5

_ledBulbInit	:
CBLOCK 5 1 214

;;{
CLINEA 0000H 0001H 00D6H 0001H 0001H
	push	lr
CBLOCK 5 2 214
CRET 0000H

;;	P35DIR = 0;	// output
CLINEA 0000H 0001H 00D7H 0002H 0016H
	rb	0f219h.5

;;	P35C0 = 1;
CLINEA 0000H 0001H 00D8H 0002H 000BH
	sb	0f21ah.5

;;	P35C1 = 1;	// cmos
CLINEA 0000H 0001H 00D9H 0002H 0013H
	sb	0f21bh.5
CBLOCK 5 3 219

;;	pwm5_setPeriod( _valSingleColorPeriod );
CLINEA 0000H 0000H 00DBH 0002H 0029H
	mov	r0,	#0dh
	mov	r1,	#085h
	st	er0,	0f8b0h
CBLOCKEND 5 3 219
CBLOCK 5 4 220
CLOCAL 4AH 0001H 0000H 0004H "tmpCs" 02H 00H 00H

;;	pwm5_selectClock( PWM45_CS_HTBCLK );
CLINEA 0000H 0000H 00DCH 0002H 0025H
	sb	0f8b6h.0
	rb	0f8b6h.1
CBLOCKEND 5 4 220
CBLOCK 5 5 221

;;	pwm5_selectOutputPolarity( PWM45_NEG_POS );
CLINEA 0000H 0000H 00DDH 0002H 002CH
	rb	0f8b6h.4
CBLOCKEND 5 5 221
CBLOCK 5 6 222

;;	pwm5_selectInitializeLevel( PWM45_INI_HIGH );
CLINEA 0000H 0000H 00DEH 0002H 002EH
	rb	0f8b6h.5
CBLOCKEND 5 6 222
CBLOCK 5 7 223

;;	pwm5_selectOutputAtStop( PWM45_STPSEL_INIT );
CLINEA 0000H 0000H 00DFH 0002H 002EH
	sb	0f8b6h.6
CBLOCKEND 5 7 223
CBLOCK 5 8 224

;;	pwm5_setOneShotMode( PWM45_OS_DIS );
CLINEA 0000H 0000H 00E0H 0002H 0025H
	rb	0f8b8h.6
CBLOCKEND 5 8 224
CBLOCK 5 9 226
CLOCAL 4AH 0001H 0000H 0009H "tmpMd" 02H 00H 00H

;;	pwm45_setCouplingMode( PWM45_CPL_DIS );
CLINEA 0000H 0000H 00E2H 0002H 0028H
	rb	0f8a8h.7
	rb	0f8a9h.4
CBLOCKEND 5 9 226

;;	stepBulb = STEP_SINGLE_DEFAULT;
CLINEA 0000H 0001H 00E4H 0002H 0020H
	mov	r0,	#09h
	st	r0,	NEAR _stepBulb

;;	ledBulbOn();
CLINEA 0000H 0001H 00E5H 0002H 000DH
	bl	_ledBulbOn

;;	ledBulbOff();
CLINEA 0000H 0001H 00E7H 0002H 000EH
	bl	_ledBulbOff
CBLOCKEND 5 2 232

;;}
CLINEA 0000H 0001H 00E8H 0001H 0001H
	pop	pc
CBLOCKEND 5 1 232
CFUNCTIONEND 5


	rseg $$ledBulbOff$led
CFUNCTION 6

_ledBulbOff	:
CBLOCK 6 1 235

;;{
CLINEA 0000H 0001H 00EBH 0001H 0001H
CBLOCK 6 2 235
CBLOCK 6 3 236

;;	pwm5_stop();
CLINEA 0000H 0000H 00ECH 0002H 000DH
	rb	0f8b7h.0
CBLOCKEND 6 3 236

;;	P35MD0 = 0;
CLINEA 0000H 0001H 00EEH 0002H 000CH
	rb	0f21ch.5

;;	P35MD1 = 0;	// port
CLINEA 0000H 0001H 00EFH 0002H 0014H
	rb	0f21dh.5

;;	P35D = PORT_L;
CLINEA 0000H 0001H 00F0H 0002H 000FH
	rb	0f218h.5
CBLOCKEND 6 2 241

;;}
CLINEA 0000H 0001H 00F1H 0001H 0001H
	rt
CBLOCKEND 6 1 241
CFUNCTIONEND 6


	rseg $$ledBulbOn$led
CFUNCTION 7

_ledBulbOn	:
CBLOCK 7 1 244

;;{
CLINEA 0000H 0001H 00F4H 0001H 0001H
CBLOCK 7 2 244

;;	P35MD0 = 0;
CLINEA 0000H 0001H 00F5H 0002H 000CH
	rb	0f21ch.5

;;	P35MD1 = 1;	// pwm
CLINEA 0000H 0001H 00F6H 0002H 0013H
	sb	0f21dh.5

;;	ledBulbDutySet( _tblSingleColorDuty[stepBulb] );
CLINEA 0000H 0001H 00F8H 0002H 0031H
	l	r0,	NEAR _stepBulb
	mov	r1,	#00h
	add	er0,	er0
	l	er0,	NEAR __tblSingleColorDuty[er0]
	b	_ledBulbDutySet
CBLOCKEND 7 2 249
CLINEA 0000H 0001H 00F9H 0001H 0001H
CBLOCKEND 7 1 249
CFUNCTIONEND 7


	rseg $$ledBulbDutySet$led
CFUNCTION 8

_ledBulbDutySet	:
CBLOCK 8 1 252

;;{
CLINEA 0000H 0001H 00FCH 0001H 0001H
	mov	er2,	er0
CBLOCK 8 2 252
CARGUMENT 46H 0002H 0025H "duty" 02H 00H 01H

;;	P35MD0 = 0;
CLINEA 0000H 0001H 00FDH 0002H 000CH
	rb	0f21ch.5

;;	P35MD1 = 1;	// pwm
CLINEA 0000H 0001H 00FEH 0002H 0013H
	sb	0f21dh.5
CBLOCK 8 3 256

;;	pwm5_stop();
CLINEA 0000H 0000H 0100H 0002H 000DH
	rb	0f8b7h.0
CBLOCKEND 8 3 256
CBLOCK 8 4 257

;;	pwm5_clearCount();
CLINEA 0000H 0000H 0101H 0002H 0013H
	mov	r0,	#00h
	st	r0,	0f8b4h
CBLOCKEND 8 4 257

;;	if( duty < _valSingleColorPeriod )
CLINEA 0000H 0001H 0105H 0002H 0023H
	cmp	r2,	#0dh
	cmpc	r3,	#085h
	bge	_$L136
CBLOCK 8 5 262
CBLOCK 8 6 263

;;		pwm5_setDuty( duty );
CLINEA 0000H 0000H 0107H 0003H 0017H
	st	er2,	0f8b2h
CBLOCKEND 8 6 263
CBLOCK 8 7 264

;;		pwm5_start();
CLINEA 0000H 0000H 0108H 0003H 000FH
	sb	0f8b7h.0
CBLOCKEND 8 7 264
CBLOCKEND 8 5 265

;;	}
CLINEA 0000H 0000H 0109H 0002H 0002H
_$L136 :
CBLOCKEND 8 2 266

;;}
CLINEA 0000H 0001H 010AH 0001H 0001H
	rt
CBLOCKEND 8 1 266
CFUNCTIONEND 8


	rseg $$ledBulbStepUpDn$led
CFUNCTION 9

_ledBulbStepUpDn	:
CBLOCK 9 1 269

;;{
CLINEA 0000H 0001H 010DH 0001H 0001H
	push	lr
CBLOCK 9 2 269
CRET 0000H
CARGUMENT 46H 0001H 0014H "updn" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "ret" 02H 00H 00H

;;	if( updn == STEP_UP )
CLINEA 0000H 0001H 010FH 0002H 0016H
	cmp	r0,	#00h
	bne	_$L147
CBLOCK 9 3 272

;;		if( stepBulb == STEP_SINGLE_MAX )
CLINEA 0000H 0001H 0111H 0003H 0023H
	l	r0,	NEAR _stepBulb
	cmp	r0,	#013h
	bne	_$L149
CBLOCK 9 4 274

;;			ret = FAIL;
CLINEA 0000H 0001H 0113H 0004H 000EH
	mov	r0,	#00h
CBLOCKEND 9 4 276

;;		else
CLINEA 0000H 0001H 0115H 0003H 0006H
	bal	_$L151
_$L149 :
CBLOCK 9 5 278

;;			stepBulb++;
CLINEA 0000H 0000H 0117H 0004H 000EH
	add	r0,	#01h
	st	r0,	NEAR _stepBulb

;;			ledBulbOn();
CLINEA 0000H 0001H 0118H 0004H 000FH
	bl	_ledBulbOn

;;			ret = PASS;
CLINEA 0000H 0001H 0119H 0004H 000EH
	mov	r0,	#01h
CBLOCKEND 9 5 282

;;		}
CLINEA 0000H 0000H 011AH 0003H 0003H
_$L151 :

;;	else // STEP_DOWN
CLINEA 0000H 0001H 011CH 0002H 0012H
	bal	_$L155
_$L147 :
CBLOCK 9 6 285

;;		if( stepBulb == STEP_SINGLE_MIN )
CLINEA 0000H 0001H 011EH 0003H 0023H
	l	r0,	NEAR _stepBulb
	bne	_$L153
CBLOCK 9 7 287

;;			ret = FAIL;
CLINEA 0000H 0001H 0120H 0004H 000EH
	mov	r0,	#00h
CBLOCKEND 9 7 289

;;		else
CLINEA 0000H 0001H 0122H 0003H 0006H
	bal	_$L155
_$L153 :
CBLOCK 9 8 291

;;			stepBulb--;
CLINEA 0000H 0000H 0124H 0004H 000EH
	add	r0,	#0ffh
	st	r0,	NEAR _stepBulb

;;			ledBulbOn();
CLINEA 0000H 0001H 0125H 0004H 000FH
	bl	_ledBulbOn

;;			ret = PASS;
CLINEA 0000H 0001H 0126H 0004H 000EH
	mov	r0,	#01h
CBLOCKEND 9 8 295

;;		}
CLINEA 0000H 0000H 0127H 0003H 0003H
_$L155 :
CBLOCKEND 9 6 296

;;	return ret;
CLINEA 0000H 0001H 012AH 0002H 000CH
CBLOCKEND 9 3 299
CBLOCKEND 9 2 299

;;}
CLINEA 0000H 0000H 012BH 0001H 0001H
	pop	pc
CBLOCKEND 9 1 299
CFUNCTIONEND 9


	rseg $$ledMixedInit$led
CFUNCTION 10

_ledMixedInit	:
CBLOCK 10 1 304

;;{
CLINEA 0000H 0001H 0130H 0001H 0001H
CBLOCK 10 2 304

;;	stepMixed = STEP_MIXED_DEFAULT;
CLINEA 0000H 0001H 0132H 0002H 0020H
	mov	r0,	#09h
	st	r0,	NEAR _stepMixed
CBLOCKEND 10 2 307

;;}
CLINEA 0000H 0001H 0133H 0001H 0001H
	rt
CBLOCKEND 10 1 307
CFUNCTIONEND 10


	rseg $$ledMixedOff$led
CFUNCTION 11

_ledMixedOff	:
CBLOCK 11 1 310

;;{
CLINEA 0000H 0001H 0136H 0001H 0001H
	push	lr
CBLOCK 11 2 310
CRET 0000H

;;	ledNaturalOff();
CLINEA 0000H 0001H 0137H 0002H 0011H
	bl	_ledNaturalOff

;;	ledBulbOff();
CLINEA 0000H 0001H 0138H 0002H 000EH
	bl	_ledBulbOff
CBLOCK 11 3 313
CLOCAL 4AH 0001H 0000H 0003H "tmpMd" 02H 00H 00H

;;	pwm45_setCouplingMode( PWM45_CPL_DIS );
CLINEA 0000H 0000H 0139H 0002H 0028H
	rb	0f8a8h.7
	rb	0f8a9h.4
CBLOCKEND 11 3 313
CBLOCKEND 11 2 314

;;}
CLINEA 0000H 0001H 013AH 0001H 0001H
	pop	pc
CBLOCKEND 11 1 314
CFUNCTIONEND 11


	rseg $$ledMixedOn$led
CFUNCTION 12

_ledMixedOn	:
CBLOCK 12 1 317

;;{
CLINEA 0000H 0001H 013DH 0001H 0001H
	push	lr
	push	xr4
CBLOCK 12 2 317
CRET 0004H

;;	ledMixedDutySet( _tblMixedColorDuty[stepMixed] );
CLINEA 0000H 0001H 013EH 0002H 0032H
	l	r0,	NEAR _stepMixed
	mov	r1,	#00h
	sllc	r1,	#03h
	sll	r0,	#03h
	lea	OFFSET __tblMixedColorDuty[er0]
	l	qr0,	[ea]
	push	qr0
	bl	_ledMixedDutySet
	add	sp,	#8 
CBLOCKEND 12 2 319

;;}
CLINEA 0000H 0001H 013FH 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 12 1 319
CFUNCTIONEND 12


	rseg $$ledMixedDutySet$led
CFUNCTION 13

_ledMixedDutySet	:
CBLOCK 13 1 322

;;{
CLINEA 0000H 0001H 0142H 0001H 0001H
	push	lr
	push	fp
	mov	fp,	sp
	push	er4
CBLOCK 13 2 322
CRET 0004H
CARGUMENT 43H 0008H 0006H "duty" 04H 00H 05H 01H 00H
CLOCAL 46H 0002H 0026H 0002H "duty_n" 02H 00H 08H
CLOCAL 46H 0002H 0024H 0002H "duty_b" 02H 00H 08H

;;	unsigned short duty_n = duty.dutyNatural;
CLINEA 0000H 0001H 0143H 0002H 002AH
	l	er0,	10[fp]
	mov	er4,	er0

;;	unsigned short duty_b = duty.dutyBulb;
CLINEA 0000H 0001H 0144H 0002H 0027H
	l	er0,	12[fp]
CBLOCK 13 3 326

;;	pwm5_stop();
CLINEA 0000H 0000H 0146H 0002H 000DH
	rb	0f8b7h.0
CBLOCKEND 13 3 326
CBLOCK 13 4 327

;;	pwm4_stop();
CLINEA 0000H 0000H 0147H 0002H 000DH
	rb	0f8a7h.0
CBLOCKEND 13 4 327
CBLOCK 13 5 329
CLOCAL 4AH 0001H 0000H 0005H "tmpMd" 02H 00H 00H

;;	pwm45_setCouplingMode( PWM45_CPL_ENA_DT_DIS );
CLINEA 0000H 0000H 0149H 0002H 002FH
	sb	0f8a8h.7
	rb	0f8a9h.4
CBLOCKEND 13 5 329

;;	if( duty_b == 0 )
CLINEA 0000H 0001H 014CH 0002H 0012H
	mov	er0,	er0
	bne	_$L176
CBLOCK 13 6 333

;;		ledBulbOff();
CLINEA 0000H 0001H 014EH 0003H 000FH
	bl	_ledBulbOff
CBLOCKEND 13 6 335

;;	else
CLINEA 0000H 0001H 0150H 0002H 0005H
	bal	_$L178
_$L176 :
CBLOCK 13 7 337

;;		ledBulbDutySet( duty_b );
CLINEA 0000H 0001H 0152H 0003H 001BH
	bl	_ledBulbDutySet
CBLOCKEND 13 7 339

;;	}
CLINEA 0000H 0000H 0153H 0002H 0002H
_$L178 :

;;	if( duty_n == 0 )
CLINEA 0000H 0001H 0155H 0002H 0012H
	mov	er4,	er4
	bne	_$L179
CBLOCK 13 8 342

;;		ledNaturalOff();
CLINEA 0000H 0001H 0157H 0003H 0012H
	bl	_ledNaturalOff
CBLOCKEND 13 8 344

;;	else
CLINEA 0000H 0001H 0159H 0002H 0005H
	bal	_$L181
_$L179 :
CBLOCK 13 9 346

;;		ledNaturalDutySet( duty_n );
CLINEA 0000H 0001H 015BH 0003H 001EH
	mov	er0,	er4
	bl	_ledNaturalDutySet
CBLOCKEND 13 9 348

;;	}
CLINEA 0000H 0000H 015CH 0002H 0002H
_$L181 :
CBLOCKEND 13 2 350

;;}
CLINEA 0000H 0001H 015EH 0001H 0001H
	pop	er4
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 13 1 350
CFUNCTIONEND 13


	rseg $$ledMixedStepUpDn$led
CFUNCTION 14

_ledMixedStepUpDn	:
CBLOCK 14 1 353

;;{
CLINEA 0000H 0001H 0161H 0001H 0001H
	push	lr
CBLOCK 14 2 353
CRET 0000H
CARGUMENT 46H 0001H 0014H "newstep" 02H 00H 00H

;;	if( stepMixed != newstep )
CLINEA 0000H 0001H 0162H 0002H 001BH
	l	r1,	NEAR _stepMixed
	cmp	r0,	r1
	beq	_$L183
CBLOCK 14 3 355

;;		stepMixed = newstep;
CLINEA 0000H 0001H 0164H 0003H 0016H
	st	r0,	NEAR _stepMixed

;;		ledMixedOn();
CLINEA 0000H 0001H 0165H 0003H 000FH
	bl	_ledMixedOn
CBLOCKEND 14 3 358

;;	}
CLINEA 0000H 0000H 0166H 0002H 0002H
_$L183 :
CBLOCKEND 14 2 359

;;}
CLINEA 0000H 0001H 0167H 0001H 0001H
	pop	pc
CBLOCKEND 14 1 359
CFUNCTIONEND 14


	rseg $$adValueToStep$led
CFUNCTION 15

_adValueToStep	:
CBLOCK 15 1 362

;;{
CLINEA 0000H 0001H 016AH 0001H 0001H
	push	er4
	mov	er2,	er0
CBLOCK 15 2 362
CARGUMENT 46H 0002H 0025H "ad" 02H 00H 01H
CLOCAL 46H 0001H 0014H 0002H "step" 02H 00H 00H
CLOCAL 46H 0001H 0018H 0002H "i" 02H 00H 00H

;;	for( i=STEP_MIXED_MIN; i<STEP_MIXED_NUM; i++ )
CLINEA 0000H 0001H 016DH 0002H 002FH
	mov	r4,	#00h
_$L188 :
CBLOCK 15 3 366

;;		    ( ad <= _tblMixedColorDuty[i].adMax ) )
CLINEA 0000H 0001H 0170H 0007H 002DH
	mov	r0,	r4
	mov	r1,	#00h
	sllc	r1,	#03h
	sll	r0,	#03h
	l	er0,	NEAR __tblMixedColorDuty[er0]
	cmp	er0,	er2
	bgt	_$L192
	mov	r0,	r4
	mov	r1,	#00h
	sllc	r1,	#03h
	sll	r0,	#03h
	l	er0,	NEAR __tblMixedColorDuty+02h[er0]
	cmp	er2,	er0
	ble	_$L187
CBLOCK 15 4 369

;;			break;
CLINEA 0000H 0001H 0172H 0004H 0009H
CBLOCKEND 15 4 371

;;		}
CLINEA 0000H 0000H 0173H 0003H 0003H
_$L192 :
CBLOCKEND 15 3 372

;;	for( i=STEP_MIXED_MIN; i<STEP_MIXED_NUM; i++ )
CLINEA 0000H 0000H 016DH 0002H 002FH
	add	r4,	#01h
	cmp	r4,	#014h
	blt	_$L188

;;	}
CLINEA 0000H 0000H 0174H 0002H 0002H
_$L187 :

;;	step = ( i<STEP_MIXED_MAX )? i : STEP_MIXED_MAX;
CLINEA 0000H 0000H 0175H 0002H 0031H
	mov	r0,	r4
	cmp	r4,	#013h
	bge	_$L199
	bal	_$L201
_$L199 :
	mov	er0,	#19
_$L201 :

;;	return step;
CLINEA 0000H 0001H 0176H 0002H 000DH
CBLOCKEND 15 2 375

;;}
CLINEA 0000H 0000H 0177H 0001H 0001H
	pop	er4
	rt
CBLOCKEND 15 1 375
CFUNCTIONEND 15


	rseg $$ledNightInit$led
CFUNCTION 16

_ledNightInit	:
CBLOCK 16 1 378

;;{
CLINEA 0000H 0001H 017AH 0001H 0001H
	push	lr
CBLOCK 16 2 378
CRET 0000H

;;	P22C0 = 1;
CLINEA 0000H 0001H 017BH 0002H 000BH
	sb	0f212h.2

;;	P22C1 = 1;	// cmos
CLINEA 0000H 0001H 017CH 0002H 0013H
	sb	0f213h.2

;;	P22MD  = 0;
CLINEA 0000H 0001H 017DH 0002H 000CH
	rb	0f214h.2

;;	P22MD1 = 0;	// port
CLINEA 0000H 0001H 017EH 0002H 0014H
	rb	0f215h.2

;;	tm_init( TM_CH_NO_89 ); // count stop, 16bit mode
CLINEA 0000H 0001H 0180H 0002H 0032H
	mov	r0,	#01h
	bl	_tm_init

;;	tm_set89Source( TM_CS_HTBCLK );
CLINEA 0000H 0001H 0181H 0002H 0020H
	sb	0f8e2h.0
	rb	0f8e2h.1

;;	tm_set8Oneshot( TM_OST_ENA );
CLINEA 0000H 0001H 0182H 0002H 001EH
	sb	0f8e2h.7

;;	stepNight = STEP_NIGHT_DEFAULT;
CLINEA 0000H 0001H 0184H 0002H 0020H
	mov	r0,	#02h
	st	r0,	NEAR _stepNight

;;	ledNightOff();
CLINEA 0000H 0001H 0185H 0002H 000FH
	bl	_ledNightOff
CBLOCKEND 16 2 390

;;}
CLINEA 0000H 0001H 0186H 0001H 0001H
	pop	pc
CBLOCKEND 16 1 390
CFUNCTIONEND 16


	rseg $$ledNightOff$led
CFUNCTION 17

_ledNightOff	:
CBLOCK 17 1 393

;;{
CLINEA 0000H 0001H 0189H 0001H 0001H
CBLOCK 17 2 393

;;	tm_stop89();
CLINEA 0000H 0001H 018AH 0002H 000DH
	rb	0f8e3h.0

;;	P22D = PORT_L;
CLINEA 0000H 0001H 018BH 0002H 000FH
	rb	0f210h.2
CBLOCKEND 17 2 396

;;}
CLINEA 0000H 0001H 018CH 0001H 0001H
	rt
CBLOCKEND 17 1 396
CFUNCTIONEND 17


	rseg $$ledNightOn$led
CFUNCTION 18

_ledNightOn	:
CBLOCK 18 1 399

;;{
CLINEA 0000H 0001H 018FH 0001H 0001H
	push	lr
	push	xr4
CBLOCK 18 2 399
CRET 0004H

;;	_portNightNext = PORT_H;
CLINEA 0000H 0001H 0190H 0002H 0019H
	mov	r0,	#01h
	st	r0,	NEAR __portNightNext

;;	ledNightDutySet( _tblNightLightDuty[stepNight] );
CLINEA 0000H 0001H 0192H 0002H 0032H
	l	r0,	NEAR _stepNight
	mov	r1,	#00h
	sllc	r1,	#02h
	sll	r0,	#02h
	l	er4,	NEAR __tblNightLightDuty[er0]
	l	er6,	NEAR __tblNightLightDuty+02h[er0]
	push	xr4
	bl	_ledNightDutySet
	add	sp,	#4 
CBLOCKEND 18 2 403

;;}
CLINEA 0000H 0001H 0193H 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 18 1 403
CFUNCTIONEND 18


	rseg $$ledNightDutySet$led
CFUNCTION 19

_ledNightDutySet	:
CBLOCK 19 1 406

;;{
CLINEA 0000H 0001H 0196H 0001H 0001H
	push	fp
	mov	fp,	sp
	push	er4
CBLOCK 19 2 406
CARGUMENT 43H 0004H 0002H "duty" 04H 00H 05H 02H 00H
CLOCAL 46H 0001H 0018H 0002H "port" 02H 00H 00H
CLOCAL 46H 0002H 0025H 0002H "val" 02H 00H 08H

;;	tm_stop89();
CLINEA 0000H 0001H 019AH 0002H 000DH
	rb	0f8e3h.0

;;	if( duty.dutyLow == 0 ) // MAX(Duty100%)はタイマ停止してH出力
CLINEA 0000H 0001H 019BH 0002H 003EH
	l	er0,	4[fp]
	bne	_$L206
CBLOCK 19 3 412

;;		P22D = PORT_H;
CLINEA 0000H 0001H 019DH 0003H 0010H
	sb	0f210h.2
CBLOCKEND 19 3 414

;;	else // MAX(Duty100%)以外はタイマ動作してH/Lトグル
CLINEA 0000H 0001H 019FH 0002H 0033H
	bal	_$L208
_$L206 :
CBLOCK 19 4 416

;;		if( _portNightNext == PORT_H )
CLINEA 0000H 0001H 01A1H 0003H 0020H
	l	r0,	NEAR __portNightNext
	cmp	r0,	#01h
	bne	_$L209
CBLOCK 19 5 418

;;			port = PORT_H;
CLINEA 0000H 0001H 01A3H 0004H 0011H
	mov	r4,	#01h

;;			val = duty.dutyHigh;
CLINEA 0000H 0001H 01A4H 0004H 0017H
	l	er0,	2[fp]
	mov	er2,	er0

;;			_portNightNext = PORT_L;
CLINEA 0000H 0001H 01A5H 0004H 001BH
	mov	r0,	#00h
CBLOCKEND 19 5 422

;;		else
CLINEA 0000H 0001H 01A7H 0003H 0006H
	bal	_$L211
_$L209 :
CBLOCK 19 6 424

;;			port = PORT_L;
CLINEA 0000H 0001H 01A9H 0004H 0011H
	mov	r4,	#00h

;;			val = duty.dutyLow;
CLINEA 0000H 0001H 01AAH 0004H 0016H
	l	er0,	4[fp]
	mov	er2,	er0

;;			_portNightNext = PORT_H;
CLINEA 0000H 0001H 01ABH 0004H 001BH
	mov	r0,	#01h
CBLOCKEND 19 6 428

;;		}
CLINEA 0000H 0000H 01ACH 0003H 0003H
_$L211 :
	st	r0,	NEAR __portNightNext

;;		P22D = port;
CLINEA 0000H 0001H 01AEH 0003H 000EH
	mov	r0,	r4
	and	r0,	#01h
	beq	_$M20
	sb	0f210h.2
	bal	_$M21
_$M20 :
	rb	0f210h.2
_$M21 :

;;		tm_set89Data( val );
CLINEA 0000H 0000H 01AFH 0003H 0016H
	st	r2,	0f8e0h
	st	r3,	0f8e4h

;;		tm_start89();
CLINEA 0000H 0001H 01B0H 0003H 000FH
	mov	r0,	#00h
	st	r0,	0f8e1h
	sb	0f8e3h.0
CBLOCKEND 19 4 433

;;	}
CLINEA 0000H 0000H 01B1H 0002H 0002H
_$L208 :
CBLOCKEND 19 2 434

;;}
CLINEA 0000H 0001H 01B2H 0001H 0001H
	pop	er4
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 19 1 434
CFUNCTIONEND 19


	rseg $$ledNightStepUpDn$led
CFUNCTION 20

_ledNightStepUpDn	:
CBLOCK 20 1 437

;;{
CLINEA 0000H 0001H 01B5H 0001H 0001H
	push	lr
CBLOCK 20 2 437
CRET 0000H
CARGUMENT 46H 0001H 0014H "updn" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "ret" 02H 00H 00H

;;	if( updn == STEP_UP )
CLINEA 0000H 0001H 01B7H 0002H 0016H
	cmp	r0,	#00h
	bne	_$L213
CBLOCK 20 3 440

;;		if( stepNight == STEP_NIGHT_MAX )
CLINEA 0000H 0001H 01B9H 0003H 0023H
	l	r0,	NEAR _stepNight
	cmp	r0,	#05h
	bne	_$L215
CBLOCK 20 4 442

;;			ret = FAIL;
CLINEA 0000H 0001H 01BBH 0004H 000EH
	mov	r0,	#00h
CBLOCKEND 20 4 444

;;		else
CLINEA 0000H 0001H 01BDH 0003H 0006H
	bal	_$L217
_$L215 :
CBLOCK 20 5 446

;;			stepNight++;
CLINEA 0000H 0000H 01BFH 0004H 000FH
	add	r0,	#01h
	st	r0,	NEAR _stepNight

;;			ledNightOn();
CLINEA 0000H 0001H 01C0H 0004H 0010H
	bl	_ledNightOn

;;			ret = PASS;
CLINEA 0000H 0001H 01C1H 0004H 000EH
	mov	r0,	#01h
CBLOCKEND 20 5 450

;;		}
CLINEA 0000H 0000H 01C2H 0003H 0003H
_$L217 :

;;	else // STEP_DOWN
CLINEA 0000H 0001H 01C4H 0002H 0012H
	bal	_$L221
_$L213 :
CBLOCK 20 6 453

;;		if( stepNight == STEP_SINGLE_MIN )
CLINEA 0000H 0001H 01C6H 0003H 0024H
	l	r0,	NEAR _stepNight
	bne	_$L219
CBLOCK 20 7 455

;;			ret = FAIL;
CLINEA 0000H 0001H 01C8H 0004H 000EH
	mov	r0,	#00h
CBLOCKEND 20 7 457

;;		else
CLINEA 0000H 0001H 01CAH 0003H 0006H
	bal	_$L221
_$L219 :
CBLOCK 20 8 459

;;			stepNight--;
CLINEA 0000H 0000H 01CCH 0004H 000FH
	add	r0,	#0ffh
	st	r0,	NEAR _stepNight

;;			ledNightOn();
CLINEA 0000H 0001H 01CDH 0004H 0010H
	bl	_ledNightOn

;;			ret = PASS;
CLINEA 0000H 0001H 01CEH 0004H 000EH
	mov	r0,	#01h
CBLOCKEND 20 8 463

;;		}
CLINEA 0000H 0000H 01CFH 0003H 0003H
_$L221 :
CBLOCKEND 20 6 464

;;	return ret;
CLINEA 0000H 0001H 01D2H 0002H 000CH
CBLOCKEND 20 3 467
CBLOCKEND 20 2 467

;;}
CLINEA 0000H 0000H 01D3H 0001H 0001H
	pop	pc
CBLOCKEND 20 1 467
CFUNCTIONEND 20


	rseg $$ledNightToggle$led
CFUNCTION 21

_ledNightToggle	:
CBLOCK 21 1 470

;;{
CLINEA 0000H 0001H 01D6H 0001H 0001H
	push	lr
	push	xr4
CBLOCK 21 2 470
CRET 0004H

;;	ledNightDutySet( _tblNightLightDuty[stepNight] );
CLINEA 0000H 0001H 01D7H 0002H 0032H
	l	r0,	NEAR _stepNight
	mov	r1,	#00h
	sllc	r1,	#02h
	sll	r0,	#02h
	l	er4,	NEAR __tblNightLightDuty[er0]
	l	er6,	NEAR __tblNightLightDuty+02h[er0]
	push	xr4
	bl	_ledNightDutySet
	add	sp,	#4 
CBLOCKEND 21 2 472

;;}
CLINEA 0000H 0001H 01D8H 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 21 1 472
CFUNCTIONEND 21

	public _ledNightStepUpDn
	public _ledMixedInit
	public _ledMixedStepUpDn
	public _ledBulbOn
	public _ledNaturalInit
	public _stepNight
	public _ledNaturalDutySet
	public _ledBulbStepUpDn
	public _ledMixedOff
	public _ledBulbOff
	public _ledBulbInit
	public _ledNightOff
	public _ledNaturalStepUpDn
	public _ledNaturalOn
	public _ledNightToggle
	public _ledNightInit
	public _ledMixedDutySet
	public _ledNightDutySet
	public _ledNaturalOff
	public _stepNatural
	public _ledMixedOn
	public _ledNightOn
	public _adValueToStep
	public _stepMixed
	public _ledBulbDutySet
	public _stepBulb
	extrn code far : _tm_init
	extrn code far : _main

	rseg $$NINITTAB
	db	09h
	db	09h
	db	09h
	db	02h
	db	00h

	rseg $$TAB_valSingleColorPeriod$led
__valSingleColorPeriod :
	dw	0850dh

	rseg $$TAB_tblSingleColorDuty$led
__tblSingleColorDuty :
	dw	06a7h
	dw	0d4eh
	dw	013f5h
	dw	01a9ch
	dw	02143h
	dw	027eah
	dw	02e91h
	dw	03538h
	dw	03bdfh
	dw	04286h
	dw	0492dh
	dw	04fd4h
	dw	0567bh
	dw	05d22h
	dw	063c9h
	dw	06a70h
	dw	07117h
	dw	077beh
	dw	07e65h
	dw	0850dh

	rseg $$TAB_tblMixedColorDuty$led
__tblMixedColorDuty :
	dw	00h
	dw	014h
	dw	0850dh
	dw	00h
	dw	015h
	dw	03dh
	dw	077beh
	dw	0d4eh
	dw	03eh
	dw	066h
	dw	07117h
	dw	013f5h
	dw	067h
	dw	099h
	dw	06a70h
	dw	01a9ch
	dw	09ah
	dw	0cdh
	dw	063c9h
	dw	02143h
	dw	0ceh
	dw	0100h
	dw	05d22h
	dw	027eah
	dw	0101h
	dw	0133h
	dw	0567bh
	dw	02e91h
	dw	0134h
	dw	0170h
	dw	04fd4h
	dw	03538h
	dw	0171h
	dw	01aeh
	dw	0492dh
	dw	03bdfh
	dw	01afh
	dw	0200h
	dw	04286h
	dw	04286h
	dw	0201h
	dw	023dh
	dw	03d34h
	dw	047d8h
	dw	023eh
	dw	0270h
	dw	037e1h
	dw	04d2bh
	dw	0271h
	dw	02a3h
	dw	0328fh
	dw	0527dh
	dw	02a4h
	dw	02cch
	dw	02d3ch
	dw	057d0h
	dw	02cdh
	dw	02f5h
	dw	027eah
	dw	05d22h
	dw	02f6h
	dw	031eh
	dw	02297h
	dw	06275h
	dw	031fh
	dw	0347h
	dw	01bf0h
	dw	0691ch
	dw	0348h
	dw	0366h
	dw	01549h
	dw	06fc3h
	dw	0367h
	dw	0384h
	dw	0d4eh
	dw	077beh
	dw	0385h
	dw	03a3h
	dw	00h
	dw	0850dh

	rseg $$TAB_tblNightLightDuty$led
__tblNightLightDuty :
	dw	081h
	dw	0ee0h
	dw	03b2h
	dw	0bafh
	dw	07b0h
	dw	07b1h
	dw	0baeh
	dw	03b3h
	dw	0e13h
	dw	014eh
	dw	0f61h
	dw	00h

	rseg $$NINITVAR
_stepNatural :
	ds	01h
_stepBulb :
	ds	01h
_stepMixed :
	ds	01h
_stepNight :
	ds	01h
__portNightNext :
	ds	01h

	rseg $$NINITTAB
	align

	rseg $$NINITVAR
	align

	end
