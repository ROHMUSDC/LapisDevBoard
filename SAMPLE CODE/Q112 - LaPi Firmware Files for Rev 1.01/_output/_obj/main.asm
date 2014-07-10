;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.31.4
;; File Name       : main.c

	type (ML610112) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$Initialization$main segment code 2h #0h
	$$NOP1000$main segment code 2h #0h
	$$PinB0_PWM$main segment code 2h #0h
	$$PortA_Digital_Inputs$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$PortD_Low$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_funcUartFin$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$_intUart$main segment code 2h #0h
	$$analog_comparator$main segment code 2h #0h
	$$checkI2C$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	STACKSEG 0100h
CVERSION 3.31.4
CGLOBAL 01H 03H 0000H "checkI2C" 08H 02H 88H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 7CH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 86H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 89H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 7DH 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 84H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 8DH 00H 80H 08H 00H 00H 01H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 8AH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortD_Low" 08H 02H 83H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP1000" 08H 02H 8CH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 8BH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 7EH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 82H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 81H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 80H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 7FH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 87H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PinB0_PWM" 08H 02H 85H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0006H 0003H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "state" 02H 00H 00H
CSTRUCTMEM 52H 00000002H 00000001H "state_sub" 02H 00H 00H
CSTRUCTMEM 52H 00000005H 00000003H "reserve" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0005H 000CH 00000016H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "_Mode" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000002H "_Handle" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "_Buf" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000006H "_Bend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000008H "_Next" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000AH "_Rend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000CH "_Rsave" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "_Wend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000010H "_Back" 05H 01H 02H 00H 00H 00H
CSTRUCTMEM 42H 00000001H 00000012H "_Cbuf" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000013H "_Nback" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 00000014H "_Tmpnam" 04H 03H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 0004H 0001H 00000004H "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "_Off" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0003H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0002H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0001H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CENUMTAG 0000H 0000H 0007H 0003H "Status"
CENUMMEM 00000000H "CONTINUE"
CENUMMEM 00000001H "WON"
CENUMMEM 00000002H "LOST"
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 2EH 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "fpos_t" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 43H "STRUCT_STATE" 04H 00H 05H 06H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 43H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 01H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 00H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 03H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 02H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "FILE" 04H 00H 05H 05H 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CGLOBAL 00H 42H 0015H "RecWorld" 05H 01H 15H 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgUartFin" 02H 00H 00H
CSGLOBAL 42H 002EH "I2C_BUFF" 05H 01H 2EH 00H 00H 00H
CSGLOBAL 42H 0001H "I2CNumBytes" 02H 00H 00H
CSGLOBAL 42H 0001H "Data2Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "RegAddr_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data3Str_temp" 02H 00H 00H
CGLOBAL 00H 42H 0002H "testI2C" 02H 00H 01H
CGLOBAL 00H 42H 0002H "ret" 02H 00H 01H
CSGLOBAL 42H 0008H "I2CReceInfo" 05H 01H 08H 00H 00H 00H
CSGLOBAL 42H 0001H "Data0Str_temp" 02H 00H 00H
CSGLOBAL 42H 0002H "READ_NAME" 05H 01H 02H 00H 00H 00H
CSGLOBAL 42H 0001H "Data1Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data4Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data5Str_temp" 02H 00H 00H
CGLOBAL 00H 42H 0002H "UART_VAR" 02H 00H 01H
CSGLOBAL 42H 0001H "Data6Str_temp" 02H 00H 00H
CSGLOBAL 42H 0002H "PLAY" 05H 01H 02H 00H 00H 00H
CSGLOBAL 42H 0001H "Data7Str_temp" 02H 00H 00H
CGLOBAL 01H 42H 0016H "AckMCUConn" 05H 01H 16H 00H 00H 00H
CGLOBAL 01H 42H 000EH "InputRec" 05H 01H 0EH 00H 00H 00H
CSGLOBAL 42H 0001H "I2CNumBytes_temp" 02H 00H 00H
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 03H 00H
CSGLOBAL 42H 0001H "Data2Str" 02H 00H 00H
CSGLOBAL 42H 0002H "STOP" 05H 01H 02H 00H 00H 00H
CSGLOBAL 42H 0001H "Data3Str" 02H 00H 00H
CSGLOBAL 42H 0001H "RegAddr" 02H 00H 00H
CGLOBAL 01H 42H 0017H "I2C_RX_Data" 05H 01H 17H 00H 00H 00H
CSGLOBAL 42H 0001H "Data0Str" 02H 00H 00H
CSGLOBAL 42H 0001H "Data1Str" 02H 00H 00H
CGLOBAL 01H 42H 0017H "OutputRec" 05H 01H 17H 00H 00H 00H
CSGLOBAL 42H 0001H "I2CAdd" 02H 00H 00H
CSGLOBAL 42H 0001H "chari" 02H 00H 00H
CSGLOBAL 42H 0001H "charj" 02H 00H 00H
CSGLOBAL 42H 0001H "chark" 02H 00H 00H
CGLOBAL 01H 42H 000EH "HelloWorld" 05H 01H 0EH 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CSGLOBAL 42H 0001H "Data6Str" 02H 00H 00H
CGLOBAL 01H 42H 0017H "InputStatus" 05H 01H 17H 00H 00H 00H
CSGLOBAL 42H 0008H "I2CSendInfo" 05H 01H 08H 00H 00H 00H
CSGLOBAL 42H 0001H "Data7Str" 02H 00H 00H
CSGLOBAL 42H 0001H "Data4Str" 02H 00H 00H
CSGLOBAL 42H 0002H "PAUSE" 05H 01H 02H 00H 00H 00H
CGLOBAL 00H 42H 0016H "Q112ToQ111" 05H 01H 16H 00H 00H 00H
CSGLOBAL 42H 0001H "Data5Str" 02H 00H 00H
CGLOBAL 01H 42H 0015H "I2C_RX_REC" 05H 01H 15H 00H 00H 00H
CGLOBAL 01H 42H 0015H "I2C_TX_REC" 05H 01H 15H 00H 00H 00H
CSGLOBAL 42H 0001H "I2CAdd_temp" 02H 00H 00H
CFILE 0001H 0000085AH "main\\ML610112.H"
CFILE 0002H 000000D8H "main\\stdlib.h"
CFILE 0003H 0000007AH "main\\yvals.h"
CFILE 0004H 0000006BH "uart\\uart.h"
CFILE 0005H 00000027H "common\\common.h"
CFILE 0006H 00000057H "irq\\irq.h"
CFILE 0007H 00000023H "main\\mcu.h"
CFILE 0008H 00000045H "i2c\\i2c.h"
CFILE 0009H 000000EEH "main\\stdio.h"
CFILE 0000H 00000681H "main\\main.c"

	rseg $$main$main
CFUNCTION 141

_main	:
CBLOCK 141 1 251

;;{
CLINEA 0000H 0001H 00FBH 0001H 0001H
CBLOCK 141 2 251
CLOCAL 4BH 0001H 0000H 0002H "char_a" 02H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "uchar" 02H 00H 00H
CLOCAL 4BH 0002H 0000H 0002H "inta" 02H 00H 01H
CLOCAL 4BH 00C8H 0000H 0002H "table" 05H 01H 64H 00H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "uint" 02H 00H 01H
CLOCAL 4BH 0004H 0000H 0002H "long_a" 02H 00H 02H
CLOCAL 4BH 0004H 0000H 0002H "delay" 02H 00H 02H
CLOCAL 4BH 0004H 0000H 0002H "float_a" 02H 00H 03H
CLOCAL 4BH 0008H 0000H 0002H "double_a" 02H 00H 04H
CLOCAL 4AH 0001H 0000H 0002H "encoder_position" 02H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "previous_encoder_position" 02H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "button_flag" 02H 00H 00H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "j" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "k" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "x" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "y" 02H 00H 01H
CLOCAL 4AH 0001H 0000H 0002H "sndByte" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "count" 02H 00H 01H
CLOCAL 4BH 0001H 0000H 0002H "maskC" 02H 00H 00H

;;	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 010FH 0002H 0047H
	bl	_Initialization

;;RX_Loop:	
CLINEA 0000H 0001H 0111H 0001H 0009H
CLABEL 000AH "RX_Loop"
_$L10 :

;;		main_clrWDT();
CLINEA 0000H 0001H 0112H 0003H 0010H
	bl	_main_clrWDT

;;		for (i=0;i<22;i++)
CLINEA 0000H 0001H 0115H 0003H 0014H
	mov	er0,	#0 
_$L13 :
CBLOCK 141 3 278

;;			RecWorld[i] = 0;	
CLINEA 0000H 0001H 0117H 0004H 0014H
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er0]
CBLOCKEND 141 3 280

;;		for (i=0;i<22;i++)
CLINEA 0000H 0000H 0115H 0003H 0014H
	add	er0,	#1 
	cmp	r0,	#016h
	cmpc	r1,	#00h
	blts	_$L13

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 011BH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 011CH 0003H 000EH
	bl	_uart_stop

;;		uart_startReceive(RecWorld, 21, _funcUartFin);
CLINEA 0000H 0001H 011DH 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#21
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 011EH 0001H 000BH
	bal	_$L467

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 011EH 0003H 001AH
_$L19 :
CBLOCK 141 4 286

;;			NOP1000();
CLINEA 0000H 0001H 011FH 0004H 000DH
	bl	_NOP1000

;;			main_clrWDT();
CLINEA 0000H 0001H 0120H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 141 4 289

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 011EH 0001H 000BH
_$L467 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L19

;;		if(RecWorld[0] == 0x41){			//if RECWORLD == "ACK"
CLINEA 0000H 0001H 0126H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#041h
	bne	_$L28
CBLOCK 141 5 294

;;			if(RecWorld[1] == 0x43){
CLINEA 0000H 0001H 0127H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#043h
	bne	_$L28
CBLOCK 141 6 295

;;				if(RecWorld[2] == 0x4B){
CLINEA 0000H 0001H 0128H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#04bh
	bne	_$L28
CBLOCK 141 7 296

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 0129H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 012AH 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(AckMCUConn, 22, _funcUartFin);
CLINEA 0000H 0001H 012BH 0006H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#22
	mov	r0,	#BYTE1 OFFSET _AckMCUConn
	mov	r1,	#BYTE2 OFFSET _AckMCUConn
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 012CH 0001H 000BH
	bal	_$L468

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 012CH 0006H 001DH
_$L29 :
CBLOCK 141 8 300

;;						NOP1000();
CLINEA 0000H 0001H 012DH 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 012EH 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 8 303

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 012CH 0001H 000BH
_$L468 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L29

;;					}
CLINEA 0000H 0000H 012FH 0006H 0006H
_$L28 :
CBLOCKEND 141 7 305
CBLOCKEND 141 6 306
CBLOCKEND 141 5 307

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "INC"
CLINEA 0000H 0001H 0136H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M97
	b	_$L58
_$M97 :
CBLOCK 141 9 310

;;			if(RecWorld[1] == 0x4E){
CLINEA 0000H 0001H 0137H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#04eh
	beq	_$M98
	b	_$L58
_$M98 :
CBLOCK 141 10 311

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 0138H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M99
	b	_$L58
_$M99 :
CBLOCK 141 11 312

;;					InputStatus[2] = 0x43;
CLINEA 0000H 0001H 0139H 0006H 001BH
	mov	r0,	#043h
	st	r0,	NEAR _InputStatus+02h

;;					InputRec[2] = 0x43;
CLINEA 0000H 0001H 013AH 0006H 0018H
	st	r0,	NEAR _InputRec+02h

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0001H 013BH 0006H 0028H
	mov	er4,	#4 
_$L39 :
CBLOCK 141 12 316

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 013DH 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 013EH 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L51
CBLOCK 141 13 318

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 013FH 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 141 13 320

;;						}
CLINEA 0000H 0000H 0140H 0007H 0007H
_$L51 :
CBLOCKEND 141 12 321

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0000H 013BH 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#0ch
	cmpc	r5,	#00h
	blt	_$L39

;;					PC7DIR = RecWorld[4];
CLINEA 0000H 0001H 0144H 0006H 001AH
	l	r0,	NEAR _RecWorld+04h
	and	r0,	#01h
	beq	_$M1
	sb	0f261h.7
	bal	_$M2
_$M1 :
	rb	0f261h.7
_$M2 :

;;					PC6DIR = RecWorld[5];
CLINEA 0000H 0001H 0145H 0006H 001AH
	l	r0,	NEAR _RecWorld+05h
	and	r0,	#01h
	beq	_$M3
	sb	0f261h.6
	bal	_$M4
_$M3 :
	rb	0f261h.6
_$M4 :

;;					PC5DIR = RecWorld[6];
CLINEA 0000H 0001H 0146H 0006H 001AH
	l	r0,	NEAR _RecWorld+06h
	and	r0,	#01h
	beq	_$M5
	sb	0f261h.5
	bal	_$M6
_$M5 :
	rb	0f261h.5
_$M6 :

;;					PC4DIR = RecWorld[7];
CLINEA 0000H 0001H 0147H 0006H 001AH
	l	r0,	NEAR _RecWorld+07h
	and	r0,	#01h
	beq	_$M7
	sb	0f261h.4
	bal	_$M8
_$M7 :
	rb	0f261h.4
_$M8 :

;;					PC3DIR = RecWorld[8];
CLINEA 0000H 0001H 0148H 0006H 001AH
	l	r0,	NEAR _RecWorld+08h
	and	r0,	#01h
	beq	_$M9
	sb	0f261h.3
	bal	_$M10
_$M9 :
	rb	0f261h.3
_$M10 :

;;					PC2DIR = RecWorld[9];
CLINEA 0000H 0001H 0149H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M11
	sb	0f261h.2
	bal	_$M12
_$M11 :
	rb	0f261h.2
_$M12 :

;;					PC1DIR = RecWorld[10];
CLINEA 0000H 0001H 014AH 0006H 001BH
	l	r0,	NEAR _RecWorld+0ah
	and	r0,	#01h
	beq	_$M13
	sb	0f261h.1
	bal	_$M14
_$M13 :
	rb	0f261h.1
_$M14 :

;;					PC0DIR = RecWorld[11];
CLINEA 0000H 0001H 014BH 0006H 001BH
	l	r0,	NEAR _RecWorld+0bh
	and	r0,	#01h
	beq	_$M15
	sb	0f261h.0
	bal	_$M16
_$M15 :
	rb	0f261h.0
_$M16 :

;;					InputStatus[4] = PC7DIR + 0x30;
CLINEA 0000H 0001H 014EH 0006H 0024H
	l	r0,	0f261h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+04h

;;					InputStatus[5] = PC6DIR + 0x30;
CLINEA 0000H 0001H 014FH 0006H 0024H
	l	r0,	0f261h
	srl	r0,	#06h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+05h

;;					InputStatus[6] = PC5DIR + 0x30;
CLINEA 0000H 0001H 0150H 0006H 0024H
	l	r0,	0f261h
	srl	r0,	#05h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+06h

;;					InputStatus[7] = PC4DIR + 0x30;
CLINEA 0000H 0001H 0151H 0006H 0024H
	l	r0,	0f261h
	srl	r0,	#04h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+07h

;;					InputStatus[8] = PC3DIR + 0x30;
CLINEA 0000H 0001H 0152H 0006H 0024H
	l	r0,	0f261h
	srl	r0,	#03h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+08h

;;					InputStatus[9] = PC2DIR + 0x30;
CLINEA 0000H 0001H 0153H 0006H 0024H
	l	r0,	0f261h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+09h

;;					InputStatus[10] = PC1DIR + 0x30;
CLINEA 0000H 0001H 0154H 0006H 0025H
	l	r0,	0f261h
	srl	r0,	#01h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0ah

;;					InputStatus[11] = PC0DIR + 0x30;
CLINEA 0000H 0001H 0155H 0006H 0025H
	l	r0,	0f261h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0bh

;;					InputStatus[13] = PC7D + 0x30;
CLINEA 0000H 0001H 0158H 0006H 0023H
	l	r0,	0f260h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0dh

;;					InputStatus[14] = PC6D + 0x30;
CLINEA 0000H 0001H 0159H 0006H 0023H
	l	r0,	0f260h
	srl	r0,	#06h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0eh

;;					InputStatus[15] = PC5D + 0x30;
CLINEA 0000H 0001H 015AH 0006H 0023H
	l	r0,	0f260h
	srl	r0,	#05h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0fh

;;					InputStatus[16] = PC4D + 0x30;
CLINEA 0000H 0001H 015BH 0006H 0023H
	l	r0,	0f260h
	srl	r0,	#04h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+010h

;;					InputStatus[17] = PC3D + 0x30;
CLINEA 0000H 0001H 015CH 0006H 0023H
	l	r0,	0f260h
	srl	r0,	#03h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+011h

;;					InputStatus[18] = PC2D + 0x30;
CLINEA 0000H 0001H 015DH 0006H 0023H
	l	r0,	0f260h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+012h

;;					InputStatus[19] = PC1D + 0x30;
CLINEA 0000H 0001H 015EH 0006H 0023H
	l	r0,	0f260h
	srl	r0,	#01h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+013h

;;					InputStatus[20] = PC0D + 0x30;
CLINEA 0000H 0001H 015FH 0006H 0023H
	l	r0,	0f260h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 0163H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 0164H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputStatus, 23, _funcUartFin);
CLINEA 0000H 0001H 0165H 0006H 0033H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _InputStatus
	mov	r1,	#BYTE2 OFFSET _InputStatus
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0166H 0001H 000BH
	bal	_$L469

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0166H 0006H 001DH
_$L55 :
CBLOCK 141 14 358

;;						NOP1000();
CLINEA 0000H 0001H 0167H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0168H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 14 361

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0166H 0001H 000BH
_$L469 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L55

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 016CH 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 016DH 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputRec, 14, _funcUartFin);
CLINEA 0000H 0001H 016EH 0006H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _InputRec
	mov	r1,	#BYTE2 OFFSET _InputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 016FH 0001H 000BH
	bal	_$L470

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 016FH 0006H 001DH
_$L59 :
CBLOCK 141 15 367

;;						NOP1000();
CLINEA 0000H 0001H 0170H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0171H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 15 370

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 016FH 0001H 000BH
_$L470 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L59

;;					}
CLINEA 0000H 0000H 0172H 0006H 0006H
_$L58 :
CBLOCKEND 141 11 371
CBLOCKEND 141 10 372
CBLOCKEND 141 9 373

;;		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUC"
CLINEA 0000H 0001H 0178H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#04fh
	beq	_$M100
	b	_$L84
_$M100 :
CBLOCK 141 16 376

;;			if(RecWorld[1] == 0x55){
CLINEA 0000H 0001H 0179H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#055h
	beq	_$M101
	b	_$L84
_$M101 :
CBLOCK 141 17 377

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 017AH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M102
	b	_$L84
_$M102 :
CBLOCK 141 18 378

;;					OutputRec[2] = 0x43;
CLINEA 0000H 0001H 017BH 0006H 0019H
	mov	r0,	#043h
	st	r0,	NEAR _OutputRec+02h

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0001H 017CH 0006H 0028H
	mov	er4,	#4 
_$L69 :
CBLOCK 141 19 381

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 017EH 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 017FH 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L81
CBLOCK 141 20 383

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 0180H 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 141 20 385

;;						}
CLINEA 0000H 0000H 0181H 0007H 0007H
_$L81 :
CBLOCKEND 141 19 386

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0000H 017CH 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#015h
	cmpc	r5,	#00h
	blt	_$L69

;;					PC7DIR = RecWorld[4];
CLINEA 0000H 0001H 0184H 0006H 001AH
	l	r0,	NEAR _RecWorld+04h
	and	r0,	#01h
	beq	_$M17
	sb	0f261h.7
	bal	_$M18
_$M17 :
	rb	0f261h.7
_$M18 :

;;					PC6DIR = RecWorld[5];
CLINEA 0000H 0001H 0185H 0006H 001AH
	l	r0,	NEAR _RecWorld+05h
	and	r0,	#01h
	beq	_$M19
	sb	0f261h.6
	bal	_$M20
_$M19 :
	rb	0f261h.6
_$M20 :

;;					PC5DIR = RecWorld[6];
CLINEA 0000H 0001H 0186H 0006H 001AH
	l	r0,	NEAR _RecWorld+06h
	and	r0,	#01h
	beq	_$M21
	sb	0f261h.5
	bal	_$M22
_$M21 :
	rb	0f261h.5
_$M22 :

;;					PC4DIR = RecWorld[7];
CLINEA 0000H 0001H 0187H 0006H 001AH
	l	r0,	NEAR _RecWorld+07h
	and	r0,	#01h
	beq	_$M23
	sb	0f261h.4
	bal	_$M24
_$M23 :
	rb	0f261h.4
_$M24 :

;;					PC3DIR = RecWorld[8];
CLINEA 0000H 0001H 0188H 0006H 001AH
	l	r0,	NEAR _RecWorld+08h
	and	r0,	#01h
	beq	_$M25
	sb	0f261h.3
	bal	_$M26
_$M25 :
	rb	0f261h.3
_$M26 :

;;					PC2DIR = RecWorld[9];
CLINEA 0000H 0001H 0189H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M27
	sb	0f261h.2
	bal	_$M28
_$M27 :
	rb	0f261h.2
_$M28 :

;;					PC1DIR = RecWorld[10];
CLINEA 0000H 0001H 018AH 0006H 001BH
	l	r0,	NEAR _RecWorld+0ah
	and	r0,	#01h
	beq	_$M29
	sb	0f261h.1
	bal	_$M30
_$M29 :
	rb	0f261h.1
_$M30 :

;;					PC0DIR = RecWorld[11];
CLINEA 0000H 0001H 018BH 0006H 001BH
	l	r0,	NEAR _RecWorld+0bh
	and	r0,	#01h
	beq	_$M31
	sb	0f261h.0
	bal	_$M32
_$M31 :
	rb	0f261h.0
_$M32 :

;;					PC7D = RecWorld[13];
CLINEA 0000H 0001H 018EH 0006H 0019H
	l	r0,	NEAR _RecWorld+0dh
	and	r0,	#01h
	beq	_$M33
	sb	0f260h.7
	bal	_$M34
_$M33 :
	rb	0f260h.7
_$M34 :

;;					PC6D = RecWorld[14];
CLINEA 0000H 0001H 018FH 0006H 0019H
	l	r0,	NEAR _RecWorld+0eh
	and	r0,	#01h
	beq	_$M35
	sb	0f260h.6
	bal	_$M36
_$M35 :
	rb	0f260h.6
_$M36 :

;;					PC5D = RecWorld[15];
CLINEA 0000H 0001H 0190H 0006H 0019H
	l	r0,	NEAR _RecWorld+0fh
	and	r0,	#01h
	beq	_$M37
	sb	0f260h.5
	bal	_$M38
_$M37 :
	rb	0f260h.5
_$M38 :

;;					PC4D = RecWorld[16];
CLINEA 0000H 0001H 0191H 0006H 0019H
	l	r0,	NEAR _RecWorld+010h
	and	r0,	#01h
	beq	_$M39
	sb	0f260h.4
	bal	_$M40
_$M39 :
	rb	0f260h.4
_$M40 :

;;					PC3D = RecWorld[17];
CLINEA 0000H 0001H 0192H 0006H 0019H
	l	r0,	NEAR _RecWorld+011h
	and	r0,	#01h
	beq	_$M41
	sb	0f260h.3
	bal	_$M42
_$M41 :
	rb	0f260h.3
_$M42 :

;;					PC2D = RecWorld[18];
CLINEA 0000H 0001H 0193H 0006H 0019H
	l	r0,	NEAR _RecWorld+012h
	and	r0,	#01h
	beq	_$M43
	sb	0f260h.2
	bal	_$M44
_$M43 :
	rb	0f260h.2
_$M44 :

;;					PC1D = RecWorld[19];
CLINEA 0000H 0001H 0194H 0006H 0019H
	l	r0,	NEAR _RecWorld+013h
	and	r0,	#01h
	beq	_$M45
	sb	0f260h.1
	bal	_$M46
_$M45 :
	rb	0f260h.1
_$M46 :

;;					PC0D = RecWorld[20];
CLINEA 0000H 0001H 0195H 0006H 0019H
	l	r0,	NEAR _RecWorld+014h
	and	r0,	#01h
	beq	_$M47
	sb	0f260h.0
	bal	_$M48
_$M47 :
	rb	0f260h.0
_$M48 :

;;					OutputRec[13] = PC7D + 0x30;
CLINEA 0000H 0001H 0198H 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+0dh

;;					OutputRec[14] = PC6D + 0x30;
CLINEA 0000H 0001H 0199H 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#06h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+0eh

;;					OutputRec[15] = PC5D + 0x30;
CLINEA 0000H 0001H 019AH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#05h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+0fh

;;					OutputRec[16] = PC4D + 0x30;
CLINEA 0000H 0001H 019BH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#04h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+010h

;;					OutputRec[17] = PC3D + 0x30;
CLINEA 0000H 0001H 019CH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#03h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+011h

;;					OutputRec[18] = PC2D + 0x30;
CLINEA 0000H 0001H 019DH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+012h

;;					OutputRec[19] = PC1D + 0x30;
CLINEA 0000H 0001H 019EH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#01h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+013h

;;					OutputRec[20] = PC0D + 0x30;
CLINEA 0000H 0001H 019FH 0006H 0021H
	l	r0,	0f260h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 01A1H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 01A2H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(OutputRec, 23, _funcUartFin);
CLINEA 0000H 0001H 01A3H 0006H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _OutputRec
	mov	r1,	#BYTE2 OFFSET _OutputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01A4H 0001H 000BH
	bal	_$L471

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01A4H 0006H 001DH
_$L85 :
CBLOCK 141 21 420

;;						NOP1000();
CLINEA 0000H 0001H 01A5H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 01A6H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 21 423

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01A4H 0001H 000BH
_$L471 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L85

;;					}
CLINEA 0000H 0000H 01A7H 0006H 0006H
_$L84 :
CBLOCKEND 141 18 424
CBLOCKEND 141 17 425
CBLOCKEND 141 16 426

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "INB"
CLINEA 0000H 0001H 01ACH 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M103
	b	_$L114
_$M103 :
CBLOCK 141 22 428

;;			if(RecWorld[1] == 0x4E){
CLINEA 0000H 0001H 01ADH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#04eh
	beq	_$M104
	b	_$L114
_$M104 :
CBLOCK 141 23 429

;;				if(RecWorld[2] == 0x42){
CLINEA 0000H 0001H 01AEH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#042h
	beq	_$M105
	b	_$L114
_$M105 :
CBLOCK 141 24 430

;;					InputStatus[2] = 0x42;
CLINEA 0000H 0001H 01AFH 0006H 001BH
	mov	r0,	#042h
	st	r0,	NEAR _InputStatus+02h

;;					InputRec[2] = 0x42;
CLINEA 0000H 0001H 01B0H 0006H 0018H
	st	r0,	NEAR _InputRec+02h

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0001H 01B1H 0006H 0028H
	mov	er4,	#4 
_$L95 :
CBLOCK 141 25 434

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 01B3H 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 01B4H 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L107
CBLOCK 141 26 436

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 01B5H 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 141 26 438

;;						}
CLINEA 0000H 0000H 01B6H 0007H 0007H
_$L107 :
CBLOCKEND 141 25 439

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0000H 01B1H 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#0ch
	cmpc	r5,	#00h
	blt	_$L95

;;					PB7DIR = RecWorld[4]; 
CLINEA 0000H 0001H 01BDH 0006H 001BH
	l	r0,	NEAR _RecWorld+04h
	and	r0,	#01h
	beq	_$M49
	sb	0f259h.7
	bal	_$M50
_$M49 :
	rb	0f259h.7
_$M50 :

;;					PB2DIR = RecWorld[9];
CLINEA 0000H 0001H 01C2H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M51
	sb	0f259h.2
	bal	_$M52
_$M51 :
	rb	0f259h.2
_$M52 :

;;					InputStatus[4] = PB7DIR + 0x30;
CLINEA 0000H 0001H 01C7H 0006H 0024H
	l	r0,	0f259h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+04h

;;					InputStatus[5] = 0x78;
CLINEA 0000H 0001H 01C8H 0006H 001BH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+05h

;;					InputStatus[6] = 0x78;
CLINEA 0000H 0001H 01C9H 0006H 001BH
	st	r0,	NEAR _InputStatus+06h

;;					InputStatus[7] = 0x78;
CLINEA 0000H 0001H 01CAH 0006H 001BH
	st	r0,	NEAR _InputStatus+07h

;;					InputStatus[8] = 0x78;
CLINEA 0000H 0001H 01CBH 0006H 001BH
	st	r0,	NEAR _InputStatus+08h

;;					InputStatus[9] = PB2DIR + 0x30;
CLINEA 0000H 0001H 01CCH 0006H 0024H
	l	r0,	0f259h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+09h

;;					InputStatus[10] = 0x78;
CLINEA 0000H 0001H 01CDH 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+0ah

;;					InputStatus[11] = 0x78;
CLINEA 0000H 0001H 01CEH 0006H 001CH
	st	r0,	NEAR _InputStatus+0bh

;;					InputStatus[13] = PB7D + 0x30;
CLINEA 0000H 0001H 01D1H 0006H 0023H
	l	r0,	0f258h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0dh

;;					InputStatus[14] = 0x78;
CLINEA 0000H 0001H 01D2H 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+0eh

;;					InputStatus[15] = 0x78;
CLINEA 0000H 0001H 01D3H 0006H 001CH
	st	r0,	NEAR _InputStatus+0fh

;;					InputStatus[16] = 0x78;
CLINEA 0000H 0001H 01D4H 0006H 001CH
	st	r0,	NEAR _InputStatus+010h

;;					InputStatus[17] = 0x78;
CLINEA 0000H 0001H 01D5H 0006H 001CH
	st	r0,	NEAR _InputStatus+011h

;;					InputStatus[18] = PB2D + 0x30;
CLINEA 0000H 0001H 01D6H 0006H 0023H
	l	r0,	0f258h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+012h

;;					InputStatus[19] = 0x78;
CLINEA 0000H 0001H 01D7H 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+013h

;;					InputStatus[20] = 0x78;
CLINEA 0000H 0001H 01D8H 0006H 001CH
	st	r0,	NEAR _InputStatus+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 01DCH 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 01DDH 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputStatus, 23, _funcUartFin);
CLINEA 0000H 0001H 01DEH 0006H 0033H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _InputStatus
	mov	r1,	#BYTE2 OFFSET _InputStatus
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01DFH 0001H 000BH
	bal	_$L472

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01DFH 0006H 001DH
_$L111 :
CBLOCK 141 27 479

;;						NOP1000();
CLINEA 0000H 0001H 01E0H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 01E1H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 27 482

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01DFH 0001H 000BH
_$L472 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L111

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 01E5H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 01E6H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputRec, 14, _funcUartFin);
CLINEA 0000H 0001H 01E7H 0006H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _InputRec
	mov	r1,	#BYTE2 OFFSET _InputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01E8H 0001H 000BH
	bal	_$L473

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01E8H 0006H 001DH
_$L115 :
CBLOCK 141 28 488

;;						NOP1000();
CLINEA 0000H 0001H 01E9H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 01EAH 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 28 491

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01E8H 0001H 000BH
_$L473 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L115

;;					}
CLINEA 0000H 0000H 01EBH 0006H 0006H
_$L114 :
CBLOCKEND 141 24 492
CBLOCKEND 141 23 493
CBLOCKEND 141 22 494

;;		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUB"
CLINEA 0000H 0001H 01F1H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#04fh
	beq	_$M106
	b	_$L140
_$M106 :
CBLOCK 141 29 497

;;			if(RecWorld[1] == 0x55){
CLINEA 0000H 0001H 01F2H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#055h
	beq	_$M107
	b	_$L140
_$M107 :
CBLOCK 141 30 498

;;				if(RecWorld[2] == 0x42){
CLINEA 0000H 0001H 01F3H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#042h
	beq	_$M108
	b	_$L140
_$M108 :
CBLOCK 141 31 499

;;					OutputRec[2] = 0x42;
CLINEA 0000H 0001H 01F4H 0006H 0019H
	mov	r0,	#042h
	st	r0,	NEAR _OutputRec+02h

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0001H 01F5H 0006H 0028H
	mov	er4,	#4 
_$L125 :
CBLOCK 141 32 502

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 01F7H 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 01F8H 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L137
CBLOCK 141 33 504

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 01F9H 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 141 33 506

;;						}
CLINEA 0000H 0000H 01FAH 0007H 0007H
_$L137 :
CBLOCKEND 141 32 507

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0000H 01F5H 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#015h
	cmpc	r5,	#00h
	blt	_$L125

;;					PB7DIR = RecWorld[4];
CLINEA 0000H 0001H 01FDH 0006H 001AH
	l	r0,	NEAR _RecWorld+04h
	and	r0,	#01h
	beq	_$M53
	sb	0f259h.7
	bal	_$M54
_$M53 :
	rb	0f259h.7
_$M54 :

;;					PB2DIR = RecWorld[9];
CLINEA 0000H 0001H 0202H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M55
	sb	0f259h.2
	bal	_$M56
_$M55 :
	rb	0f259h.2
_$M56 :

;;					PB7D = RecWorld[13];
CLINEA 0000H 0001H 0207H 0006H 0019H
	l	r0,	NEAR _RecWorld+0dh
	and	r0,	#01h
	beq	_$M57
	sb	0f258h.7
	bal	_$M58
_$M57 :
	rb	0f258h.7
_$M58 :

;;					PB2D = RecWorld[18];
CLINEA 0000H 0001H 020CH 0006H 0019H
	l	r0,	NEAR _RecWorld+012h
	and	r0,	#01h
	beq	_$M59
	sb	0f258h.2
	bal	_$M60
_$M59 :
	rb	0f258h.2
_$M60 :

;;					OutputRec[13] = PB7D + 0x30;
CLINEA 0000H 0001H 0211H 0006H 0021H
	l	r0,	0f258h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+0dh

;;					OutputRec[14] = 0x78;
CLINEA 0000H 0001H 0212H 0006H 001AH
	mov	r0,	#078h
	st	r0,	NEAR _OutputRec+0eh

;;					OutputRec[15] = 0x78;
CLINEA 0000H 0001H 0213H 0006H 001AH
	st	r0,	NEAR _OutputRec+0fh

;;					OutputRec[16] = 0x78;
CLINEA 0000H 0001H 0214H 0006H 001AH
	st	r0,	NEAR _OutputRec+010h

;;					OutputRec[17] = 0x78;
CLINEA 0000H 0001H 0215H 0006H 001AH
	st	r0,	NEAR _OutputRec+011h

;;					OutputRec[18] = PB2D + 0x30;
CLINEA 0000H 0001H 0216H 0006H 0021H
	l	r0,	0f258h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+012h

;;					OutputRec[19] = 0x78;
CLINEA 0000H 0001H 0217H 0006H 001AH
	mov	r0,	#078h
	st	r0,	NEAR _OutputRec+013h

;;					OutputRec[20] = 0x78;
CLINEA 0000H 0001H 0218H 0006H 001AH
	st	r0,	NEAR _OutputRec+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 021AH 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 021BH 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(OutputRec, 23, _funcUartFin);
CLINEA 0000H 0001H 021CH 0006H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _OutputRec
	mov	r1,	#BYTE2 OFFSET _OutputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 021DH 0001H 000BH
	bal	_$L474

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 021DH 0006H 001DH
_$L141 :
CBLOCK 141 34 541

;;						NOP1000();
CLINEA 0000H 0001H 021EH 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 021FH 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 34 544

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 021DH 0001H 000BH
_$L474 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L141

;;					}
CLINEA 0000H 0000H 0220H 0006H 0006H
_$L140 :
CBLOCKEND 141 31 545
CBLOCKEND 141 30 546
CBLOCKEND 141 29 547

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "IND"
CLINEA 0000H 0001H 0226H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M109
	b	_$L170
_$M109 :
CBLOCK 141 35 550

;;			if(RecWorld[1] == 0x4E){
CLINEA 0000H 0001H 0227H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#04eh
	beq	_$M110
	b	_$L170
_$M110 :
CBLOCK 141 36 551

;;				if(RecWorld[2] == 0x44){
CLINEA 0000H 0001H 0228H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#044h
	beq	_$M111
	b	_$L170
_$M111 :
CBLOCK 141 37 552

;;					InputStatus[2] = 0x44;
CLINEA 0000H 0001H 0229H 0006H 001BH
	mov	r0,	#044h
	st	r0,	NEAR _InputStatus+02h

;;					InputRec[2] = 0x44;
CLINEA 0000H 0001H 022AH 0006H 0018H
	st	r0,	NEAR _InputRec+02h

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0001H 022BH 0006H 0028H
	mov	er4,	#4 
_$L151 :
CBLOCK 141 38 556

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 022DH 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 022EH 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L163
CBLOCK 141 39 558

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 022FH 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 141 39 560

;;						}
CLINEA 0000H 0000H 0230H 0007H 0007H
_$L163 :
CBLOCKEND 141 38 561

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0000H 022BH 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#0ch
	cmpc	r5,	#00h
	blt	_$L151

;;					PD5DIR = RecWorld[6];
CLINEA 0000H 0001H 0236H 0006H 001AH
	l	r0,	NEAR _RecWorld+06h
	and	r0,	#01h
	beq	_$M61
	sb	0f269h.5
	bal	_$M62
_$M61 :
	rb	0f269h.5
_$M62 :

;;					PD4DIR = RecWorld[7];
CLINEA 0000H 0001H 0237H 0006H 001AH
	l	r0,	NEAR _RecWorld+07h
	and	r0,	#01h
	beq	_$M63
	sb	0f269h.4
	bal	_$M64
_$M63 :
	rb	0f269h.4
_$M64 :

;;					PD3DIR = RecWorld[8];
CLINEA 0000H 0001H 0238H 0006H 001AH
	l	r0,	NEAR _RecWorld+08h
	and	r0,	#01h
	beq	_$M65
	sb	0f269h.3
	bal	_$M66
_$M65 :
	rb	0f269h.3
_$M66 :

;;					PD2DIR = RecWorld[9];
CLINEA 0000H 0001H 0239H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M67
	sb	0f269h.2
	bal	_$M68
_$M67 :
	rb	0f269h.2
_$M68 :

;;					PD1DIR = RecWorld[10];
CLINEA 0000H 0001H 023AH 0006H 001BH
	l	r0,	NEAR _RecWorld+0ah
	and	r0,	#01h
	beq	_$M69
	sb	0f269h.1
	bal	_$M70
_$M69 :
	rb	0f269h.1
_$M70 :

;;					PD0DIR = RecWorld[11];
CLINEA 0000H 0001H 023BH 0006H 001BH
	l	r0,	NEAR _RecWorld+0bh
	and	r0,	#01h
	beq	_$M71
	sb	0f269h.0
	bal	_$M72
_$M71 :
	rb	0f269h.0
_$M72 :

;;					InputStatus[4] = 0x78;
CLINEA 0000H 0001H 023EH 0006H 001BH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+04h

;;					InputStatus[5] = 0x78;
CLINEA 0000H 0001H 023FH 0006H 001BH
	st	r0,	NEAR _InputStatus+05h

;;					InputStatus[6] = PD5DIR + 0x30;
CLINEA 0000H 0001H 0240H 0006H 0024H
	l	r0,	0f269h
	srl	r0,	#05h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+06h

;;					InputStatus[7] = PD4DIR + 0x30;
CLINEA 0000H 0001H 0241H 0006H 0024H
	l	r0,	0f269h
	srl	r0,	#04h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+07h

;;					InputStatus[8] = PD3DIR + 0x30;
CLINEA 0000H 0001H 0242H 0006H 0024H
	l	r0,	0f269h
	srl	r0,	#03h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+08h

;;					InputStatus[9] = PD2DIR + 0x30;
CLINEA 0000H 0001H 0243H 0006H 0024H
	l	r0,	0f269h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+09h

;;					InputStatus[10] = PD1DIR + 0x30;
CLINEA 0000H 0001H 0244H 0006H 0025H
	l	r0,	0f269h
	srl	r0,	#01h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0ah

;;					InputStatus[11] = PD0DIR + 0x30;
CLINEA 0000H 0001H 0245H 0006H 0025H
	l	r0,	0f269h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0bh

;;					InputStatus[13] = 0x78;
CLINEA 0000H 0001H 0248H 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+0dh

;;					InputStatus[14] = 0x78;
CLINEA 0000H 0001H 0249H 0006H 001CH
	st	r0,	NEAR _InputStatus+0eh

;;					InputStatus[15] = PD5D + 0x30;
CLINEA 0000H 0001H 024AH 0006H 0023H
	l	r0,	0f268h
	srl	r0,	#05h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0fh

;;					InputStatus[16] = PD4D + 0x30;
CLINEA 0000H 0001H 024BH 0006H 0023H
	l	r0,	0f268h
	srl	r0,	#04h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+010h

;;					InputStatus[17] = PD3D + 0x30;
CLINEA 0000H 0001H 024CH 0006H 0023H
	l	r0,	0f268h
	srl	r0,	#03h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+011h

;;					InputStatus[18] = PD2D + 0x30;
CLINEA 0000H 0001H 024DH 0006H 0023H
	l	r0,	0f268h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+012h

;;					InputStatus[19] = PD1D + 0x30;
CLINEA 0000H 0001H 024EH 0006H 0023H
	l	r0,	0f268h
	srl	r0,	#01h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+013h

;;					InputStatus[20] = PD0D + 0x30;
CLINEA 0000H 0001H 024FH 0006H 0023H
	l	r0,	0f268h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 0253H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 0254H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputStatus, 23, _funcUartFin);
CLINEA 0000H 0001H 0255H 0006H 0033H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _InputStatus
	mov	r1,	#BYTE2 OFFSET _InputStatus
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0256H 0001H 000BH
	bal	_$L475

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0256H 0006H 001DH
_$L167 :
CBLOCK 141 40 598

;;						NOP1000();
CLINEA 0000H 0001H 0257H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0258H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 40 601

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0256H 0001H 000BH
_$L475 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L167

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 025CH 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 025DH 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputRec, 14, _funcUartFin);
CLINEA 0000H 0001H 025EH 0006H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _InputRec
	mov	r1,	#BYTE2 OFFSET _InputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 025FH 0001H 000BH
	bal	_$L476

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 025FH 0006H 001DH
_$L171 :
CBLOCK 141 41 607

;;						NOP1000();
CLINEA 0000H 0001H 0260H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0261H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 41 610

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 025FH 0001H 000BH
_$L476 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L171

;;					}
CLINEA 0000H 0000H 0262H 0006H 0006H
_$L170 :
CBLOCKEND 141 37 611
CBLOCKEND 141 36 612
CBLOCKEND 141 35 613

;;		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUD"
CLINEA 0000H 0001H 0268H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#04fh
	beq	_$M112
	b	_$L196
_$M112 :
CBLOCK 141 42 616

;;			if(RecWorld[1] == 0x55){
CLINEA 0000H 0001H 0269H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#055h
	beq	_$M113
	b	_$L196
_$M113 :
CBLOCK 141 43 617

;;				if(RecWorld[2] == 0x44){
CLINEA 0000H 0001H 026AH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#044h
	beq	_$M114
	b	_$L196
_$M114 :
CBLOCK 141 44 618

;;					OutputRec[2] = 0x44;
CLINEA 0000H 0001H 026BH 0006H 0019H
	mov	r0,	#044h
	st	r0,	NEAR _OutputRec+02h

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0001H 026CH 0006H 0028H
	mov	er4,	#4 
_$L181 :
CBLOCK 141 45 621

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 026EH 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 026FH 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L193
CBLOCK 141 46 623

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 0270H 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 141 46 625

;;						}
CLINEA 0000H 0000H 0271H 0007H 0007H
_$L193 :
CBLOCKEND 141 45 626

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0000H 026CH 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#015h
	cmpc	r5,	#00h
	blt	_$L181

;;					PD5DIR = RecWorld[6];
CLINEA 0000H 0001H 0276H 0006H 001AH
	l	r0,	NEAR _RecWorld+06h
	and	r0,	#01h
	beq	_$M73
	sb	0f269h.5
	bal	_$M74
_$M73 :
	rb	0f269h.5
_$M74 :

;;					PD4DIR = RecWorld[7];
CLINEA 0000H 0001H 0277H 0006H 001AH
	l	r0,	NEAR _RecWorld+07h
	and	r0,	#01h
	beq	_$M75
	sb	0f269h.4
	bal	_$M76
_$M75 :
	rb	0f269h.4
_$M76 :

;;					PD3DIR = RecWorld[8];
CLINEA 0000H 0001H 0278H 0006H 001AH
	l	r0,	NEAR _RecWorld+08h
	and	r0,	#01h
	beq	_$M77
	sb	0f269h.3
	bal	_$M78
_$M77 :
	rb	0f269h.3
_$M78 :

;;					PD2DIR = RecWorld[9];
CLINEA 0000H 0001H 0279H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M79
	sb	0f269h.2
	bal	_$M80
_$M79 :
	rb	0f269h.2
_$M80 :

;;					PD1DIR = RecWorld[10];
CLINEA 0000H 0001H 027AH 0006H 001BH
	l	r0,	NEAR _RecWorld+0ah
	and	r0,	#01h
	beq	_$M81
	sb	0f269h.1
	bal	_$M82
_$M81 :
	rb	0f269h.1
_$M82 :

;;					PD0DIR = RecWorld[11];
CLINEA 0000H 0001H 027BH 0006H 001BH
	l	r0,	NEAR _RecWorld+0bh
	and	r0,	#01h
	beq	_$M83
	sb	0f269h.0
	bal	_$M84
_$M83 :
	rb	0f269h.0
_$M84 :

;;					PD5D = RecWorld[15];
CLINEA 0000H 0001H 0280H 0006H 0019H
	l	r0,	NEAR _RecWorld+0fh
	and	r0,	#01h
	beq	_$M85
	sb	0f268h.5
	bal	_$M86
_$M85 :
	rb	0f268h.5
_$M86 :

;;					PD4D = RecWorld[16];
CLINEA 0000H 0001H 0281H 0006H 0019H
	l	r0,	NEAR _RecWorld+010h
	and	r0,	#01h
	beq	_$M87
	sb	0f268h.4
	bal	_$M88
_$M87 :
	rb	0f268h.4
_$M88 :

;;					PD3D = RecWorld[17];
CLINEA 0000H 0001H 0282H 0006H 0019H
	l	r0,	NEAR _RecWorld+011h
	and	r0,	#01h
	beq	_$M89
	sb	0f268h.3
	bal	_$M90
_$M89 :
	rb	0f268h.3
_$M90 :

;;					PD2D = RecWorld[18];
CLINEA 0000H 0001H 0283H 0006H 0019H
	l	r0,	NEAR _RecWorld+012h
	and	r0,	#01h
	beq	_$M91
	sb	0f268h.2
	bal	_$M92
_$M91 :
	rb	0f268h.2
_$M92 :

;;					PD1D = RecWorld[19];
CLINEA 0000H 0001H 0284H 0006H 0019H
	l	r0,	NEAR _RecWorld+013h
	and	r0,	#01h
	beq	_$M93
	sb	0f268h.1
	bal	_$M94
_$M93 :
	rb	0f268h.1
_$M94 :

;;					PD0D = RecWorld[20];
CLINEA 0000H 0001H 0285H 0006H 0019H
	l	r0,	NEAR _RecWorld+014h
	and	r0,	#01h
	beq	_$M95
	sb	0f268h.0
	bal	_$M96
_$M95 :
	rb	0f268h.0
_$M96 :

;;					OutputRec[13] = 0x78;
CLINEA 0000H 0001H 0288H 0006H 001AH
	mov	r0,	#078h
	st	r0,	NEAR _OutputRec+0dh

;;					OutputRec[14] = 0x78;
CLINEA 0000H 0001H 0289H 0006H 001AH
	st	r0,	NEAR _OutputRec+0eh

;;					OutputRec[15] = PD5D + 0x30;
CLINEA 0000H 0001H 028AH 0006H 0021H
	l	r0,	0f268h
	srl	r0,	#05h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+0fh

;;					OutputRec[16] = PD4D + 0x30;
CLINEA 0000H 0001H 028BH 0006H 0021H
	l	r0,	0f268h
	srl	r0,	#04h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+010h

;;					OutputRec[17] = PD3D + 0x30;
CLINEA 0000H 0001H 028CH 0006H 0021H
	l	r0,	0f268h
	srl	r0,	#03h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+011h

;;					OutputRec[18] = PD2D + 0x30;
CLINEA 0000H 0001H 028DH 0006H 0021H
	l	r0,	0f268h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+012h

;;					OutputRec[19] = PD1D + 0x30;
CLINEA 0000H 0001H 028EH 0006H 0021H
	l	r0,	0f268h
	srl	r0,	#01h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+013h

;;					OutputRec[20] = PD0D + 0x30;
CLINEA 0000H 0001H 028FH 0006H 0021H
	l	r0,	0f268h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 0291H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 0292H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(OutputRec, 23, _funcUartFin);
CLINEA 0000H 0001H 0293H 0006H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _OutputRec
	mov	r1,	#BYTE2 OFFSET _OutputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0294H 0001H 000BH
	bal	_$L477

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0294H 0006H 001DH
_$L197 :
CBLOCK 141 47 660

;;						NOP1000();
CLINEA 0000H 0001H 0295H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0296H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 141 47 663

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0294H 0001H 000BH
_$L477 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L197

;;					}
CLINEA 0000H 0000H 0297H 0006H 0006H
_$L196 :
CBLOCKEND 141 44 664
CBLOCKEND 141 43 665
CBLOCKEND 141 42 666

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "I2CTX"
CLINEA 0000H 0001H 029DH 0003H 0035H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M115
	b	_$L384
_$M115 :
CBLOCK 141 48 669

;;			if(RecWorld[1] == 0x32){
CLINEA 0000H 0001H 029EH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#032h
	beq	_$M116
	b	_$L384
_$M116 :
CBLOCK 141 49 670

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 029FH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M117
	b	_$L384
_$M117 :
CBLOCK 141 50 671

;;					if(RecWorld[3] == 0x54){
CLINEA 0000H 0001H 02A0H 0006H 001DH
	l	r0,	NEAR _RecWorld+03h
	cmp	r0,	#054h
	beq	_$M118
	b	_$L384
_$M118 :
CBLOCK 141 51 672

;;						if(RecWorld[4] == 0x58){
CLINEA 0000H 0001H 02A1H 0007H 001EH
	l	r0,	NEAR _RecWorld+04h
	cmp	r0,	#058h
	beq	_$M119
	b	_$L384
_$M119 :
CBLOCK 141 52 673

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 02A4H 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 02A5H 0008H 0013H
	bl	_uart_stop

;;							uart_startReceive(I2C_BUFF, 46, _funcUartFin);
CLINEA 0000H 0001H 02A6H 0008H 0035H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#46
	mov	r0,	#BYTE1 OFFSET _I2C_BUFF
	mov	r1,	#BYTE2 OFFSET _I2C_BUFF
	bl	_uart_startReceive
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02A7H 0001H 000BH
	bal	_$L478

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02A7H 0008H 001FH
_$L211 :
CBLOCK 141 53 679

;;								NOP1000();
CLINEA 0000H 0001H 02A8H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 02A9H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 141 53 682

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02A7H 0001H 000BH
_$L478 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L211

;;							chari = 2;
CLINEA 0000H 0001H 02ADH 0008H 0011H
	mov	r0,	#02h
	st	r0,	NEAR _chari

;;							charj = 0;
CLINEA 0000H 0001H 02AEH 0008H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0001H 02B0H 0008H 0024H
	l	r0,	NEAR _I2C_BUFF+02h
	cmp	r0,	#020h
	beq	_$L214
_$L215 :
CBLOCK 141 54 688

;;								chari++;
CLINEA 0000H 0000H 02B1H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02B2H 0009H 0010H
	lea	OFFSET _charj
	inc	[ea]
CBLOCKEND 141 54 691

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02B0H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L215

;;							}
CLINEA 0000H 0000H 02B3H 0008H 0008H
_$L214 :

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02B4H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B4H 0001H 000BH
	bal	_$L479

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B4H 0024H 002AH
_$L219 :
CBLOCK 141 55 692

;;								if(chark == 3){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02B5H 0009H 0047H
	cmp	r0,	#03h
	bne	_$L223
CBLOCK 141 56 693
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _I2CAdd_temp

;;								else if(chark == 2){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 02B6H 0009H 004BH
	bal	_$L228
_$L223 :
	cmp	r0,	#02h
	bne	_$L226
CBLOCK 141 57 694
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _I2CAdd_temp
CBLOCKEND 141 57 694

;;								else {I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02B7H 0009H 003AH
	bal	_$L228
_$L226 :
CBLOCK 141 58 695
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CAdd_temp
CBLOCKEND 141 58 695
_$L228 :

;;								I2CAdd += I2CAdd_temp;
CLINEA 0000H 0001H 02B8H 0009H 001EH
	l	r0,	NEAR _I2CAdd
	l	r1,	NEAR _I2CAdd_temp
	add	r0,	r1
	st	r0,	NEAR _I2CAdd
CBLOCKEND 141 55 697
CBLOCKEND 141 56 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B4H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B4H 0001H 000BH
_$L479 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B4H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M120
	b	_$L219
_$M120 :

;;							chari++;
CLINEA 0000H 0000H 02BAH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02BBH 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02BCH 0001H 000BH
	bal	_$L480

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02BCH 0008H 0024H
_$L231 :
CBLOCK 141 59 700

;;								chari++;
CLINEA 0000H 0000H 02BDH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02BEH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 59 703

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02BCH 0001H 000BH
_$L480 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02BCH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L231

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02C0H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02C0H 0001H 000BH
	bal	_$L481

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02C0H 0024H 002AH
_$L235 :
CBLOCK 141 60 704

;;								if(chark == 3){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02C1H 0009H 004CH
	cmp	r0,	#03h
	bne	_$L239
CBLOCK 141 61 705
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _I2CNumBytes_temp

;;								else if(chark == 2){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 02C2H 0009H 0050H
	bal	_$L244
_$L239 :
	cmp	r0,	#02h
	bne	_$L242
CBLOCK 141 62 706
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _I2CNumBytes_temp
CBLOCKEND 141 62 706

;;								else {I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02C3H 0009H 003FH
	bal	_$L244
_$L242 :
CBLOCK 141 63 707
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CNumBytes_temp
CBLOCKEND 141 63 707
_$L244 :

;;								I2CNumBytes += I2CNumBytes_temp;
CLINEA 0000H 0001H 02C4H 0009H 0028H
	l	r0,	NEAR _I2CNumBytes
	l	r1,	NEAR _I2CNumBytes_temp
	add	r0,	r1
	st	r0,	NEAR _I2CNumBytes
CBLOCKEND 141 60 709
CBLOCKEND 141 61 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02C0H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02C0H 0001H 000BH
_$L481 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02C0H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M121
	b	_$L235
_$M121 :

;;							chari++;
CLINEA 0000H 0000H 02C6H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02C7H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02C9H 0001H 000BH
	bal	_$L482

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02C9H 0008H 0024H
_$L247 :
CBLOCK 141 64 713

;;								chari++;
CLINEA 0000H 0000H 02CAH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02CBH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 64 716

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02C9H 0001H 000BH
_$L482 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02C9H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L247

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02CDH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02CDH 0001H 000BH
	bal	_$L483

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02CDH 0024H 002AH
_$L251 :
CBLOCK 141 65 717

;;								if(chark == 3){Data0Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02CEH 0009H 0049H
	cmp	r0,	#03h
	bne	_$L255
CBLOCK 141 66 718
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data0Str_temp

;;								else if(chark == 2){Data0Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 02CFH 0009H 004DH
	bal	_$L260
_$L255 :
	cmp	r0,	#02h
	bne	_$L258
CBLOCK 141 67 719
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data0Str_temp
CBLOCKEND 141 67 719

;;								else {Data0Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02D0H 0009H 003CH
	bal	_$L260
_$L258 :
CBLOCK 141 68 720
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data0Str_temp
CBLOCKEND 141 68 720
_$L260 :

;;								Data0Str += Data0Str_temp;
CLINEA 0000H 0001H 02D1H 0009H 0022H
	l	r0,	NEAR _Data0Str
	l	r1,	NEAR _Data0Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data0Str
CBLOCKEND 141 65 722
CBLOCKEND 141 66 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02CDH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02CDH 0001H 000BH
_$L483 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02CDH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M122
	b	_$L251
_$M122 :

;;							chari++;
CLINEA 0000H 0000H 02D3H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02D4H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02D6H 0001H 000BH
	bal	_$L484

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02D6H 0008H 0024H
_$L263 :
CBLOCK 141 69 726

;;								chari++;
CLINEA 0000H 0000H 02D7H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02D8H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 69 729

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02D6H 0001H 000BH
_$L484 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02D6H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L263

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02DAH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02DAH 0001H 000BH
	bal	_$L485

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02DAH 0024H 002AH
_$L267 :
CBLOCK 141 70 730

;;								if(chark == 3){Data1Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02DBH 0009H 0049H
	cmp	r0,	#03h
	bne	_$L271
CBLOCK 141 71 731
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data1Str_temp

;;								else if(chark == 2){Data1Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 02DCH 0009H 004DH
	bal	_$L276
_$L271 :
	cmp	r0,	#02h
	bne	_$L274
CBLOCK 141 72 732
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data1Str_temp
CBLOCKEND 141 72 732

;;								else {Data1Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02DDH 0009H 003CH
	bal	_$L276
_$L274 :
CBLOCK 141 73 733
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data1Str_temp
CBLOCKEND 141 73 733
_$L276 :

;;								Data1Str += Data1Str_temp;
CLINEA 0000H 0001H 02DEH 0009H 0022H
	l	r0,	NEAR _Data1Str
	l	r1,	NEAR _Data1Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data1Str
CBLOCKEND 141 70 735
CBLOCKEND 141 71 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02DAH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02DAH 0001H 000BH
_$L485 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02DAH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M123
	b	_$L267
_$M123 :

;;							chari++;
CLINEA 0000H 0000H 02E0H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02E1H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02E3H 0001H 000BH
	bal	_$L486

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02E3H 0008H 0024H
_$L279 :
CBLOCK 141 74 739

;;								chari++;
CLINEA 0000H 0000H 02E4H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02E5H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 74 742

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02E3H 0001H 000BH
_$L486 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02E3H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L279

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02E7H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02E7H 0001H 000BH
	bal	_$L487

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02E7H 0024H 002AH
_$L283 :
CBLOCK 141 75 743

;;								if(chark == 3){Data2Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02E8H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L287
CBLOCK 141 76 744
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data2Str_temp

;;								else if(chark == 2){Data2Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 02E9H 0009H 004DH
	bal	_$L292
_$L287 :
	cmp	r0,	#02h
	bne	_$L290
CBLOCK 141 77 745
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data2Str_temp
CBLOCKEND 141 77 745

;;								else {Data2Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02EAH 0009H 003CH
	bal	_$L292
_$L290 :
CBLOCK 141 78 746
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data2Str_temp
CBLOCKEND 141 78 746
_$L292 :

;;								Data2Str += Data2Str_temp;
CLINEA 0000H 0001H 02EBH 0009H 0022H
	l	r0,	NEAR _Data2Str
	l	r1,	NEAR _Data2Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data2Str
CBLOCKEND 141 75 748
CBLOCKEND 141 76 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02E7H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02E7H 0001H 000BH
_$L487 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02E7H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M124
	b	_$L283
_$M124 :

;;							chari++;
CLINEA 0000H 0000H 02EDH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02EEH 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02F0H 0001H 000BH
	bal	_$L488

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02F0H 0008H 0024H
_$L295 :
CBLOCK 141 79 752

;;								chari++;
CLINEA 0000H 0000H 02F1H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02F2H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 79 755

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02F0H 0001H 000BH
_$L488 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02F0H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L295

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02F4H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02F4H 0001H 000BH
	bal	_$L489

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02F4H 0024H 002AH
_$L299 :
CBLOCK 141 80 756

;;								if(chark == 3){Data3Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02F5H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L303
CBLOCK 141 81 757
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data3Str_temp

;;								else if(chark == 2){Data3Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 02F6H 0009H 004DH
	bal	_$L308
_$L303 :
	cmp	r0,	#02h
	bne	_$L306
CBLOCK 141 82 758
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data3Str_temp
CBLOCKEND 141 82 758

;;								else {Data3Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02F7H 0009H 003CH
	bal	_$L308
_$L306 :
CBLOCK 141 83 759
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data3Str_temp
CBLOCKEND 141 83 759
_$L308 :

;;								Data3Str += Data3Str_temp;
CLINEA 0000H 0001H 02F8H 0009H 0022H
	l	r0,	NEAR _Data3Str
	l	r1,	NEAR _Data3Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data3Str
CBLOCKEND 141 80 761
CBLOCKEND 141 81 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02F4H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02F4H 0001H 000BH
_$L489 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02F4H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M125
	b	_$L299
_$M125 :

;;							chari++;
CLINEA 0000H 0000H 02FAH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02FBH 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02FDH 0001H 000BH
	bal	_$L490

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02FDH 0008H 0024H
_$L311 :
CBLOCK 141 84 765

;;								chari++;
CLINEA 0000H 0000H 02FEH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02FFH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 84 768

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02FDH 0001H 000BH
_$L490 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02FDH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L311

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0301H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0301H 0001H 000BH
	bal	_$L491

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0301H 0024H 002AH
_$L315 :
CBLOCK 141 85 769

;;								if(chark == 3){Data4Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0302H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L319
CBLOCK 141 86 770
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data4Str_temp

;;								else if(chark == 2){Data4Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 0303H 0009H 004DH
	bal	_$L324
_$L319 :
	cmp	r0,	#02h
	bne	_$L322
CBLOCK 141 87 771
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data4Str_temp
CBLOCKEND 141 87 771

;;								else {Data4Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0304H 0009H 003CH
	bal	_$L324
_$L322 :
CBLOCK 141 88 772
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data4Str_temp
CBLOCKEND 141 88 772
_$L324 :

;;								Data4Str += Data4Str_temp;
CLINEA 0000H 0001H 0305H 0009H 0022H
	l	r0,	NEAR _Data4Str
	l	r1,	NEAR _Data4Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data4Str
CBLOCKEND 141 85 774
CBLOCKEND 141 86 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0301H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0301H 0001H 000BH
_$L491 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0301H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M126
	b	_$L315
_$M126 :

;;							chari++;
CLINEA 0000H 0000H 0307H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0308H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030AH 0001H 000BH
	bal	_$L492

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030AH 0008H 0024H
_$L327 :
CBLOCK 141 89 778

;;								chari++;
CLINEA 0000H 0000H 030BH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 030CH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 89 781

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030AH 0001H 000BH
_$L492 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030AH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L327

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 030EH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 030EH 0001H 000BH
	bal	_$L493

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 030EH 0024H 002AH
_$L331 :
CBLOCK 141 90 782

;;								if(chark == 3){Data5Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 030FH 0009H 0049H
	cmp	r0,	#03h
	bne	_$L335
CBLOCK 141 91 783
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data5Str_temp

;;								else if(chark == 2){Data5Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 0310H 0009H 004DH
	bal	_$L340
_$L335 :
	cmp	r0,	#02h
	bne	_$L338
CBLOCK 141 92 784
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data5Str_temp
CBLOCKEND 141 92 784

;;								else {Data5Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0311H 0009H 003CH
	bal	_$L340
_$L338 :
CBLOCK 141 93 785
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data5Str_temp
CBLOCKEND 141 93 785
_$L340 :

;;								Data5Str += Data5Str_temp;
CLINEA 0000H 0001H 0312H 0009H 0022H
	l	r0,	NEAR _Data5Str
	l	r1,	NEAR _Data5Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data5Str
CBLOCKEND 141 90 787
CBLOCKEND 141 91 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 030EH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 030EH 0001H 000BH
_$L493 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 030EH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M127
	b	_$L331
_$M127 :

;;							chari++;
CLINEA 0000H 0000H 0314H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0315H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0317H 0001H 000BH
	bal	_$L494

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0317H 0008H 0024H
_$L343 :
CBLOCK 141 94 791

;;								chari++;
CLINEA 0000H 0000H 0318H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0319H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 94 794

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0317H 0001H 000BH
_$L494 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0317H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L343

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 031BH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031BH 0001H 000BH
	bal	_$L495

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031BH 0024H 002AH
_$L347 :
CBLOCK 141 95 795

;;								if(chark == 3){Data6Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 031CH 0009H 0049H
	cmp	r0,	#03h
	bne	_$L351
CBLOCK 141 96 796
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data6Str_temp

;;								else if(chark == 2){Data6Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 031DH 0009H 004DH
	bal	_$L356
_$L351 :
	cmp	r0,	#02h
	bne	_$L354
CBLOCK 141 97 797
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data6Str_temp
CBLOCKEND 141 97 797

;;								else {Data6Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 031EH 0009H 003CH
	bal	_$L356
_$L354 :
CBLOCK 141 98 798
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data6Str_temp
CBLOCKEND 141 98 798
_$L356 :

;;								Data6Str += Data6Str_temp;
CLINEA 0000H 0001H 031FH 0009H 0022H
	l	r0,	NEAR _Data6Str
	l	r1,	NEAR _Data6Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data6Str
CBLOCKEND 141 95 800
CBLOCKEND 141 96 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031BH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031BH 0001H 000BH
_$L495 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031BH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M128
	b	_$L347
_$M128 :

;;							chari++;
CLINEA 0000H 0000H 0321H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0322H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0324H 0001H 000BH
	bal	_$L496

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0324H 0008H 0024H
_$L359 :
CBLOCK 141 99 804

;;								chari++;
CLINEA 0000H 0000H 0325H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0326H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 99 807

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0324H 0001H 000BH
_$L496 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0324H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L359

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0328H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0328H 0001H 000BH
	bal	_$L497

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0328H 0024H 002AH
_$L363 :
CBLOCK 141 100 808

;;								if(chark == 3){Data7Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0329H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L367
CBLOCK 141 101 809
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _Data7Str_temp

;;								else if(chark == 2){Data7Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 032AH 0009H 004DH
	bal	_$L372
_$L367 :
	cmp	r0,	#02h
	bne	_$L370
CBLOCK 141 102 810
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _Data7Str_temp
CBLOCKEND 141 102 810

;;								else {Data7Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 032BH 0009H 003CH
	bal	_$L372
_$L370 :
CBLOCK 141 103 811
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data7Str_temp
CBLOCKEND 141 103 811
_$L372 :

;;								Data7Str += Data7Str_temp;
CLINEA 0000H 0001H 032CH 0009H 0022H
	l	r0,	NEAR _Data7Str
	l	r1,	NEAR _Data7Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data7Str
CBLOCKEND 141 100 813
CBLOCKEND 141 101 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0328H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0328H 0001H 000BH
_$L497 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0328H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M129
	b	_$L363
_$M129 :

;;							chari++;
CLINEA 0000H 0000H 032EH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;							
CLINEA 0000H 0001H 032FH 0008H 0018H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							I2CSendInfo[0] = Data0Str;
CLINEA 0000H 0001H 0332H 0008H 0021H
	l	r0,	NEAR _Data0Str
	st	r0,	NEAR _I2CSendInfo

;;							I2CSendInfo[1] = Data1Str;
CLINEA 0000H 0001H 0333H 0008H 0021H
	l	r0,	NEAR _Data1Str
	st	r0,	NEAR _I2CSendInfo+01h

;;							I2CSendInfo[2] = Data2Str;
CLINEA 0000H 0001H 0334H 0008H 0021H
	l	r0,	NEAR _Data2Str
	st	r0,	NEAR _I2CSendInfo+02h

;;							I2CSendInfo[3] = Data3Str;
CLINEA 0000H 0001H 0335H 0008H 0021H
	l	r0,	NEAR _Data3Str
	st	r0,	NEAR _I2CSendInfo+03h

;;							I2CSendInfo[4] = Data4Str;
CLINEA 0000H 0001H 0336H 0008H 0021H
	l	r0,	NEAR _Data4Str
	st	r0,	NEAR _I2CSendInfo+04h

;;							I2CSendInfo[5] = Data5Str;
CLINEA 0000H 0001H 0337H 0008H 0021H
	l	r0,	NEAR _Data5Str
	st	r0,	NEAR _I2CSendInfo+05h

;;							I2CSendInfo[6] = Data6Str;
CLINEA 0000H 0001H 0338H 0008H 0021H
	l	r0,	NEAR _Data6Str
	st	r0,	NEAR _I2CSendInfo+06h

;;							I2CSendInfo[7] = Data7Str;
CLINEA 0000H 0001H 0339H 0008H 0021H
	l	r0,	NEAR _Data7Str
	st	r0,	NEAR _I2CSendInfo+07h

;;							Data0Str = Data1Str = Data2Str = Data3Str = Data4Str = Data5Str = Data6Str = Data7Str = 0;
CLINEA 0000H 0001H 033CH 0008H 0061H
	mov	r0,	#00h
	st	r0,	NEAR _Data7Str
	st	r0,	NEAR _Data6Str
	st	r0,	NEAR _Data5Str
	st	r0,	NEAR _Data4Str
	st	r0,	NEAR _Data3Str
	st	r0,	NEAR _Data2Str
	st	r0,	NEAR _Data1Str
	st	r0,	NEAR _Data0Str

;;							_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 033FH 0008H 003EH
	st	r0,	NEAR __flgI2CFin

;;							i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0340H 0008H 0049H
	bl	_i2c_stop

;;							i2c_startSend( I2CAdd, &I2CSendInfo, I2CNumBytes, &I2CSendInfo, 0, (cbfI2c)_funcI2CFin);		//Begin I2C Recieve Command
CLINEA 0000H 0001H 0341H 0008H 007CH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#0 
	push	er0
	mov	r0,	#BYTE1 OFFSET _I2CSendInfo
	mov	r1,	#BYTE2 OFFSET _I2CSendInfo
	push	er0
	l	r0,	NEAR _I2CNumBytes
	mov	r1,	#00h
	push	er0
	mov	r2,	#BYTE1 OFFSET _I2CSendInfo
	mov	r3,	#BYTE2 OFFSET _I2CSendInfo
	l	r0,	NEAR _I2CAdd
	bl	_i2c_startSend
	add	sp,	#8 

;;							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0342H 0001H 000BH
	bal	_$L498

;;							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0342H 0008H 0054H
_$L375 :
CBLOCK 141 104 834

;;								NOP1000();
CLINEA 0000H 0001H 0343H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 0344H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 141 104 837

;;							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0342H 0001H 000BH
_$L498 :

;;							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0342H 001BH 0022H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L375

;;							I2CAdd = 0;
CLINEA 0000H 0001H 0348H 0008H 0012H
	mov	r0,	#00h
	st	r0,	NEAR _I2CAdd

;;							I2CNumBytes = 0;
CLINEA 0000H 0001H 0349H 0008H 0017H
	st	r0,	NEAR _I2CNumBytes

;;							chari = 0;
CLINEA 0000H 0001H 034AH 0008H 0011H
	st	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 034BH 0008H 002AH
_$L379 :
CBLOCK 141 105 843

;;								I2CSendInfo[chari] = 0;
CLINEA 0000H 0001H 034CH 0009H 001FH
	mov	r1,	#00h
	mov	r2,	#00h
	st	r2,	NEAR _I2CSendInfo[er0]
CBLOCKEND 141 105 845

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 034BH 0008H 002AH
	lea	OFFSET _chari
	inc	[ea]
	l	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 034BH 001BH 0022H
	cmp	r0,	#08h
	blt	_$L379

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 0350H 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 0351H 0008H 0013H
	bl	_uart_stop

;;							uart_startSend(I2C_TX_REC, 21, _funcUartFin);
CLINEA 0000H 0001H 0352H 0008H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#21
	mov	r0,	#BYTE1 OFFSET _I2C_TX_REC
	mov	r1,	#BYTE2 OFFSET _I2C_TX_REC
	bl	_uart_startSend
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0353H 0001H 000BH
	bal	_$L499

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0353H 0008H 001FH
_$L385 :
CBLOCK 141 106 851

;;								NOP1000();
CLINEA 0000H 0001H 0354H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 0355H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 141 106 854

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0353H 0001H 000BH
_$L499 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0353H 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L385

;;							}
CLINEA 0000H 0000H 0356H 0008H 0008H
_$L384 :
CBLOCKEND 141 52 855
CBLOCKEND 141 51 856
CBLOCKEND 141 50 857
CBLOCKEND 141 49 858
CBLOCKEND 141 48 859

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "I2CRX"
CLINEA 0000H 0001H 035EH 0003H 0035H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M130
	b	_$L10
_$M130 :
CBLOCK 141 107 862

;;			if(RecWorld[1] == 0x32){
CLINEA 0000H 0001H 035FH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#032h
	beq	_$M131
	b	_$L10
_$M131 :
CBLOCK 141 108 863

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 0360H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M132
	b	_$L10
_$M132 :
CBLOCK 141 109 864

;;					if(RecWorld[3] == 0x52){
CLINEA 0000H 0001H 0361H 0006H 001DH
	l	r0,	NEAR _RecWorld+03h
	cmp	r0,	#052h
	beq	_$M133
	b	_$L10
_$M133 :
CBLOCK 141 110 865

;;						if(RecWorld[4] == 0x58){
CLINEA 0000H 0001H 0362H 0007H 001EH
	l	r0,	NEAR _RecWorld+04h
	cmp	r0,	#058h
	beq	_$M134
	b	_$L10
_$M134 :
CBLOCK 141 111 866

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 0365H 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 0366H 0008H 0013H
	bl	_uart_stop

;;							uart_startReceive(I2C_BUFF, 46, _funcUartFin);
CLINEA 0000H 0001H 0367H 0008H 0035H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#46
	mov	r0,	#BYTE1 OFFSET _I2C_BUFF
	mov	r1,	#BYTE2 OFFSET _I2C_BUFF
	bl	_uart_startReceive
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0368H 0001H 000BH
	bal	_$L500

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0368H 0008H 001FH
_$L399 :
CBLOCK 141 112 872

;;								NOP1000();
CLINEA 0000H 0001H 0369H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 036AH 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 141 112 875

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0368H 0001H 000BH
_$L500 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0368H 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L399

;;							chari = 2;
CLINEA 0000H 0001H 036EH 0008H 0011H
	mov	r0,	#02h
	st	r0,	NEAR _chari

;;							charj = 0;
CLINEA 0000H 0001H 036FH 0008H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0001H 0371H 0008H 0024H
	l	r0,	NEAR _I2C_BUFF+02h
	cmp	r0,	#020h
	beq	_$L402
_$L403 :
CBLOCK 141 113 881

;;								chari++;
CLINEA 0000H 0000H 0372H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0373H 0009H 0010H
	lea	OFFSET _charj
	inc	[ea]
CBLOCKEND 141 113 884

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0371H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L403

;;							}
CLINEA 0000H 0000H 0374H 0008H 0008H
_$L402 :

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0375H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0375H 0001H 000BH
	bal	_$L501

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0375H 0024H 002AH
_$L407 :
CBLOCK 141 114 885

;;								if(chark == 3){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0376H 0009H 0047H
	cmp	r0,	#03h
	bne	_$L411
CBLOCK 141 115 886
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _I2CAdd_temp

;;								else if(chark == 2){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 0377H 0009H 004BH
	bal	_$L416
_$L411 :
	cmp	r0,	#02h
	bne	_$L414
CBLOCK 141 116 887
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _I2CAdd_temp
CBLOCKEND 141 116 887

;;								else {I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0378H 0009H 003AH
	bal	_$L416
_$L414 :
CBLOCK 141 117 888
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CAdd_temp
CBLOCKEND 141 117 888
_$L416 :

;;								I2CAdd += I2CAdd_temp;
CLINEA 0000H 0001H 0379H 0009H 001EH
	l	r0,	NEAR _I2CAdd
	l	r1,	NEAR _I2CAdd_temp
	add	r0,	r1
	st	r0,	NEAR _I2CAdd
CBLOCKEND 141 114 890
CBLOCKEND 141 115 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0375H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0375H 0001H 000BH
_$L501 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0375H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M135
	b	_$L407
_$M135 :

;;							chari++;
CLINEA 0000H 0000H 037BH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 037CH 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 037DH 0001H 000BH
	bal	_$L502

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 037DH 0008H 0024H
_$L419 :
CBLOCK 141 118 893

;;								chari++;
CLINEA 0000H 0000H 037EH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 037FH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 118 896

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 037DH 0001H 000BH
_$L502 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 037DH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L419

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0381H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0381H 0001H 000BH
	bal	_$L503

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0381H 0024H 002AH
_$L423 :
CBLOCK 141 119 897

;;								if(chark == 3){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0382H 0009H 004CH
	cmp	r0,	#03h
	bne	_$L427
CBLOCK 141 120 898
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _I2CNumBytes_temp

;;								else if(chark == 2){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 0383H 0009H 0050H
	bal	_$L432
_$L427 :
	cmp	r0,	#02h
	bne	_$L430
CBLOCK 141 121 899
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _I2CNumBytes_temp
CBLOCKEND 141 121 899

;;								else {I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0384H 0009H 003FH
	bal	_$L432
_$L430 :
CBLOCK 141 122 900
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CNumBytes_temp
CBLOCKEND 141 122 900
_$L432 :

;;								I2CNumBytes += I2CNumBytes_temp;
CLINEA 0000H 0001H 0385H 0009H 0028H
	l	r0,	NEAR _I2CNumBytes
	l	r1,	NEAR _I2CNumBytes_temp
	add	r0,	r1
	st	r0,	NEAR _I2CNumBytes
CBLOCKEND 141 119 902
CBLOCKEND 141 120 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0381H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0381H 0001H 000BH
_$L503 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0381H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M136
	b	_$L423
_$M136 :

;;							chari++;
CLINEA 0000H 0000H 0387H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0388H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 038AH 0001H 000BH
	bal	_$L504

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 038AH 0008H 0024H
_$L435 :
CBLOCK 141 123 906

;;								chari++;
CLINEA 0000H 0000H 038BH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 038CH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 141 123 909

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 038AH 0001H 000BH
_$L504 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 038AH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L435

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 038EH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 038EH 0001H 000BH
	bal	_$L505

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 038EH 0024H 002AH
_$L439 :
CBLOCK 141 124 910

;;								if(chark == 3){RegAddr_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 038FH 0009H 0048H
	cmp	r0,	#03h
	bne	_$L443
CBLOCK 141 125 911
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#01h
	add	r1,	r0
	sll	r1,	#03h
	add	r1,	r0
	sll	r1,	#02h
	st	r1,	NEAR _RegAddr_temp

;;								else if(chark == 2){RegAddr_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
CLINEA 0000H 0001H 0390H 0009H 004CH
	bal	_$L448
_$L443 :
	cmp	r0,	#02h
	bne	_$L446
CBLOCK 141 126 912
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	mov	r1,	r0
	sll	r1,	#02h
	add	r1,	r0
	sll	r1,	#01h
	st	r1,	NEAR _RegAddr_temp
CBLOCKEND 141 126 912

;;								else {RegAddr_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0391H 0009H 003BH
	bal	_$L448
_$L446 :
CBLOCK 141 127 913
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _RegAddr_temp
CBLOCKEND 141 127 913
_$L448 :

;;								RegAddr += RegAddr_temp;
CLINEA 0000H 0001H 0392H 0009H 0020H
	l	r0,	NEAR _RegAddr
	l	r1,	NEAR _RegAddr_temp
	add	r0,	r1
	st	r0,	NEAR _RegAddr
CBLOCKEND 141 124 915
CBLOCKEND 141 125 973

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 038EH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 038EH 0001H 000BH
_$L505 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 038EH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M137
	b	_$L439
_$M137 :

;;							chari++;
CLINEA 0000H 0000H 0394H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0395H 0008H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0398H 0008H 0041H
	st	r0,	NEAR __flgI2CFin

;;							i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0399H 0008H 004CH
	bl	_i2c_stop

;;							i2c_startReceive(I2CAdd, &RegAddr, 1, &I2CReceInfo, I2CNumBytes, (cbfI2c)_funcI2CFin);	//Begin I2C Recieve Command
CLINEA 0000H 0001H 039AH 0008H 0079H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	l	r0,	NEAR _I2CNumBytes
	mov	r1,	#00h
	push	er0
	mov	r0,	#BYTE1 OFFSET _I2CReceInfo
	mov	r1,	#BYTE2 OFFSET _I2CReceInfo
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _RegAddr
	mov	r3,	#BYTE2 OFFSET _RegAddr
	l	r0,	NEAR _I2CAdd
	bl	_i2c_startReceive
	add	sp,	#8 

;;							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 039BH 0001H 000BH
	bal	_$L506

;;							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 039BH 0008H 0057H
_$L451 :
CBLOCK 141 128 923

;;								NOP1000();
CLINEA 0000H 0001H 039CH 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 039DH 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 141 128 926

;;							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 039BH 0001H 000BH
_$L506 :

;;							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 039BH 001BH 0022H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L451

;;							I2C_RX_Data[6] = I2CReceInfo[0];
CLINEA 0000H 0001H 03A4H 0008H 0027H
	l	r0,	NEAR _I2CReceInfo
	st	r0,	NEAR _I2C_RX_Data+06h

;;							I2C_RX_Data[8] = I2CReceInfo[1];
CLINEA 0000H 0001H 03A5H 0008H 0027H
	l	r0,	NEAR _I2CReceInfo+01h
	st	r0,	NEAR _I2C_RX_Data+08h

;;							I2C_RX_Data[10] = I2CReceInfo[2];
CLINEA 0000H 0001H 03A6H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+02h
	st	r0,	NEAR _I2C_RX_Data+0ah

;;							I2C_RX_Data[12] = I2CReceInfo[3];
CLINEA 0000H 0001H 03A7H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+03h
	st	r0,	NEAR _I2C_RX_Data+0ch

;;							I2C_RX_Data[14] = I2CReceInfo[4];
CLINEA 0000H 0001H 03A8H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+04h
	st	r0,	NEAR _I2C_RX_Data+0eh

;;							I2C_RX_Data[16] = I2CReceInfo[5];
CLINEA 0000H 0001H 03A9H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+05h
	st	r0,	NEAR _I2C_RX_Data+010h

;;							I2C_RX_Data[18] = I2CReceInfo[6];
CLINEA 0000H 0001H 03AAH 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+06h
	st	r0,	NEAR _I2C_RX_Data+012h

;;							I2C_RX_Data[20] = I2CReceInfo[7];
CLINEA 0000H 0001H 03ABH 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+07h
	st	r0,	NEAR _I2C_RX_Data+014h

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 03ADH 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 03AEH 0008H 0013H
	bl	_uart_stop

;;							uart_startSend(I2C_RX_Data, 23, _funcUartFin);
CLINEA 0000H 0001H 03AFH 0008H 0035H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _I2C_RX_Data
	mov	r1,	#BYTE2 OFFSET _I2C_RX_Data
	bl	_uart_startSend
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03B0H 0001H 000BH
	bal	_$L507

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03B0H 0008H 001FH
_$L455 :
CBLOCK 141 129 944

;;								NOP1000();
CLINEA 0000H 0001H 03B1H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 03B2H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 141 129 947

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03B0H 0001H 000BH
_$L507 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03B0H 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L455

;;							I2CAdd = 0;
CLINEA 0000H 0001H 03B6H 0008H 0012H
	mov	r0,	#00h
	st	r0,	NEAR _I2CAdd

;;							I2CNumBytes = 0;
CLINEA 0000H 0001H 03B7H 0008H 0017H
	st	r0,	NEAR _I2CNumBytes

;;							RegAddr = 0;
CLINEA 0000H 0001H 03B8H 0008H 0013H
	st	r0,	NEAR _RegAddr

;;							chari = 0;
CLINEA 0000H 0001H 03B9H 0008H 0011H
	st	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 03BAH 0008H 002AH
_$L459 :
CBLOCK 141 130 954

;;								I2CReceInfo[chari] = 0;
CLINEA 0000H 0001H 03BBH 0009H 001FH
	mov	r1,	#00h
	mov	r2,	#00h
	st	r2,	NEAR _I2CReceInfo[er0]
CBLOCKEND 141 130 956

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 03BAH 0008H 002AH
	lea	OFFSET _chari
	inc	[ea]
	l	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 03BAH 001BH 0022H
	cmp	r0,	#08h
	blt	_$L459

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 03BFH 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 03C0H 0008H 0013H
	bl	_uart_stop

;;							uart_startSend(I2C_RX_REC, 21, _funcUartFin);
CLINEA 0000H 0001H 03C1H 0008H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#21
	mov	r0,	#BYTE1 OFFSET _I2C_RX_REC
	mov	r1,	#BYTE2 OFFSET _I2C_RX_REC
	bl	_uart_startSend
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03C2H 0001H 000BH
	bal	_$L508

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03C2H 0008H 001FH
_$L465 :
CBLOCK 141 131 962

;;								NOP1000();
CLINEA 0000H 0001H 03C3H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 03C4H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 141 131 965

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03C2H 0001H 000BH
_$L508 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 03C2H 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L465

;;							}
CLINEA 0000H 0000H 03C5H 0008H 0008H
CBLOCKEND 141 111 966
CBLOCKEND 141 110 967
CBLOCKEND 141 109 968
CBLOCKEND 141 108 969
CBLOCKEND 141 107 970

;;		goto RX_Loop;
CLINEA 0000H 0001H 03CBH 0003H 000FH
	b	_$L10
CBLOCKEND 141 2 973

;;}//end main
CLINEA 0000H 0001H 03CDH 0001H 000BH
CBLOCKEND 141 1 973
CFUNCTIONEND 141


	rseg $$main_clrWDT$main
CFUNCTION 124

_main_clrWDT	:
CBLOCK 124 1 999

;;{
CLINEA 0000H 0001H 03E7H 0001H 0001H
CBLOCK 124 2 999

;;	do {
CLINEA 0000H 0001H 03EAH 0002H 0005H
_$L512 :
CBLOCK 124 3 1002

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 03EBH 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 124 3 1004

;;	} while (WDP != 1);
CLINEA 0000H 0000H 03ECH 0002H 0014H
	tb	0f00eh.0
	beq	_$L512

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 03EDH 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 124 2 1006

;;}
CLINEA 0000H 0001H 03EEH 0001H 0001H
	rt
CBLOCKEND 124 1 1006
CFUNCTIONEND 124


	rseg $$NOP1000$main
CFUNCTION 140

_NOP1000	:
CBLOCK 140 1 1016

;;{
CLINEA 0000H 0001H 03F8H 0001H 0001H
CBLOCK 140 2 1016
CLOCAL 4AH 0002H 0000H 0002H "ONCNT" 02H 00H 01H
CBLOCKEND 140 2 1023

;;}
CLINEA 0000H 0001H 03FFH 0001H 0001H
	rt
CBLOCKEND 140 1 1023
CFUNCTIONEND 140


	rseg $$Initialization$main
CFUNCTION 125

_Initialization	:
CBLOCK 125 1 1030

;;static void Initialization(void){
CLINEA 0000H 0001H 0406H 0001H 0021H
	push	lr
CBLOCK 125 2 1030
CRET 0000H

;;			DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 040AH 0004H 0047H
	sb	0f02ah.0

;;			DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 040BH 0004H 0044H
	rb	0f02ah.2

;;			DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 040CH 0004H 0034H
	sb	0f02ah.3

;;			DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 040DH 0004H 0047H
	sb	0f02ah.6

;;			DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 040EH 0004H 0049H
	rb	0f02ah.7

;;		BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 0410H 0003H 0027H
	mov	r0,	#00h
	st	r0,	0f02ch

;;		BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 0411H 0003H 0053H
	st	r0,	0f02eh

;;		BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWW (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 0412H 0003H 0059H
	st	r0,	0f02fh

;;		PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
CLINEA 0000H 0001H 0415H 0003H 003DH
	bl	_PortA_Low

;;		PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
CLINEA 0000H 0001H 0416H 0003H 003DH
	bl	_PortB_Low

;;		PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
CLINEA 0000H 0001H 0417H 0003H 003DH
	bl	_PortC_Low

;;		PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
CLINEA 0000H 0001H 0418H 0003H 003DH
	bl	_PortD_Low

;;     		SetOSC();
CLINEA 0000H 0001H 042CH 0008H 0010H
	bl	_SetOSC

;;		TM8D    = 0;	//Timer 8 DATA Register
CLINEA 0000H 0001H 0434H 0003H 0026H
	mov	r0,	#00h
	st	r0,	0f8e0h

;;		TM8C    = 0;	//Timer 8 CLOCK Register
CLINEA 0000H 0001H 0437H 0003H 0027H
	st	r0,	0f8e1h

;;		T8C1 = 0;	// 01 = HTBCLK  
CLINEA 0000H 0001H 043CH 0003H 001CH
	rb	0f8e1h.1

;;		T8C0 = 1;
CLINEA 0000H 0001H 043DH 0003H 000BH
	sb	0f8e1h.0

;;		T89M16 = 0;	// 0=8-Bit Mode; 1=16bit Mode...
CLINEA 0000H 0001H 043FH 0003H 002EH
	rb	0f8e2h.5

;;		T8OST = 0;	// 0=Normal; 1=One-Shot...
CLINEA 0000H 0001H 0441H 0003H 0027H
	rb	0f8e2h.7

;;		T8RUN = 0;	//0=STOP; 1=START...
CLINEA 0000H 0001H 0444H 0003H 0021H
	rb	0f8e3h.0

;;		irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 044CH 0003H 0021H
	bl	_irq_di

;;		irq_init();	// Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 044DH 0003H 0040H
	bl	_irq_init

;;		IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
CLINEA 0000H 0001H 0458H 0003H 0034H
	mov	r0,	#00h
	st	r0,	0f017h
	st	r0,	0f016h
	st	r0,	0f015h
	st	r0,	0f014h
	st	r0,	0f013h
	st	r0,	0f012h
	st	r0,	0f011h
	st	r0,	0f010h

;;		IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
CLINEA 0000H 0001H 0463H 0003H 003CH
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;		E2H = 0; 	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 0466H 0003H 0047H
	rb	0f017h.3

;;		(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 046BH 0003H 003DH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;		(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 046CH 0003H 003DH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;		EI2CM = 1;
CLINEA 0000H 0001H 046EH 0003H 000CH
	sb	0f012h.7

;;		QI2CM = 1;
CLINEA 0000H 0001H 046FH 0003H 000CH
	sb	0f01ah.7

;;		EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 0470H 0003H 004AH
	sb	0f014h.0

;;		irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 0473H 0003H 0020H
	bl	_irq_ei

;;	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 0478H 0002H 0029H
	mov	r0,	#03h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0479H 0002H 001DH
	bl	_main_clrWDT

;;		HelloWorld[12] 	= 0x0D;
CLINEA 0000H 0001H 047CH 0003H 0019H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0ch

;;		HelloWorld[13] 	= 0x0A;
CLINEA 0000H 0001H 047DH 0003H 0019H
	mov	r0,	#0ah
	st	r0,	NEAR _HelloWorld+0dh

;;		InputStatus[21] 	= 0x0D;
CLINEA 0000H 0001H 047EH 0003H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _InputStatus+015h

;;		InputStatus[22] 	= 0x0A;
CLINEA 0000H 0001H 047FH 0003H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _InputStatus+016h

;;		InputRec[12] 	= 0x0D;
CLINEA 0000H 0001H 0480H 0003H 0017H
	mov	r0,	#0dh
	st	r0,	NEAR _InputRec+0ch

;;		InputRec[13] 	= 0x0A;
CLINEA 0000H 0001H 0481H 0003H 0017H
	mov	r0,	#0ah
	st	r0,	NEAR _InputRec+0dh

;;		OutputRec[21] 	= 0x0D;
CLINEA 0000H 0001H 0482H 0003H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _OutputRec+015h

;;		OutputRec[22] 	= 0x0A;
CLINEA 0000H 0001H 0483H 0003H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _OutputRec+016h

;;		AckMCUConn[20] 	= 0x0D;
CLINEA 0000H 0001H 0484H 0003H 0019H
	mov	r0,	#0dh
	st	r0,	NEAR _AckMCUConn+014h

;;		AckMCUConn[21] 	= 0x0A;
CLINEA 0000H 0001H 0485H 0003H 0019H
	mov	r0,	#0ah
	st	r0,	NEAR _AckMCUConn+015h

;;		I2C_TX_REC[19] = 0x0D;
CLINEA 0000H 0001H 0486H 0003H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _I2C_TX_REC+013h

;;		I2C_TX_REC[20] = 0x0A;
CLINEA 0000H 0001H 0487H 0003H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _I2C_TX_REC+014h

;;		I2C_RX_REC[19] = 0x0D;
CLINEA 0000H 0001H 0488H 0003H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _I2C_RX_REC+013h

;;		I2C_RX_REC[20] = 0x0A;
CLINEA 0000H 0001H 0489H 0003H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _I2C_RX_REC+014h

;;		I2C_RX_Data[21] = 0x0D;
CLINEA 0000H 0001H 048AH 0003H 0019H
	mov	r0,	#0dh
	st	r0,	NEAR _I2C_RX_Data+015h

;;		I2C_RX_Data[22] = 0x0A;
CLINEA 0000H 0001H 048BH 0003H 0019H
	mov	r0,	#0ah
	st	r0,	NEAR _I2C_RX_Data+016h

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
CLINEA 0000H 0001H 0491H 0002H 0045H
	mov	r0,	#00h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#01h
	bl	_i2c_init
	add	sp,	#2 

;;				     &_uartSetParam );				/* Param... 	 */
CLINEA 0000H 0001H 0496H 000AH 002EH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;		uart_PortSet();
CLINEA 0000H 0001H 0497H 0003H 0011H
	bl	_uart_PortSet

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0498H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0499H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(HelloWorld, 14, _funcUartFin); // Send, "Hello World!"
CLINEA 0000H 0001H 049BH 0003H 0047H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _HelloWorld
	mov	r1,	#BYTE2 OFFSET _HelloWorld
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 049CH 0001H 0001H
	bal	_$L525

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 049CH 0003H 001AH
_$L523 :
CBLOCK 125 3 1180

;;			NOP1000();
CLINEA 0000H 0001H 049DH 0004H 000DH
	bl	_NOP1000

;;			main_clrWDT();
CLINEA 0000H 0001H 049EH 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 125 3 1183

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 049CH 0001H 0001H
_$L525 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 049CH 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L523
CBLOCKEND 125 2 1184

;;}
CLINEA 0000H 0001H 04A0H 0001H 0001H
	pop	pc
CBLOCKEND 125 1 1184
CFUNCTIONEND 125


	rseg $$_funcUartFin$main
CFUNCTION 134

__funcUartFin	:
CBLOCK 134 1 1196

;;{
CLINEA 0000H 0001H 04ACH 0001H 0001H
	push	lr
CBLOCK 134 2 1196
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 04ADH 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 04AEH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 04AFH 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 134 2 1200

;;}
CLINEA 0000H 0001H 04B0H 0001H 0001H
	pop	pc
CBLOCKEND 134 1 1200
CFUNCTIONEND 134


	rseg $$_funcI2CFin$main
CFUNCTION 135

__funcI2CFin	:
CBLOCK 135 1 1211

;;{
CLINEA 0000H 0001H 04BBH 0001H 0001H
	push	lr
CBLOCK 135 2 1211
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 04BCH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 04BDH 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 04BEH 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 135 2 1215

;;}
CLINEA 0000H 0001H 04BFH 0001H 0001H
	pop	pc
CBLOCKEND 135 1 1215
CFUNCTIONEND 135


	rseg $$_intI2c$main
CFUNCTION 139

__intI2c	:
CBLOCK 139 1 1225

;;{
CLINEA 0000H 0001H 04C9H 0001H 0001H
	push	lr
CBLOCK 139 2 1225
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 04CAH 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 04CBH 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 139 2 1228

;;}
CLINEA 0000H 0001H 04CCH 0001H 0001H
	pop	pc
CBLOCKEND 139 1 1228
CFUNCTIONEND 139


	rseg $$checkI2C$main
CFUNCTION 136

_checkI2C	:
CBLOCK 136 1 1238

;;{
CLINEA 0000H 0001H 04D6H 0001H 0001H
	push	lr
CBLOCK 136 2 1238
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	while (ret != 1) {
CLINEA 0000H 0000H 04DBH 0002H 0013H
_$L532 :
CBLOCK 136 3 1243

;;		ret = i2c_continue();
CLINEA 0000H 0000H 04DCH 0003H 0017H
	bl	_i2c_continue
CBLOCK 136 4 1245
CBLOCKEND 136 4 1247
CBLOCKEND 136 3 1248

;;	while (ret != 1) {
CLINEA 0000H 0000H 04DBH 001BH 0022H
	cmp	r0,	#01h
	cmpc	r1,	#00h
	bne	_$L532
CBLOCKEND 136 2 1249

;;}
CLINEA 0000H 0001H 04E1H 0001H 0001H
	pop	pc
CBLOCKEND 136 1 1249
CFUNCTIONEND 136


	rseg $$main_reqNotHalt$main
CFUNCTION 137

_main_reqNotHalt	:
CBLOCK 137 1 1259

;;{
CLINEA 0000H 0001H 04EBH 0001H 0001H
CBLOCK 137 2 1259

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 04ECH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 137 2 1261

;;}
CLINEA 0000H 0001H 04EDH 0001H 0001H
	rt
CBLOCKEND 137 1 1261
CFUNCTIONEND 137


	rseg $$_intUart$main
CFUNCTION 138

__intUart	:
CBLOCK 138 1 1271

;;{
CLINEA 0000H 0001H 04F7H 0001H 0001H
CBLOCK 138 2 1271

;;		uart_continue(); //in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 04F8H 0003H 0047H
	b	_uart_continue
CBLOCKEND 138 2 1273
CLINEA 0000H 0001H 04F9H 0001H 0001H
CBLOCKEND 138 1 1273
CFUNCTIONEND 138


	rseg $$SetOSC$main
CFUNCTION 126

_SetOSC	:
CBLOCK 126 1 1278

;;static void SetOSC(void){
CLINEA 0000H 0001H 04FEH 0001H 0019H
CBLOCK 126 2 1278

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0501H 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 0502H 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 0504H 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 0505H 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 0507H 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 0508H 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 050AH 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 050CH 0002H 0017H
	ei
CBLOCKEND 126 2 1293

;;}
CLINEA 0000H 0001H 050DH 0001H 0001H
	rt
CBLOCKEND 126 1 1293
CFUNCTIONEND 126


	rseg $$analog_comparator$main
CFUNCTION 127

_analog_comparator	:
CBLOCK 127 1 1300

;;void analog_comparator(void){
CLINEA 0000H 0001H 0514H 0001H 001DH
CBLOCK 127 2 1300

;;	CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 052AH 0002H 0025H
	sb	0f950h.0

;;	CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 052BH 0002H 0023H
	rb	0f951h.1

;;	CMP0E0  = 0x00;
CLINEA 0000H 0001H 052CH 0002H 0010H
	rb	0f951h.0

;;	CMP0SM1 = 0x00; 	// Detect without Sampling... 
CLINEA 0000H 0001H 052DH 0002H 0030H
	rb	0f951h.3

;;	CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 052EH 0002H 002DH
	sb	0f951h.4

;;	CMP0EN  = 0x00;
CLINEA 0000H 0001H 0531H 0002H 0010H
	rb	0f950h.0
CBLOCKEND 127 2 1332

;;}
CLINEA 0000H 0001H 0534H 0001H 0001H
	rt
CBLOCKEND 127 1 1332
CFUNCTIONEND 127


	rseg $$PortA_Low$main
CFUNCTION 128

_PortA_Low	:
CBLOCK 128 1 1340

;;void PortA_Low(void){
CLINEA 0000H 0001H 053CH 0001H 0015H
CBLOCK 128 2 1340

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 0546H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 0547H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 0548H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 054BH 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 054CH 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 054DH 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 054EH 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 054FH 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 0550H 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0553H 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0554H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0555H 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0556H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0557H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0558H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 055BH 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 055CH 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 055DH 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 055FH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 128 2 1377
CLINEA 0000H 0001H 0561H 0001H 0001H
CBLOCKEND 128 1 1377
CFUNCTIONEND 128


	rseg $$PortB_Low$main
CFUNCTION 129

_PortB_Low	:
CBLOCK 129 1 1383

;;void PortB_Low(void){
CLINEA 0000H 0001H 0567H 0001H 0015H
CBLOCK 129 2 1383

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0571H 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 0572H 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 0573H 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 0574H 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 0575H 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0576H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0577H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0578H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 057BH 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 057CH 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 057DH 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 057EH 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 057FH 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 0580H 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0581H 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 0582H 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0583H 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 0584H 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0585H 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 0586H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0587H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0588H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0589H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 058AH 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 058DH 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 058EH 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 058FH 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 0590H 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0591H 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 0592H 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0593H 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 0594H 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0595H 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 0596H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0597H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 0598H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0599H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 059AH 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 059BH 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 059CH 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 059FH 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 05A0H 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 05A1H 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 05A2H 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 05A3H 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 05A4H 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 05A5H 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 05A6H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 05A8H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 129 2 1450
CLINEA 0000H 0001H 05AAH 0001H 0001H
CBLOCKEND 129 1 1450
CFUNCTIONEND 129


	rseg $$PortC_Low$main
CFUNCTION 130

_PortC_Low	:
CBLOCK 130 1 1456

;;void PortC_Low(void){
CLINEA 0000H 0001H 05B0H 0001H 0015H
CBLOCK 130 2 1456

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 05BAH 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 05BBH 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 05BCH 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 05BDH 0002H 0031H
	rb	0f261h.3

;;	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
CLINEA 0000H 0001H 05BEH 0002H 0031H
	rb	0f261h.4

;;	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
CLINEA 0000H 0001H 05BFH 0002H 0031H
	rb	0f261h.5

;;	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
CLINEA 0000H 0001H 05C0H 0002H 0031H
	rb	0f261h.6

;;	PC7DIR = 0;		// PortC Bit7 set to Output Mode...
CLINEA 0000H 0001H 05C1H 0002H 0031H
	rb	0f261h.7

;;	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
CLINEA 0000H 0001H 05C4H 0002H 003BH
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 05C5H 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
CLINEA 0000H 0001H 05C6H 0002H 003BH
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 05C7H 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
CLINEA 0000H 0001H 05C8H 0002H 003BH
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 05C9H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
CLINEA 0000H 0001H 05CAH 0002H 003BH
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 05CBH 0002H 000EH
	sb	0f262h.3

;;	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
CLINEA 0000H 0001H 05CCH 0002H 003BH
	sb	0f263h.4

;;	PC4C0  = 1;	
CLINEA 0000H 0001H 05CDH 0002H 000DH
	sb	0f262h.4

;;	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
CLINEA 0000H 0001H 05CEH 0002H 003BH
	sb	0f263h.5

;;	PC5C0  = 1;	
CLINEA 0000H 0001H 05CFH 0002H 000DH
	sb	0f262h.5

;;	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
CLINEA 0000H 0001H 05D0H 0002H 003BH
	sb	0f263h.6

;;	PC6C0  = 1;	
CLINEA 0000H 0001H 05D1H 0002H 000DH
	sb	0f262h.6

;;	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
CLINEA 0000H 0001H 05D2H 0002H 003BH
	sb	0f263h.7

;;	PC7C0  = 1;	
CLINEA 0000H 0001H 05D3H 0002H 000DH
	sb	0f262h.7

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 05D6H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 05D7H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 05D8H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 05D9H 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 05DAH 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 05DBH 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 05DCH 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 05DDH 0002H 000EH
	rb	0f264h.3

;;	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 05DEH 0002H 003CH
	rb	0f265h.4

;;	PC4MD0  = 0;	
CLINEA 0000H 0001H 05DFH 0002H 000EH
	rb	0f264h.4

;;	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 05E0H 0002H 003CH
	rb	0f265h.5

;;	PC5MD0  = 0;
CLINEA 0000H 0001H 05E1H 0002H 000DH
	rb	0f264h.5

;;	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 05E2H 0002H 003CH
	rb	0f265h.6

;;	PC6MD0  = 0;	
CLINEA 0000H 0001H 05E3H 0002H 000EH
	rb	0f264h.6

;;	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 05E4H 0002H 003CH
	rb	0f265h.7

;;	PC7MD0  = 0;
CLINEA 0000H 0001H 05E5H 0002H 000DH
	rb	0f264h.7

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 05E8H 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 05E9H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 05EAH 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 05EBH 0002H 0021H
	rb	0f260h.3

;;	PC4D = 0;		// C.4 Output OFF....
CLINEA 0000H 0001H 05ECH 0002H 0021H
	rb	0f260h.4

;;	PC5D = 0;		// C.5 Output OFF....
CLINEA 0000H 0001H 05EDH 0002H 0021H
	rb	0f260h.5

;;	PC6D = 0;		// C.6 Output OFF....
CLINEA 0000H 0001H 05EEH 0002H 0021H
	rb	0f260h.6

;;	PC7D = 0;		// C.7 Output OFF....
CLINEA 0000H 0001H 05EFH 0002H 0021H
	rb	0f260h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 05F1H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 130 2 1523
CLINEA 0000H 0001H 05F3H 0001H 0001H
CBLOCKEND 130 1 1523
CFUNCTIONEND 130


	rseg $$PortD_Low$main
CFUNCTION 131

_PortD_Low	:
CBLOCK 131 1 1529

;;void PortD_Low(void){
CLINEA 0000H 0001H 05F9H 0001H 0015H
CBLOCK 131 2 1529

;;	PD0DIR = 0;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 0602H 0002H 0031H
	rb	0f269h.0

;;	PD1DIR = 0;		// PortD Bit1 set to Output Mode...
CLINEA 0000H 0001H 0603H 0002H 0031H
	rb	0f269h.1

;;	PD2DIR = 0;		// PortD Bit2 set to Output Mode...
CLINEA 0000H 0001H 0604H 0002H 0031H
	rb	0f269h.2

;;	PD3DIR = 0;		// PortD Bit3 set to Output Mode...
CLINEA 0000H 0001H 0605H 0002H 0031H
	rb	0f269h.3

;;	PD4DIR = 0;		// PortD Bit4 set to Output Mode...
CLINEA 0000H 0001H 0606H 0002H 0031H
	rb	0f269h.4

;;	PD5DIR = 0;		// PortD Bit5 set to Output Mode...
CLINEA 0000H 0001H 0607H 0002H 0031H
	rb	0f269h.5

;;	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
CLINEA 0000H 0001H 060AH 0002H 002FH
	sb	0f26bh.0

;;	PD0C0= 1;		
CLINEA 0000H 0001H 060BH 0002H 000CH
	sb	0f26ah.0

;;	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
CLINEA 0000H 0001H 060CH 0002H 002FH
	sb	0f26bh.1

;;	PD1C0= 1;	
CLINEA 0000H 0001H 060DH 0002H 000BH
	sb	0f26ah.1

;;	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
CLINEA 0000H 0001H 060EH 0002H 002FH
	sb	0f26bh.2

;;	PD2C0= 1;	
CLINEA 0000H 0001H 060FH 0002H 000BH
	sb	0f26ah.2

;;	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0610H 0002H 002FH
	sb	0f26bh.3

;;	PD3C0= 1;		
CLINEA 0000H 0001H 0611H 0002H 000CH
	sb	0f26ah.3

;;	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0612H 0002H 002FH
	sb	0f26bh.4

;;	PD4C0= 1;	
CLINEA 0000H 0001H 0613H 0002H 000BH
	sb	0f26ah.4

;;	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0614H 0002H 002FH
	sb	0f26bh.5

;;	PD5C0= 1;	
CLINEA 0000H 0001H 0615H 0002H 000BH
	sb	0f26ah.5

;;	PD0D = 0;		// D.0 Output OFF....
CLINEA 0000H 0001H 0618H 0002H 0021H
	rb	0f268h.0

;;	PD1D = 0;		// D.1 Output OFF....
CLINEA 0000H 0001H 0619H 0002H 0021H
	rb	0f268h.1

;;	PD2D = 0;		// D.2 Output OFF....
CLINEA 0000H 0001H 061AH 0002H 0021H
	rb	0f268h.2

;;	PD3D = 0;		// D.3 Output OFF....
CLINEA 0000H 0001H 061BH 0002H 0021H
	rb	0f268h.3

;;	PD4D = 0;		// D.4 Output OFF....
CLINEA 0000H 0001H 061CH 0002H 0021H
	rb	0f268h.4

;;	PD5D = 0;		// D.5 Output OFF....
CLINEA 0000H 0001H 061DH 0002H 0021H
	rb	0f268h.5

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0620H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 131 2 1570
CLINEA 0000H 0001H 0622H 0001H 0001H
CBLOCKEND 131 1 1570
CFUNCTIONEND 131


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 132

_PortA_Digital_Inputs	:
CBLOCK 132 1 1576

;;void PortA_Digital_Inputs(void){
CLINEA 0000H 0001H 0628H 0001H 0020H
CBLOCK 132 2 1576

;;	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 0632H 0002H 0030H
	sb	0f251h.0

;;	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 0633H 0002H 0030H
	sb	0f251h.1

;;	PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 0634H 0002H 0030H
	sb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0638H 0002H 0041H
	sb	0f253h.0

;;	PA0C0  = 0;		
CLINEA 0000H 0001H 0639H 0002H 000EH
	rb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 063AH 0002H 0041H
	sb	0f253h.1

;;	PA1C0  = 0;	
CLINEA 0000H 0001H 063BH 0002H 000DH
	rb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 063CH 0002H 0041H
	sb	0f253h.2

;;	PA2C0  = 0;	
CLINEA 0000H 0001H 063DH 0002H 000DH
	rb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 0640H 0002H 0039H
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0641H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 0642H 0002H 0039H
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0643H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 0644H 0002H 0039H
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0645H 0002H 000EH
	rb	0f254h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0647H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 132 2 1609
CLINEA 0000H 0001H 0649H 0001H 0001H
CBLOCKEND 132 1 1609
CFUNCTIONEND 132


	rseg $$PinB0_PWM$main
CFUNCTION 133

_PinB0_PWM	:
CBLOCK 133 1 1617

;;void PinB0_PWM(void){
CLINEA 0000H 0001H 0651H 0001H 0015H
CBLOCK 133 2 1617

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 065DH 0002H 0031H
	rb	0f259h.0

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0660H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0661H 0002H 000EH
	sb	0f25ah.0

;;	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0664H 0002H 0036H
	rb	0f25dh.0

;;	PB0MD0  = 1;	
CLINEA 0000H 0001H 0665H 0002H 000EH
	sb	0f25ch.0

;;	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0669H 0002H 0023H
	rb	0f916h.1

;;	PCCS0 = 1;
CLINEA 0000H 0001H 066AH 0002H 000BH
	sb	0f916h.0

;;	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 066DH 0002H 007EH
	mov	r0,	#09ah
	mov	r1,	#010h
	st	er0,	0f910h

;;	PWCD =    12;		//12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0677H 0002H 0034H
	mov	er0,	#12
	st	er0,	0f912h

;;	PCRUN = 0;		// OFF to start
CLINEA 0000H 0001H 0679H 0002H 001CH
	rb	0f917h.0
CBLOCKEND 133 2 1659

;;}
CLINEA 0000H 0001H 067BH 0001H 0001H
	rt
CBLOCKEND 133 1 1659
CFUNCTIONEND 133

	public _checkI2C
	public _main_clrWDT
	public _main_reqNotHalt
	public _AckMCUConn
	public _InputRec
	public _PortA_Digital_Inputs
	public _main
	public _I2C_RX_Data
	public _PortD_Low
	public _NOP1000
	public _OutputRec
	public _PortC_Low
	public _HelloWorld
	public _PortB_Low
	public _InputStatus
	public _PortA_Low
	public _analog_comparator
	public _I2C_RX_REC
	public _I2C_TX_REC
	public _PinB0_PWM
	_RecWorld comm data 015h #00h
	__flgUartFin comm data 01h #00h
	_testI2C comm data 02h #00h
	_ret comm data 02h #00h
	_UART_VAR comm data 02h #00h
	__flgI2CFin comm data 01h #00h
	__reqNotHalt comm data 01h #00h
	_Q112ToQ111 comm data 016h #00h
	extrn code near : _irq_init
	extrn code near : _uart_PortSet
	extrn code near : _i2c_stop
	extrn code near : _i2c_startReceive
	extrn code near : _uart_startReceive
	extrn code near : _uart_init
	extrn code near : _i2c_continue
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _irq_setHdr
	extrn code near : _uart_stop
	extrn code near : _uart_startSend
	extrn code near : _i2c_startSend
	extrn code near : _uart_continue
	extrn code near : _i2c_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NINITTAB
	DB	"Hello World!  "
	DB	"INP_00000000_00000000", 00H
	db	00h
	DB	"INP Received", 00H
	db	00h
	DB	"OUT Received         ", 00H
	db	00h
	DB	"ML610Q112 Connected!", 00H
	db	00h
	DB	"I2CTX CMD Recieved!", 00H
	db	00h
	DB	"I2CRX CMD Recieved!", 00H
	db	00h
	DB	"I2C-R X X X X X X X X", 00H
	db	00h
	db	050h
	db	01h
	db	050h
	db	02h
	db	050h
	db	03h
	db	05fh
	db	07h

	rseg $$TAB_uartSetParam$main
__uartSetParam :
	dw	02580h
	dw	00h
	db	00h
	db	02h
	db	00h
	db	00h
	db	00h
	align

	rseg $$NINITVAR
_HelloWorld :
	ds	0eh
_InputStatus :
	ds	017h
_InputRec :
	ds	0eh
_OutputRec :
	ds	017h
_AckMCUConn :
	ds	016h
_I2C_TX_REC :
	ds	015h
_I2C_RX_REC :
	ds	015h
_I2C_RX_Data :
	ds	017h
_PLAY :
	ds	02h
_PAUSE :
	ds	02h
_STOP :
	ds	02h
_READ_NAME :
	ds	02h

	rseg $$NVARmain
_I2C_BUFF :
	ds	02eh
_I2CNumBytes :
	ds	01h
_Data2Str_temp :
	ds	01h
_RegAddr_temp :
	ds	01h
_Data3Str_temp :
	ds	01h
_I2CReceInfo :
	ds	08h
_Data0Str_temp :
	ds	01h
_Data1Str_temp :
	ds	01h
_Data4Str_temp :
	ds	01h
_Data5Str_temp :
	ds	01h
_Data6Str_temp :
	ds	01h
_Data7Str_temp :
	ds	01h
_I2CNumBytes_temp :
	ds	01h
_Data2Str :
	ds	01h
_Data3Str :
	ds	01h
_RegAddr :
	ds	01h
_Data0Str :
	ds	01h
_Data1Str :
	ds	01h
_I2CAdd :
	ds	01h
_chari :
	ds	01h
_charj :
	ds	01h
_chark :
	ds	01h
_Data6Str :
	ds	01h
	align
_I2CSendInfo :
	ds	08h
_Data7Str :
	ds	01h
_Data4Str :
	ds	01h
_Data5Str :
	ds	01h
_I2CAdd_temp :
	ds	01h

	rseg $$NINITTAB
	align

	rseg $$NINITVAR
	align

	end
