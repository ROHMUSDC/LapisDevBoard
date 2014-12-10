;; Compile Options : /TML610111 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /Ii2c /SS 256 /SD /Oa /Ot /W 1 /Ff /Fa_output\_obj\ 
;; Version Number  : Ver.3.31.4
;; File Name       : main.c

	type (ML610111) 
	fastfloat
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
CGLOBAL 01H 03H 0000H "checkI2C" 08H 02H 87H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 7CH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 85H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 88H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 7DH 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 83H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 8CH 00H 80H 08H 00H 00H 01H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 89H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP1000" 08H 02H 8BH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 8AH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 7EH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 82H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 81H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 80H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 7FH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 86H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PinB0_PWM" 08H 02H 84H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0006H 0003H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "state" 02H 00H 00H
CSTRUCTMEM 52H 00000002H 00000001H "state_sub" 02H 00H 00H
CSTRUCTMEM 52H 00000005H 00000003H "reserve" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0005H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0004H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0003H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0002H 000CH 00000016H "_Notag"
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
CSTRUCTTAG 0000H 0000H 0001H 0001H 00000004H "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "_Off" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 05H 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 5EH 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "fpos_t" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "STRUCT_STATE" 04H 00H 05H 06H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 73H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 31H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 30H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 33H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 32H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "FILE" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CGLOBAL 00H 42H 0015H "RecWorld" 05H 01H 15H 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgUartFin" 02H 00H 00H
CGLOBAL 01H 42H 003EH "NackMCUConn" 05H 01H 3EH 00H 00H 00H
CSGLOBAL 42H 002EH "I2C_BUFF" 05H 01H 2EH 00H 00H 00H
CSGLOBAL 42H 0001H "I2CNumBytes" 02H 00H 00H
CSGLOBAL 42H 0001H "Data2Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "RegAddr_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data3Str_temp" 02H 00H 00H
CGLOBAL 00H 42H 0002H "testI2C" 02H 00H 01H
CGLOBAL 00H 42H 0002H "ret" 02H 00H 01H
CSGLOBAL 42H 0008H "I2CReceInfo" 05H 01H 08H 00H 00H 00H
CSGLOBAL 42H 0001H "Data0Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data1Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data4Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data5Str_temp" 02H 00H 00H
CGLOBAL 00H 42H 0002H "UART_VAR" 02H 00H 01H
CSGLOBAL 42H 0001H "Data6Str_temp" 02H 00H 00H
CSGLOBAL 42H 0001H "Data7Str_temp" 02H 00H 00H
CGLOBAL 01H 42H 0016H "AckMCUConn" 05H 01H 16H 00H 00H 00H
CGLOBAL 01H 42H 000EH "InputRec" 05H 01H 0EH 00H 00H 00H
CSGLOBAL 42H 0001H "I2CNumBytes_temp" 02H 00H 00H
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 05H 00H
CSGLOBAL 42H 0001H "Data2Str" 02H 00H 00H
CSGLOBAL 42H 0001H "Data3Str" 02H 00H 00H
CSGLOBAL 42H 0001H "RegAddr" 02H 00H 00H
CGLOBAL 01H 42H 0017H "I2C_RX_Data" 05H 01H 17H 00H 00H 00H
CGLOBAL 01H 42H 0016H "ListFWRev" 05H 01H 16H 00H 00H 00H
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
CSGLOBAL 42H 0001H "Data5Str" 02H 00H 00H
CGLOBAL 01H 42H 0015H "I2C_RX_REC" 05H 01H 15H 00H 00H 00H
CGLOBAL 01H 42H 0015H "I2C_TX_REC" 05H 01H 15H 00H 00H 00H
CSGLOBAL 42H 0001H "I2CAdd_temp" 02H 00H 00H
CFILE 0001H 000007EEH "main\\ML610111.H"
CFILE 0002H 000000EEH "main\\stdio.h"
CFILE 0003H 0000007AH "main\\yvals.h"
CFILE 0004H 000000D8H "main\\stdlib.h"
CFILE 0005H 0000006FH "uart\\uart.h"
CFILE 0006H 00000027H "common\\common.h"
CFILE 0007H 00000028H "main\\mcu.h"
CFILE 0008H 00000048H "irq\\irq.h"
CFILE 0009H 00000045H "i2c\\i2c.h"
CFILE 0000H 000005BFH "main\\main.c"

	rseg $$main$main
CFUNCTION 140

_main	:
CBLOCK 140 1 232

;;{
CLINEA 0000H 0001H 00E8H 0001H 0001H
CBLOCK 140 2 232
CLOCAL 4BH 0001H 0000H 0002H "char_a" 02H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "uchar" 02H 00H 00H
CLOCAL 4BH 0002H 0000H 0002H "inta" 02H 00H 01H
CLOCAL 4BH 00C8H 0000H 0002H "table" 05H 01H 64H 00H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "uint" 02H 00H 01H
CLOCAL 4BH 0004H 0000H 0002H "long_a" 02H 00H 02H
CLOCAL 4BH 0004H 0000H 0002H "delay" 02H 00H 02H
CLOCAL 4BH 0004H 0000H 0002H "float_a" 02H 00H 03H
CLOCAL 4BH 0008H 0000H 0002H "double_a" 02H 00H 04H
CLOCAL 4AH 0001H 0000H 0002H "button_flag" 02H 00H 00H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "j" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "k" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "x" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "y" 02H 00H 01H
CLOCAL 4AH 0001H 0000H 0002H "sndByte" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "count" 02H 00H 01H
CLOCAL 4BH 0001H 0000H 0002H "maskC" 02H 00H 00H

;;	Initialization();		//Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 00FBH 0002H 0048H
	bl	_Initialization

;;RX_Loop:
CLINEA 0000H 0001H 00FDH 0001H 0008H
CLABEL 000CH "RX_Loop"
_$L12 :

;;		main_clrWDT();
CLINEA 0000H 0001H 00FEH 0003H 0010H
	bl	_main_clrWDT

;;		for (i=0;i<22;i++)
CLINEA 0000H 0001H 0101H 0003H 0014H
	mov	er0,	#0 
_$L15 :
CBLOCK 140 3 258

;;			RecWorld[i] = 0;	
CLINEA 0000H 0001H 0103H 0004H 0014H
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er0]
CBLOCKEND 140 3 260

;;		for (i=0;i<22;i++)
CLINEA 0000H 0000H 0101H 0003H 0014H
	add	er0,	#1 
	cmp	r0,	#016h
	cmpc	r1,	#00h
	blts	_$L15

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0107H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0108H 0003H 000EH
	bl	_uart_stop

;;		uart_startReceive(RecWorld, 21, _funcUartFin);
CLINEA 0000H 0001H 0109H 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#21
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 010AH 0001H 000BH
	bal	_$L424

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 010AH 0003H 001AH
_$L21 :
CBLOCK 140 4 266

;;			NOP1000();
CLINEA 0000H 0001H 010BH 0004H 000DH
	bl	_NOP1000

;;			main_clrWDT();
CLINEA 0000H 0001H 010CH 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 140 4 269

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 010AH 0001H 000BH
_$L424 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L21

;;		if(RecWorld[0] == 0x41){			//if RECWORLD == "ACK1"
CLINEA 0000H 0001H 0112H 0003H 0034H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#041h
	beq	_$M37
	b	_$L41
_$M37 :
CBLOCK 140 5 274

;;			if(RecWorld[1] == 0x43){
CLINEA 0000H 0001H 0113H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#043h
	beq	_$M38
	b	_$L41
_$M38 :
CBLOCK 140 6 275

;;				if(RecWorld[2] == 0x4B){
CLINEA 0000H 0001H 0114H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#04bh
	beq	_$M39
	b	_$L41
_$M39 :
CBLOCK 140 7 276
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					if(RecWorld[3] == 0x31){
CLINEA 0000H 0001H 0115H 0006H 001DH
	l	r0,	NEAR _RecWorld+03h
	cmp	r0,	#031h
	bne	_$L29
CBLOCK 140 8 277

;;						uart_stop();
CLINEA 0000H 0001H 0117H 0007H 0012H
	bl	_uart_stop

;;						uart_startSend(AckMCUConn, 22, _funcUartFin);
CLINEA 0000H 0001H 0118H 0007H 0033H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#22
	mov	r0,	#BYTE1 OFFSET _AckMCUConn
	mov	r1,	#BYTE2 OFFSET _AckMCUConn
	bl	_uart_startSend
	add	sp,	#2 

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 0119H 0001H 000BH
	bal	_$L425

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 0119H 0007H 001EH
_$L33 :
CBLOCK 140 9 281

;;							NOP1000();
CLINEA 0000H 0001H 011AH 0008H 0011H
	bl	_NOP1000

;;							main_clrWDT();
CLINEA 0000H 0001H 011BH 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 140 9 284

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 0119H 0001H 000BH
_$L425 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L33

;;						_flgUartFin = 0;
CLINEA 0000H 0001H 011DH 0007H 0016H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;						uart_stop();
CLINEA 0000H 0001H 011EH 0007H 0012H
	bl	_uart_stop

;;						uart_startSend(ListFWRev, 22, _funcUartFin);
CLINEA 0000H 0001H 011FH 0007H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#22
	mov	r0,	#BYTE1 OFFSET _ListFWRev
	mov	r1,	#BYTE2 OFFSET _ListFWRev
	bl	_uart_startSend
	add	sp,	#2 

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 0120H 0001H 000BH
	bal	_$L426

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 0120H 0007H 001EH
_$L37 :
CBLOCK 140 10 288

;;							NOP1000();
CLINEA 0000H 0001H 0121H 0008H 0011H
	bl	_NOP1000

;;							main_clrWDT();
CLINEA 0000H 0001H 0122H 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 140 10 291

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 0120H 0001H 000BH
_$L426 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L37

;;					else
CLINEA 0000H 0001H 0125H 0006H 0009H
	bal	_$L41
_$L29 :
CBLOCK 140 11 294

;;						uart_stop();
CLINEA 0000H 0001H 0128H 0007H 0012H
	bl	_uart_stop

;;						uart_startSend(NackMCUConn, 62, _funcUartFin);
CLINEA 0000H 0001H 0129H 0007H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#62
	mov	r0,	#BYTE1 OFFSET _NackMCUConn
	mov	r1,	#BYTE2 OFFSET _NackMCUConn
	bl	_uart_startSend
	add	sp,	#2 

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 012AH 0001H 000BH
	bal	_$L427

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 012AH 0007H 001EH
_$L42 :
CBLOCK 140 12 298

;;							NOP1000();
CLINEA 0000H 0001H 012BH 0008H 0011H
	bl	_NOP1000

;;							main_clrWDT();
CLINEA 0000H 0001H 012CH 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 140 12 301

;;						while(_flgUartFin != 1){
CLINEA 0000H 0000H 012AH 0001H 000BH
_$L427 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L42

;;						}
CLINEA 0000H 0000H 012DH 0007H 0007H
_$L41 :
CBLOCKEND 140 11 303
CBLOCKEND 140 7 304
CBLOCKEND 140 8 860
CBLOCKEND 140 6 305
CBLOCKEND 140 5 306

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "INC"
CLINEA 0000H 0001H 0136H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M40
	b	_$L71
_$M40 :
CBLOCK 140 13 310

;;			if(RecWorld[1] == 0x4E){
CLINEA 0000H 0001H 0137H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#04eh
	beq	_$M41
	b	_$L71
_$M41 :
CBLOCK 140 14 311

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 0138H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M42
	b	_$L71
_$M42 :
CBLOCK 140 15 312

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
_$L52 :
CBLOCK 140 16 316

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 013DH 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 013EH 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L64
CBLOCK 140 17 318

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 013FH 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 140 17 320

;;						}
CLINEA 0000H 0000H 0140H 0007H 0007H
_$L64 :
CBLOCKEND 140 16 321

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0000H 013BH 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#0ch
	cmpc	r5,	#00h
	blt	_$L52

;;					PC3DIR = RecWorld[8];
CLINEA 0000H 0001H 0148H 0006H 001AH
	l	r0,	NEAR _RecWorld+08h
	and	r0,	#01h
	beq	_$M1
	sb	0f261h.3
	bal	_$M2
_$M1 :
	rb	0f261h.3
_$M2 :

;;					PC2DIR = RecWorld[9];
CLINEA 0000H 0001H 0149H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M3
	sb	0f261h.2
	bal	_$M4
_$M3 :
	rb	0f261h.2
_$M4 :

;;					PC1DIR = RecWorld[10];
CLINEA 0000H 0001H 014AH 0006H 001BH
	l	r0,	NEAR _RecWorld+0ah
	and	r0,	#01h
	beq	_$M5
	sb	0f261h.1
	bal	_$M6
_$M5 :
	rb	0f261h.1
_$M6 :

;;					PC0DIR = RecWorld[11];
CLINEA 0000H 0001H 014BH 0006H 001BH
	l	r0,	NEAR _RecWorld+0bh
	and	r0,	#01h
	beq	_$M7
	sb	0f261h.0
	bal	_$M8
_$M7 :
	rb	0f261h.0
_$M8 :

;;					InputStatus[4] = 0x78;
CLINEA 0000H 0001H 014EH 0006H 001BH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+04h

;;					InputStatus[5] = 0x78;
CLINEA 0000H 0001H 014FH 0006H 001BH
	st	r0,	NEAR _InputStatus+05h

;;					InputStatus[6] = 0x78;
CLINEA 0000H 0001H 0150H 0006H 001BH
	st	r0,	NEAR _InputStatus+06h

;;					InputStatus[7] = 0x78;
CLINEA 0000H 0001H 0151H 0006H 001BH
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

;;					InputStatus[13] = 0x78;
CLINEA 0000H 0001H 0158H 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+0dh

;;					InputStatus[14] = 0x78;
CLINEA 0000H 0001H 0159H 0006H 001CH
	st	r0,	NEAR _InputStatus+0eh

;;					InputStatus[15] = 0x78;
CLINEA 0000H 0001H 015AH 0006H 001CH
	st	r0,	NEAR _InputStatus+0fh

;;					InputStatus[16] = 0x78;
CLINEA 0000H 0001H 015BH 0006H 001CH
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
	bal	_$L428

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0166H 0006H 001DH
_$L68 :
CBLOCK 140 18 358

;;						NOP1000();
CLINEA 0000H 0001H 0167H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0168H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 140 18 361

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0166H 0001H 000BH
_$L428 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L68

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
	bal	_$L429

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 016FH 0006H 001DH
_$L72 :
CBLOCK 140 19 367

;;						NOP1000();
CLINEA 0000H 0001H 0170H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0171H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 140 19 370

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 016FH 0001H 000BH
_$L429 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L72

;;					}
CLINEA 0000H 0000H 0172H 0006H 0006H
_$L71 :
CBLOCKEND 140 15 371
CBLOCKEND 140 14 372
CBLOCKEND 140 13 373

;;		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUC"
CLINEA 0000H 0001H 0179H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#04fh
	beq	_$M43
	b	_$L97
_$M43 :
CBLOCK 140 20 377

;;			if(RecWorld[1] == 0x55){
CLINEA 0000H 0001H 017AH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#055h
	beq	_$M44
	b	_$L97
_$M44 :
CBLOCK 140 21 378

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 017BH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M45
	b	_$L97
_$M45 :
CBLOCK 140 22 379

;;					OutputRec[2] = 0x43;
CLINEA 0000H 0001H 017CH 0006H 0019H
	mov	r0,	#043h
	st	r0,	NEAR _OutputRec+02h

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0001H 017DH 0006H 0028H
	mov	er4,	#4 
_$L82 :
CBLOCK 140 23 382

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 017FH 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 0180H 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L94
CBLOCK 140 24 384

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 0181H 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 140 24 386

;;						}
CLINEA 0000H 0000H 0182H 0007H 0007H
_$L94 :
CBLOCKEND 140 23 387

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0000H 017DH 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#015h
	cmpc	r5,	#00h
	blt	_$L82

;;					PC3DIR = RecWorld[8];
CLINEA 0000H 0001H 0189H 0006H 001AH
	l	r0,	NEAR _RecWorld+08h
	and	r0,	#01h
	beq	_$M9
	sb	0f261h.3
	bal	_$M10
_$M9 :
	rb	0f261h.3
_$M10 :

;;					PC2DIR = RecWorld[9];
CLINEA 0000H 0001H 018AH 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M11
	sb	0f261h.2
	bal	_$M12
_$M11 :
	rb	0f261h.2
_$M12 :

;;					PC1DIR = RecWorld[10];
CLINEA 0000H 0001H 018BH 0006H 001BH
	l	r0,	NEAR _RecWorld+0ah
	and	r0,	#01h
	beq	_$M13
	sb	0f261h.1
	bal	_$M14
_$M13 :
	rb	0f261h.1
_$M14 :

;;					PC0DIR = RecWorld[11];
CLINEA 0000H 0001H 018CH 0006H 001BH
	l	r0,	NEAR _RecWorld+0bh
	and	r0,	#01h
	beq	_$M15
	sb	0f261h.0
	bal	_$M16
_$M15 :
	rb	0f261h.0
_$M16 :

;;					PC3D = RecWorld[17];
CLINEA 0000H 0001H 0193H 0006H 0019H
	l	r0,	NEAR _RecWorld+011h
	and	r0,	#01h
	beq	_$M17
	sb	0f260h.3
	bal	_$M18
_$M17 :
	rb	0f260h.3
_$M18 :

;;					PC2D = RecWorld[18];
CLINEA 0000H 0001H 0194H 0006H 0019H
	l	r0,	NEAR _RecWorld+012h
	and	r0,	#01h
	beq	_$M19
	sb	0f260h.2
	bal	_$M20
_$M19 :
	rb	0f260h.2
_$M20 :

;;					PC1D = RecWorld[19];
CLINEA 0000H 0001H 0195H 0006H 0019H
	l	r0,	NEAR _RecWorld+013h
	and	r0,	#01h
	beq	_$M21
	sb	0f260h.1
	bal	_$M22
_$M21 :
	rb	0f260h.1
_$M22 :

;;					PC0D = RecWorld[20];
CLINEA 0000H 0001H 0196H 0006H 0019H
	l	r0,	NEAR _RecWorld+014h
	and	r0,	#01h
	beq	_$M23
	sb	0f260h.0
	bal	_$M24
_$M23 :
	rb	0f260h.0
_$M24 :

;;					OutputRec[17] = PC3D + 0x30;
CLINEA 0000H 0001H 019DH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#03h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+011h

;;					OutputRec[18] = PC2D + 0x30;
CLINEA 0000H 0001H 019EH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+012h

;;					OutputRec[19] = PC1D + 0x30;
CLINEA 0000H 0001H 019FH 0006H 0021H
	l	r0,	0f260h
	srl	r0,	#01h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+013h

;;					OutputRec[20] = PC0D + 0x30;
CLINEA 0000H 0001H 01A0H 0006H 0021H
	l	r0,	0f260h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 01A2H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 01A3H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(OutputRec, 23, _funcUartFin);
CLINEA 0000H 0001H 01A4H 0006H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _OutputRec
	mov	r1,	#BYTE2 OFFSET _OutputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01A5H 0001H 000BH
	bal	_$L430

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01A5H 0006H 001DH
_$L98 :
CBLOCK 140 25 421

;;						NOP1000();
CLINEA 0000H 0001H 01A6H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 01A7H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 140 25 424

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01A5H 0001H 000BH
_$L430 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L98

;;					}
CLINEA 0000H 0000H 01A8H 0006H 0006H
_$L97 :
CBLOCKEND 140 22 425
CBLOCKEND 140 21 426
CBLOCKEND 140 20 427

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "INB"
CLINEA 0000H 0001H 01AFH 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M46
	b	_$L127
_$M46 :
CBLOCK 140 26 431

;;			if(RecWorld[1] == 0x4E){
CLINEA 0000H 0001H 01B0H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#04eh
	beq	_$M47
	b	_$L127
_$M47 :
CBLOCK 140 27 432

;;				if(RecWorld[2] == 0x42){
CLINEA 0000H 0001H 01B1H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#042h
	beq	_$M48
	b	_$L127
_$M48 :
CBLOCK 140 28 433

;;					InputStatus[2] = 0x42;
CLINEA 0000H 0001H 01B2H 0006H 001BH
	mov	r0,	#042h
	st	r0,	NEAR _InputStatus+02h

;;					InputRec[2] = 0x42;
CLINEA 0000H 0001H 01B3H 0006H 0018H
	st	r0,	NEAR _InputRec+02h

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0001H 01B4H 0006H 0028H
	mov	er4,	#4 
_$L108 :
CBLOCK 140 29 437

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 01B6H 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 01B7H 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L120
CBLOCK 140 30 439

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 01B8H 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 140 30 441

;;						}
CLINEA 0000H 0000H 01B9H 0007H 0007H
_$L120 :
CBLOCKEND 140 29 442

;;					for(count = 4; count < 12; count++)
CLINEA 0000H 0000H 01B4H 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#0ch
	cmpc	r5,	#00h
	blt	_$L108

;;					PB7DIR = RecWorld[4]; 
CLINEA 0000H 0001H 01C0H 0006H 001BH
	l	r0,	NEAR _RecWorld+04h
	and	r0,	#01h
	beq	_$M25
	sb	0f259h.7
	bal	_$M26
_$M25 :
	rb	0f259h.7
_$M26 :

;;					PB2DIR = RecWorld[9];
CLINEA 0000H 0001H 01C5H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M27
	sb	0f259h.2
	bal	_$M28
_$M27 :
	rb	0f259h.2
_$M28 :

;;					InputStatus[4] = PB7DIR + 0x30;
CLINEA 0000H 0001H 01CAH 0006H 0024H
	l	r0,	0f259h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+04h

;;					InputStatus[5] = 0x78;
CLINEA 0000H 0001H 01CBH 0006H 001BH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+05h

;;					InputStatus[6] = 0x78;
CLINEA 0000H 0001H 01CCH 0006H 001BH
	st	r0,	NEAR _InputStatus+06h

;;					InputStatus[7] = 0x78;
CLINEA 0000H 0001H 01CDH 0006H 001BH
	st	r0,	NEAR _InputStatus+07h

;;					InputStatus[8] = 0x78;
CLINEA 0000H 0001H 01CEH 0006H 001BH
	st	r0,	NEAR _InputStatus+08h

;;					InputStatus[9] = PB2DIR + 0x30;
CLINEA 0000H 0001H 01CFH 0006H 0024H
	l	r0,	0f259h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+09h

;;					InputStatus[10] = 0x78;
CLINEA 0000H 0001H 01D0H 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+0ah

;;					InputStatus[11] = 0x78;
CLINEA 0000H 0001H 01D1H 0006H 001CH
	st	r0,	NEAR _InputStatus+0bh

;;					InputStatus[13] = PB7D + 0x30;
CLINEA 0000H 0001H 01D4H 0006H 0023H
	l	r0,	0f258h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+0dh

;;					InputStatus[14] = 0x78;
CLINEA 0000H 0001H 01D5H 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+0eh

;;					InputStatus[15] = 0x78;
CLINEA 0000H 0001H 01D6H 0006H 001CH
	st	r0,	NEAR _InputStatus+0fh

;;					InputStatus[16] = 0x78;
CLINEA 0000H 0001H 01D7H 0006H 001CH
	st	r0,	NEAR _InputStatus+010h

;;					InputStatus[17] = 0x78;
CLINEA 0000H 0001H 01D8H 0006H 001CH
	st	r0,	NEAR _InputStatus+011h

;;					InputStatus[18] = PB2D + 0x30;
CLINEA 0000H 0001H 01D9H 0006H 0023H
	l	r0,	0f258h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _InputStatus+012h

;;					InputStatus[19] = 0x78;
CLINEA 0000H 0001H 01DAH 0006H 001CH
	mov	r0,	#078h
	st	r0,	NEAR _InputStatus+013h

;;					InputStatus[20] = 0x78;
CLINEA 0000H 0001H 01DBH 0006H 001CH
	st	r0,	NEAR _InputStatus+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 01DFH 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 01E0H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputStatus, 23, _funcUartFin);
CLINEA 0000H 0001H 01E1H 0006H 0033H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _InputStatus
	mov	r1,	#BYTE2 OFFSET _InputStatus
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01E2H 0001H 000BH
	bal	_$L431

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01E2H 0006H 001DH
_$L124 :
CBLOCK 140 31 482

;;						NOP1000();
CLINEA 0000H 0001H 01E3H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 01E4H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 140 31 485

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01E2H 0001H 000BH
_$L431 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L124

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 01E8H 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 01E9H 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(InputRec, 14, _funcUartFin);
CLINEA 0000H 0001H 01EAH 0006H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _InputRec
	mov	r1,	#BYTE2 OFFSET _InputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01EBH 0001H 000BH
	bal	_$L432

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01EBH 0006H 001DH
_$L128 :
CBLOCK 140 32 491

;;						NOP1000();
CLINEA 0000H 0001H 01ECH 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 01EDH 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 140 32 494

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 01EBH 0001H 000BH
_$L432 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L128

;;					}
CLINEA 0000H 0000H 01EEH 0006H 0006H
_$L127 :
CBLOCKEND 140 28 495
CBLOCKEND 140 27 496
CBLOCKEND 140 26 497

;;		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUB"
CLINEA 0000H 0001H 01F5H 0003H 0033H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#04fh
	beq	_$M49
	b	_$L153
_$M49 :
CBLOCK 140 33 501

;;			if(RecWorld[1] == 0x55){
CLINEA 0000H 0001H 01F6H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#055h
	beq	_$M50
	b	_$L153
_$M50 :
CBLOCK 140 34 502

;;				if(RecWorld[2] == 0x42){
CLINEA 0000H 0001H 01F7H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#042h
	beq	_$M51
	b	_$L153
_$M51 :
CBLOCK 140 35 503

;;					OutputRec[2] = 0x42;
CLINEA 0000H 0001H 01F8H 0006H 0019H
	mov	r0,	#042h
	st	r0,	NEAR _OutputRec+02h

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0001H 01F9H 0006H 0028H
	mov	er4,	#4 
_$L138 :
CBLOCK 140 36 506

;;						RecWorld[count] -= 0x30;
CLINEA 0000H 0001H 01FBH 0007H 001EH
	l	r2,	NEAR _RecWorld[er4]
	add	r2,	#0d0h
	st	r2,	NEAR _RecWorld[er4]

;;						if(RecWorld[count] != (0x01||0x00)){
CLINEA 0000H 0001H 01FCH 0007H 002AH
	mov	r0,	r2
	cmp	r0,	#01h
	beq	_$L150
CBLOCK 140 37 508

;;							RecWorld[count] = 0;
CLINEA 0000H 0001H 01FDH 0008H 001BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er4]
CBLOCKEND 140 37 510

;;						}
CLINEA 0000H 0000H 01FEH 0007H 0007H
_$L150 :
CBLOCKEND 140 36 511

;;					for(count = 4; count < 21; count++)
CLINEA 0000H 0000H 01F9H 0006H 0028H
	add	er4,	#1 
	cmp	r4,	#015h
	cmpc	r5,	#00h
	blt	_$L138

;;					PB7DIR = RecWorld[4];
CLINEA 0000H 0001H 0201H 0006H 001AH
	l	r0,	NEAR _RecWorld+04h
	and	r0,	#01h
	beq	_$M29
	sb	0f259h.7
	bal	_$M30
_$M29 :
	rb	0f259h.7
_$M30 :

;;					PB2DIR = RecWorld[9];
CLINEA 0000H 0001H 0206H 0006H 001AH
	l	r0,	NEAR _RecWorld+09h
	and	r0,	#01h
	beq	_$M31
	sb	0f259h.2
	bal	_$M32
_$M31 :
	rb	0f259h.2
_$M32 :

;;					PB7D = RecWorld[13];
CLINEA 0000H 0001H 020BH 0006H 0019H
	l	r0,	NEAR _RecWorld+0dh
	and	r0,	#01h
	beq	_$M33
	sb	0f258h.7
	bal	_$M34
_$M33 :
	rb	0f258h.7
_$M34 :

;;					PB2D = RecWorld[18];
CLINEA 0000H 0001H 0210H 0006H 0019H
	l	r0,	NEAR _RecWorld+012h
	and	r0,	#01h
	beq	_$M35
	sb	0f258h.2
	bal	_$M36
_$M35 :
	rb	0f258h.2
_$M36 :

;;					OutputRec[13] = PB7D + 0x30;
CLINEA 0000H 0001H 0215H 0006H 0021H
	l	r0,	0f258h
	srl	r0,	#07h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+0dh

;;					OutputRec[14] = 0x78;
CLINEA 0000H 0001H 0216H 0006H 001AH
	mov	r0,	#078h
	st	r0,	NEAR _OutputRec+0eh

;;					OutputRec[15] = 0x78;
CLINEA 0000H 0001H 0217H 0006H 001AH
	st	r0,	NEAR _OutputRec+0fh

;;					OutputRec[16] = 0x78;
CLINEA 0000H 0001H 0218H 0006H 001AH
	st	r0,	NEAR _OutputRec+010h

;;					OutputRec[17] = 0x78;
CLINEA 0000H 0001H 0219H 0006H 001AH
	st	r0,	NEAR _OutputRec+011h

;;					OutputRec[18] = PB2D + 0x30;
CLINEA 0000H 0001H 021AH 0006H 0021H
	l	r0,	0f258h
	srl	r0,	#02h
	and	r0,	#01h
	add	r0,	#030h
	st	r0,	NEAR _OutputRec+012h

;;					OutputRec[19] = 0x78;
CLINEA 0000H 0001H 021BH 0006H 001AH
	mov	r0,	#078h
	st	r0,	NEAR _OutputRec+013h

;;					OutputRec[20] = 0x78;
CLINEA 0000H 0001H 021CH 0006H 001AH
	st	r0,	NEAR _OutputRec+014h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 021EH 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 021FH 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(OutputRec, 23, _funcUartFin);
CLINEA 0000H 0001H 0220H 0006H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _OutputRec
	mov	r1,	#BYTE2 OFFSET _OutputRec
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0221H 0001H 000BH
	bal	_$L433

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0221H 0006H 001DH
_$L154 :
CBLOCK 140 38 545

;;						NOP1000();
CLINEA 0000H 0001H 0222H 0007H 0010H
	bl	_NOP1000

;;						main_clrWDT();
CLINEA 0000H 0001H 0223H 0007H 0014H
	bl	_main_clrWDT
CBLOCKEND 140 38 548

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 0221H 0001H 000BH
_$L433 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L154

;;					}
CLINEA 0000H 0000H 0224H 0006H 0006H
_$L153 :
CBLOCKEND 140 35 549
CBLOCKEND 140 34 550
CBLOCKEND 140 33 551

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "I2CTX"
CLINEA 0000H 0001H 022BH 0003H 0035H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M52
	b	_$L341
_$M52 :
CBLOCK 140 39 555

;;			if(RecWorld[1] == 0x32){
CLINEA 0000H 0001H 022CH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#032h
	beq	_$M53
	b	_$L341
_$M53 :
CBLOCK 140 40 556

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 022DH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M54
	b	_$L341
_$M54 :
CBLOCK 140 41 557

;;					if(RecWorld[3] == 0x54){
CLINEA 0000H 0001H 022EH 0006H 001DH
	l	r0,	NEAR _RecWorld+03h
	cmp	r0,	#054h
	beq	_$M55
	b	_$L341
_$M55 :
CBLOCK 140 42 558

;;						if(RecWorld[4] == 0x58){
CLINEA 0000H 0001H 022FH 0007H 001EH
	l	r0,	NEAR _RecWorld+04h
	cmp	r0,	#058h
	beq	_$M56
	b	_$L341
_$M56 :
CBLOCK 140 43 559

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 0232H 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 0233H 0008H 0013H
	bl	_uart_stop

;;							uart_startReceive(I2C_BUFF, 46, _funcUartFin);
CLINEA 0000H 0001H 0234H 0008H 0035H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#46
	mov	r0,	#BYTE1 OFFSET _I2C_BUFF
	mov	r1,	#BYTE2 OFFSET _I2C_BUFF
	bl	_uart_startReceive
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0235H 0001H 000BH
	bal	_$L434

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0235H 0008H 001FH
_$L168 :
CBLOCK 140 44 565

;;								NOP1000();
CLINEA 0000H 0001H 0236H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 0237H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 140 44 568

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0235H 0001H 000BH
_$L434 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L168

;;							chari = 2;
CLINEA 0000H 0001H 023BH 0008H 0011H
	mov	r0,	#02h
	st	r0,	NEAR _chari

;;							charj = 0;
CLINEA 0000H 0001H 023CH 0008H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0001H 023EH 0008H 0024H
	l	r0,	NEAR _I2C_BUFF+02h
	cmp	r0,	#020h
	beq	_$L171
_$L172 :
CBLOCK 140 45 574

;;								chari++;
CLINEA 0000H 0000H 023FH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0240H 0009H 0010H
	lea	OFFSET _charj
	inc	[ea]
CBLOCKEND 140 45 577

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 023EH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L172

;;							}
CLINEA 0000H 0000H 0241H 0008H 0008H
_$L171 :

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0242H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0242H 0001H 000BH
	bal	_$L435

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0242H 0024H 002AH
_$L176 :
CBLOCK 140 46 578

;;								if(chark == 3){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0243H 0009H 0047H
	cmp	r0,	#03h
	bne	_$L180
CBLOCK 140 47 579
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
CLINEA 0000H 0001H 0244H 0009H 004BH
	bal	_$L185
_$L180 :
	cmp	r0,	#02h
	bne	_$L183
CBLOCK 140 48 580
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
CBLOCKEND 140 48 580

;;								else {I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0245H 0009H 003AH
	bal	_$L185
_$L183 :
CBLOCK 140 49 581
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CAdd_temp
CBLOCKEND 140 49 581
_$L185 :

;;								I2CAdd += I2CAdd_temp;
CLINEA 0000H 0001H 0246H 0009H 001EH
	l	r0,	NEAR _I2CAdd
	l	r1,	NEAR _I2CAdd_temp
	add	r0,	r1
	st	r0,	NEAR _I2CAdd
CBLOCKEND 140 46 583
CBLOCKEND 140 47 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0242H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0242H 0001H 000BH
_$L435 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0242H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M57
	b	_$L176
_$M57 :

;;							chari++;
CLINEA 0000H 0000H 0248H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0249H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 024AH 0001H 000BH
	bal	_$L436

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 024AH 0008H 0024H
_$L188 :
CBLOCK 140 50 586

;;								chari++;
CLINEA 0000H 0000H 024BH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 024CH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 50 589

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 024AH 0001H 000BH
_$L436 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 024AH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L188

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 024EH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 024EH 0001H 000BH
	bal	_$L437

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 024EH 0024H 002AH
_$L192 :
CBLOCK 140 51 590

;;								if(chark == 3){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 024FH 0009H 004CH
	cmp	r0,	#03h
	bne	_$L196
CBLOCK 140 52 591
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
CLINEA 0000H 0001H 0250H 0009H 0050H
	bal	_$L201
_$L196 :
	cmp	r0,	#02h
	bne	_$L199
CBLOCK 140 53 592
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
CBLOCKEND 140 53 592

;;								else {I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0251H 0009H 003FH
	bal	_$L201
_$L199 :
CBLOCK 140 54 593
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CNumBytes_temp
CBLOCKEND 140 54 593
_$L201 :

;;								I2CNumBytes += I2CNumBytes_temp;
CLINEA 0000H 0001H 0252H 0009H 0028H
	l	r0,	NEAR _I2CNumBytes
	l	r1,	NEAR _I2CNumBytes_temp
	add	r0,	r1
	st	r0,	NEAR _I2CNumBytes
CBLOCKEND 140 51 595
CBLOCKEND 140 52 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 024EH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 024EH 0001H 000BH
_$L437 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 024EH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M58
	b	_$L192
_$M58 :

;;							chari++;
CLINEA 0000H 0000H 0254H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0255H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0257H 0001H 000BH
	bal	_$L438

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0257H 0008H 0024H
_$L204 :
CBLOCK 140 55 599

;;								chari++;
CLINEA 0000H 0000H 0258H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0259H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 55 602

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0257H 0001H 000BH
_$L438 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0257H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L204

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 025BH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 025BH 0001H 000BH
	bal	_$L439

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 025BH 0024H 002AH
_$L208 :
CBLOCK 140 56 603

;;								if(chark == 3){Data0Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 025CH 0009H 0049H
	cmp	r0,	#03h
	bne	_$L212
CBLOCK 140 57 604
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
CLINEA 0000H 0001H 025DH 0009H 004DH
	bal	_$L217
_$L212 :
	cmp	r0,	#02h
	bne	_$L215
CBLOCK 140 58 605
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
CBLOCKEND 140 58 605

;;								else {Data0Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 025EH 0009H 003CH
	bal	_$L217
_$L215 :
CBLOCK 140 59 606
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data0Str_temp
CBLOCKEND 140 59 606
_$L217 :

;;								Data0Str += Data0Str_temp;
CLINEA 0000H 0001H 025FH 0009H 0022H
	l	r0,	NEAR _Data0Str
	l	r1,	NEAR _Data0Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data0Str
CBLOCKEND 140 56 608
CBLOCKEND 140 57 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 025BH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 025BH 0001H 000BH
_$L439 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 025BH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M59
	b	_$L208
_$M59 :

;;							chari++;
CLINEA 0000H 0000H 0261H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0262H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0264H 0001H 000BH
	bal	_$L440

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0264H 0008H 0024H
_$L220 :
CBLOCK 140 60 612

;;								chari++;
CLINEA 0000H 0000H 0265H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0266H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 60 615

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0264H 0001H 000BH
_$L440 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0264H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L220

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0268H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0268H 0001H 000BH
	bal	_$L441

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0268H 0024H 002AH
_$L224 :
CBLOCK 140 61 616

;;								if(chark == 3){Data1Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0269H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L228
CBLOCK 140 62 617
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
CLINEA 0000H 0001H 026AH 0009H 004DH
	bal	_$L233
_$L228 :
	cmp	r0,	#02h
	bne	_$L231
CBLOCK 140 63 618
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
CBLOCKEND 140 63 618

;;								else {Data1Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 026BH 0009H 003CH
	bal	_$L233
_$L231 :
CBLOCK 140 64 619
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data1Str_temp
CBLOCKEND 140 64 619
_$L233 :

;;								Data1Str += Data1Str_temp;
CLINEA 0000H 0001H 026CH 0009H 0022H
	l	r0,	NEAR _Data1Str
	l	r1,	NEAR _Data1Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data1Str
CBLOCKEND 140 61 621
CBLOCKEND 140 62 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0268H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0268H 0001H 000BH
_$L441 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0268H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M60
	b	_$L224
_$M60 :

;;							chari++;
CLINEA 0000H 0000H 026EH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 026FH 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0271H 0001H 000BH
	bal	_$L442

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0271H 0008H 0024H
_$L236 :
CBLOCK 140 65 625

;;								chari++;
CLINEA 0000H 0000H 0272H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0273H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 65 628

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0271H 0001H 000BH
_$L442 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0271H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L236

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0275H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0275H 0001H 000BH
	bal	_$L443

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0275H 0024H 002AH
_$L240 :
CBLOCK 140 66 629

;;								if(chark == 3){Data2Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0276H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L244
CBLOCK 140 67 630
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
CLINEA 0000H 0001H 0277H 0009H 004DH
	bal	_$L249
_$L244 :
	cmp	r0,	#02h
	bne	_$L247
CBLOCK 140 68 631
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
CBLOCKEND 140 68 631

;;								else {Data2Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0278H 0009H 003CH
	bal	_$L249
_$L247 :
CBLOCK 140 69 632
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data2Str_temp
CBLOCKEND 140 69 632
_$L249 :

;;								Data2Str += Data2Str_temp;
CLINEA 0000H 0001H 0279H 0009H 0022H
	l	r0,	NEAR _Data2Str
	l	r1,	NEAR _Data2Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data2Str
CBLOCKEND 140 66 634
CBLOCKEND 140 67 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0275H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0275H 0001H 000BH
_$L443 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0275H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M61
	b	_$L240
_$M61 :

;;							chari++;
CLINEA 0000H 0000H 027BH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 027CH 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 027EH 0001H 000BH
	bal	_$L444

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 027EH 0008H 0024H
_$L252 :
CBLOCK 140 70 638

;;								chari++;
CLINEA 0000H 0000H 027FH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0280H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 70 641

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 027EH 0001H 000BH
_$L444 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 027EH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L252

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0282H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0282H 0001H 000BH
	bal	_$L445

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0282H 0024H 002AH
_$L256 :
CBLOCK 140 71 642

;;								if(chark == 3){Data3Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0283H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L260
CBLOCK 140 72 643
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
CLINEA 0000H 0001H 0284H 0009H 004DH
	bal	_$L265
_$L260 :
	cmp	r0,	#02h
	bne	_$L263
CBLOCK 140 73 644
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
CBLOCKEND 140 73 644

;;								else {Data3Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0285H 0009H 003CH
	bal	_$L265
_$L263 :
CBLOCK 140 74 645
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data3Str_temp
CBLOCKEND 140 74 645
_$L265 :

;;								Data3Str += Data3Str_temp;
CLINEA 0000H 0001H 0286H 0009H 0022H
	l	r0,	NEAR _Data3Str
	l	r1,	NEAR _Data3Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data3Str
CBLOCKEND 140 71 647
CBLOCKEND 140 72 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0282H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0282H 0001H 000BH
_$L445 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0282H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M62
	b	_$L256
_$M62 :

;;							chari++;
CLINEA 0000H 0000H 0288H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0289H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 028BH 0001H 000BH
	bal	_$L446

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 028BH 0008H 0024H
_$L268 :
CBLOCK 140 75 651

;;								chari++;
CLINEA 0000H 0000H 028CH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 028DH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 75 654

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 028BH 0001H 000BH
_$L446 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 028BH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L268

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 028FH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 028FH 0001H 000BH
	bal	_$L447

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 028FH 0024H 002AH
_$L272 :
CBLOCK 140 76 655

;;								if(chark == 3){Data4Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0290H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L276
CBLOCK 140 77 656
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
CLINEA 0000H 0001H 0291H 0009H 004DH
	bal	_$L281
_$L276 :
	cmp	r0,	#02h
	bne	_$L279
CBLOCK 140 78 657
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
CBLOCKEND 140 78 657

;;								else {Data4Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0292H 0009H 003CH
	bal	_$L281
_$L279 :
CBLOCK 140 79 658
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data4Str_temp
CBLOCKEND 140 79 658
_$L281 :

;;								Data4Str += Data4Str_temp;
CLINEA 0000H 0001H 0293H 0009H 0022H
	l	r0,	NEAR _Data4Str
	l	r1,	NEAR _Data4Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data4Str
CBLOCKEND 140 76 660
CBLOCKEND 140 77 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 028FH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 028FH 0001H 000BH
_$L447 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 028FH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M63
	b	_$L272
_$M63 :

;;							chari++;
CLINEA 0000H 0000H 0295H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0296H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0298H 0001H 000BH
	bal	_$L448

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0298H 0008H 0024H
_$L284 :
CBLOCK 140 80 664

;;								chari++;
CLINEA 0000H 0000H 0299H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 029AH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 80 667

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0298H 0001H 000BH
_$L448 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0298H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L284

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 029CH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 029CH 0001H 000BH
	bal	_$L449

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 029CH 0024H 002AH
_$L288 :
CBLOCK 140 81 668

;;								if(chark == 3){Data5Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 029DH 0009H 0049H
	cmp	r0,	#03h
	bne	_$L292
CBLOCK 140 82 669
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
CLINEA 0000H 0001H 029EH 0009H 004DH
	bal	_$L297
_$L292 :
	cmp	r0,	#02h
	bne	_$L295
CBLOCK 140 83 670
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
CBLOCKEND 140 83 670

;;								else {Data5Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 029FH 0009H 003CH
	bal	_$L297
_$L295 :
CBLOCK 140 84 671
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data5Str_temp
CBLOCKEND 140 84 671
_$L297 :

;;								Data5Str += Data5Str_temp;
CLINEA 0000H 0001H 02A0H 0009H 0022H
	l	r0,	NEAR _Data5Str
	l	r1,	NEAR _Data5Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data5Str
CBLOCKEND 140 81 673
CBLOCKEND 140 82 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 029CH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 029CH 0001H 000BH
_$L449 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 029CH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M64
	b	_$L288
_$M64 :

;;							chari++;
CLINEA 0000H 0000H 02A2H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02A3H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02A5H 0001H 000BH
	bal	_$L450

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02A5H 0008H 0024H
_$L300 :
CBLOCK 140 85 677

;;								chari++;
CLINEA 0000H 0000H 02A6H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02A7H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 85 680

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02A5H 0001H 000BH
_$L450 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02A5H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L300

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02A9H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02A9H 0001H 000BH
	bal	_$L451

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02A9H 0024H 002AH
_$L304 :
CBLOCK 140 86 681

;;								if(chark == 3){Data6Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02AAH 0009H 0049H
	cmp	r0,	#03h
	bne	_$L308
CBLOCK 140 87 682
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
CLINEA 0000H 0001H 02ABH 0009H 004DH
	bal	_$L313
_$L308 :
	cmp	r0,	#02h
	bne	_$L311
CBLOCK 140 88 683
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
CBLOCKEND 140 88 683

;;								else {Data6Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02ACH 0009H 003CH
	bal	_$L313
_$L311 :
CBLOCK 140 89 684
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data6Str_temp
CBLOCKEND 140 89 684
_$L313 :

;;								Data6Str += Data6Str_temp;
CLINEA 0000H 0001H 02ADH 0009H 0022H
	l	r0,	NEAR _Data6Str
	l	r1,	NEAR _Data6Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data6Str
CBLOCKEND 140 86 686
CBLOCKEND 140 87 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02A9H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02A9H 0001H 000BH
_$L451 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02A9H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M65
	b	_$L304
_$M65 :

;;							chari++;
CLINEA 0000H 0000H 02AFH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 02B0H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02B2H 0001H 000BH
	bal	_$L452

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02B2H 0008H 0024H
_$L316 :
CBLOCK 140 90 690

;;								chari++;
CLINEA 0000H 0000H 02B3H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 02B4H 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 90 693

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02B2H 0001H 000BH
_$L452 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 02B2H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L316

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 02B6H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B6H 0001H 000BH
	bal	_$L453

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B6H 0024H 002AH
_$L320 :
CBLOCK 140 91 694

;;								if(chark == 3){Data7Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 02B7H 0009H 0049H
	cmp	r0,	#03h
	bne	_$L324
CBLOCK 140 92 695
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
CLINEA 0000H 0001H 02B8H 0009H 004DH
	bal	_$L329
_$L324 :
	cmp	r0,	#02h
	bne	_$L327
CBLOCK 140 93 696
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
CBLOCKEND 140 93 696

;;								else {Data7Str_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 02B9H 0009H 003CH
	bal	_$L329
_$L327 :
CBLOCK 140 94 697
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _Data7Str_temp
CBLOCKEND 140 94 697
_$L329 :

;;								Data7Str += Data7Str_temp;
CLINEA 0000H 0001H 02BAH 0009H 0022H
	l	r0,	NEAR _Data7Str
	l	r1,	NEAR _Data7Str_temp
	add	r0,	r1
	st	r0,	NEAR _Data7Str
CBLOCKEND 140 91 699
CBLOCKEND 140 92 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B6H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B6H 0001H 000BH
_$L453 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 02B6H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M66
	b	_$L320
_$M66 :

;;							chari++;
CLINEA 0000H 0000H 02BCH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;							
CLINEA 0000H 0001H 02BDH 0008H 0018H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							I2CSendInfo[0] = Data0Str;
CLINEA 0000H 0001H 02C0H 0008H 0021H
	l	r0,	NEAR _Data0Str
	st	r0,	NEAR _I2CSendInfo

;;							I2CSendInfo[1] = Data1Str;
CLINEA 0000H 0001H 02C1H 0008H 0021H
	l	r0,	NEAR _Data1Str
	st	r0,	NEAR _I2CSendInfo+01h

;;							I2CSendInfo[2] = Data2Str;
CLINEA 0000H 0001H 02C2H 0008H 0021H
	l	r0,	NEAR _Data2Str
	st	r0,	NEAR _I2CSendInfo+02h

;;							I2CSendInfo[3] = Data3Str;
CLINEA 0000H 0001H 02C3H 0008H 0021H
	l	r0,	NEAR _Data3Str
	st	r0,	NEAR _I2CSendInfo+03h

;;							I2CSendInfo[4] = Data4Str;
CLINEA 0000H 0001H 02C4H 0008H 0021H
	l	r0,	NEAR _Data4Str
	st	r0,	NEAR _I2CSendInfo+04h

;;							I2CSendInfo[5] = Data5Str;
CLINEA 0000H 0001H 02C5H 0008H 0021H
	l	r0,	NEAR _Data5Str
	st	r0,	NEAR _I2CSendInfo+05h

;;							I2CSendInfo[6] = Data6Str;
CLINEA 0000H 0001H 02C6H 0008H 0021H
	l	r0,	NEAR _Data6Str
	st	r0,	NEAR _I2CSendInfo+06h

;;							I2CSendInfo[7] = Data7Str;
CLINEA 0000H 0001H 02C7H 0008H 0021H
	l	r0,	NEAR _Data7Str
	st	r0,	NEAR _I2CSendInfo+07h

;;							Data0Str = Data1Str = Data2Str = Data3Str = Data4Str = Data5Str = Data6Str = Data7Str = 0;
CLINEA 0000H 0001H 02CAH 0008H 0061H
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
CLINEA 0000H 0001H 02CDH 0008H 003EH
	st	r0,	NEAR __flgI2CFin

;;							i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 02CEH 0008H 0049H
	bl	_i2c_stop

;;							i2c_startSend( I2CAdd, &I2CSendInfo, I2CNumBytes, &I2CSendInfo, 0, (cbfI2c)_funcI2CFin);		//Begin I2C Recieve Command
CLINEA 0000H 0001H 02CFH 0008H 007CH
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
CLINEA 0000H 0000H 02D0H 0001H 000BH
	bal	_$L454

;;							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 02D0H 0008H 0054H
_$L332 :
CBLOCK 140 95 720

;;								NOP1000();
CLINEA 0000H 0001H 02D1H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 02D2H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 140 95 723

;;							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 02D0H 0001H 000BH
_$L454 :

;;							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 02D0H 001BH 0022H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L332

;;							I2CAdd = 0;
CLINEA 0000H 0001H 02D6H 0008H 0012H
	mov	r0,	#00h
	st	r0,	NEAR _I2CAdd

;;							I2CNumBytes = 0;
CLINEA 0000H 0001H 02D7H 0008H 0017H
	st	r0,	NEAR _I2CNumBytes

;;							chari = 0;
CLINEA 0000H 0001H 02D8H 0008H 0011H
	st	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 02D9H 0008H 002AH
_$L336 :
CBLOCK 140 96 729

;;								I2CSendInfo[chari] = 0;
CLINEA 0000H 0001H 02DAH 0009H 001FH
	mov	r1,	#00h
	mov	r2,	#00h
	st	r2,	NEAR _I2CSendInfo[er0]
CBLOCKEND 140 96 731

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 02D9H 0008H 002AH
	lea	OFFSET _chari
	inc	[ea]
	l	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 02D9H 001BH 0022H
	cmp	r0,	#08h
	blt	_$L336

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 02DEH 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 02DFH 0008H 0013H
	bl	_uart_stop

;;							uart_startSend(I2C_TX_REC, 21, _funcUartFin);
CLINEA 0000H 0001H 02E0H 0008H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#21
	mov	r0,	#BYTE1 OFFSET _I2C_TX_REC
	mov	r1,	#BYTE2 OFFSET _I2C_TX_REC
	bl	_uart_startSend
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02E1H 0001H 000BH
	bal	_$L455

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02E1H 0008H 001FH
_$L342 :
CBLOCK 140 97 737

;;								NOP1000();
CLINEA 0000H 0001H 02E2H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 02E3H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 140 97 740

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02E1H 0001H 000BH
_$L455 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02E1H 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L342

;;							}
CLINEA 0000H 0000H 02E4H 0008H 0008H
_$L341 :
CBLOCKEND 140 43 741
CBLOCKEND 140 42 742
CBLOCKEND 140 41 743
CBLOCKEND 140 40 744
CBLOCKEND 140 39 745

;;		if(RecWorld[0] == 0x49){			//if RECWORLD == "I2CRX"
CLINEA 0000H 0001H 02EDH 0003H 0035H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#049h
	beq	_$M67
	b	_$L12
_$M67 :
CBLOCK 140 98 749

;;			if(RecWorld[1] == 0x32){
CLINEA 0000H 0001H 02EEH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#032h
	beq	_$M68
	b	_$L12
_$M68 :
CBLOCK 140 99 750

;;				if(RecWorld[2] == 0x43){
CLINEA 0000H 0001H 02EFH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#043h
	beq	_$M69
	b	_$L12
_$M69 :
CBLOCK 140 100 751

;;					if(RecWorld[3] == 0x52){
CLINEA 0000H 0001H 02F0H 0006H 001DH
	l	r0,	NEAR _RecWorld+03h
	cmp	r0,	#052h
	beq	_$M70
	b	_$L12
_$M70 :
CBLOCK 140 101 752

;;						if(RecWorld[4] == 0x58){
CLINEA 0000H 0001H 02F1H 0007H 001EH
	l	r0,	NEAR _RecWorld+04h
	cmp	r0,	#058h
	beq	_$M71
	b	_$L12
_$M71 :
CBLOCK 140 102 753

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 02F4H 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 02F5H 0008H 0013H
	bl	_uart_stop

;;							uart_startReceive(I2C_BUFF, 46, _funcUartFin);
CLINEA 0000H 0001H 02F6H 0008H 0035H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#46
	mov	r0,	#BYTE1 OFFSET _I2C_BUFF
	mov	r1,	#BYTE2 OFFSET _I2C_BUFF
	bl	_uart_startReceive
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F7H 0001H 000BH
	bal	_$L456

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F7H 0008H 001FH
_$L356 :
CBLOCK 140 103 759

;;								NOP1000();
CLINEA 0000H 0001H 02F8H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 02F9H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 140 103 762

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F7H 0001H 000BH
_$L456 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F7H 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L356

;;							chari = 2;
CLINEA 0000H 0001H 02FDH 0008H 0011H
	mov	r0,	#02h
	st	r0,	NEAR _chari

;;							charj = 0;
CLINEA 0000H 0001H 02FEH 0008H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0001H 0300H 0008H 0024H
	l	r0,	NEAR _I2C_BUFF+02h
	cmp	r0,	#020h
	beq	_$L359
_$L360 :
CBLOCK 140 104 768

;;								chari++;
CLINEA 0000H 0000H 0301H 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 0302H 0009H 0010H
	lea	OFFSET _charj
	inc	[ea]
CBLOCKEND 140 104 771

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0300H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L360

;;							}
CLINEA 0000H 0000H 0303H 0008H 0008H
_$L359 :

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0304H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0304H 0001H 000BH
	bal	_$L457

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0304H 0024H 002AH
_$L364 :
CBLOCK 140 105 772

;;								if(chark == 3){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0305H 0009H 0047H
	cmp	r0,	#03h
	bne	_$L368
CBLOCK 140 106 773
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
CLINEA 0000H 0001H 0306H 0009H 004BH
	bal	_$L373
_$L368 :
	cmp	r0,	#02h
	bne	_$L371
CBLOCK 140 107 774
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
CBLOCKEND 140 107 774

;;								else {I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0307H 0009H 003AH
	bal	_$L373
_$L371 :
CBLOCK 140 108 775
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CAdd_temp
CBLOCKEND 140 108 775
_$L373 :

;;								I2CAdd += I2CAdd_temp;
CLINEA 0000H 0001H 0308H 0009H 001EH
	l	r0,	NEAR _I2CAdd
	l	r1,	NEAR _I2CAdd_temp
	add	r0,	r1
	st	r0,	NEAR _I2CAdd
CBLOCKEND 140 105 777
CBLOCKEND 140 106 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0304H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0304H 0001H 000BH
_$L457 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0304H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M72
	b	_$L364
_$M72 :

;;							chari++;
CLINEA 0000H 0000H 030AH 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 030BH 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030CH 0001H 000BH
	bal	_$L458

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030CH 0008H 0024H
_$L376 :
CBLOCK 140 109 780

;;								chari++;
CLINEA 0000H 0000H 030DH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 030EH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 109 783

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030CH 0001H 000BH
_$L458 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 030CH 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L376

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 0310H 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0310H 0001H 000BH
	bal	_$L459

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0310H 0024H 002AH
_$L380 :
CBLOCK 140 110 784

;;								if(chark == 3){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 0311H 0009H 004CH
	cmp	r0,	#03h
	bne	_$L384
CBLOCK 140 111 785
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
CLINEA 0000H 0001H 0312H 0009H 0050H
	bal	_$L389
_$L384 :
	cmp	r0,	#02h
	bne	_$L387
CBLOCK 140 112 786
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
CBLOCKEND 140 112 786

;;								else {I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0313H 0009H 003FH
	bal	_$L389
_$L387 :
CBLOCK 140 113 787
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _I2CNumBytes_temp
CBLOCKEND 140 113 787
_$L389 :

;;								I2CNumBytes += I2CNumBytes_temp;
CLINEA 0000H 0001H 0314H 0009H 0028H
	l	r0,	NEAR _I2CNumBytes
	l	r1,	NEAR _I2CNumBytes_temp
	add	r0,	r1
	st	r0,	NEAR _I2CNumBytes
CBLOCKEND 140 110 789
CBLOCKEND 140 111 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0310H 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0310H 0001H 000BH
_$L459 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 0310H 001BH 0022H
	cmp	r0,	#00h
	ble	_$M73
	b	_$L380
_$M73 :

;;							chari++;
CLINEA 0000H 0000H 0316H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0317H 0008H 0011H
	mov	r0,	#00h

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0319H 0001H 000BH
	bal	_$L460

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0319H 0008H 0024H
_$L392 :
CBLOCK 140 114 793

;;								chari++;
CLINEA 0000H 0000H 031AH 0009H 0010H
	lea	OFFSET _chari
	inc	[ea]

;;								charj++;
CLINEA 0000H 0000H 031BH 0009H 0010H
	l	r0,	NEAR _charj
	add	r0,	#01h
CBLOCKEND 140 114 796

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0319H 0001H 000BH
_$L460 :
	st	r0,	NEAR _charj

;;							while(I2C_BUFF[chari]!=0x20){
CLINEA 0000H 0000H 0319H 001BH 0022H
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r0,	NEAR _I2C_BUFF[er0]
	cmp	r0,	#020h
	bne	_$L392

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0001H 031DH 000CH 0019H
	l	r0,	NEAR _charj

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031DH 0001H 000BH
	bal	_$L461

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031DH 0024H 002AH
_$L396 :
CBLOCK 140 115 797

;;								if(chark == 3){RegAddr_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
CLINEA 0000H 0001H 031EH 0009H 0048H
	cmp	r0,	#03h
	bne	_$L400
CBLOCK 140 116 798
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
CLINEA 0000H 0001H 031FH 0009H 004CH
	bal	_$L405
_$L400 :
	cmp	r0,	#02h
	bne	_$L403
CBLOCK 140 117 799
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
CBLOCKEND 140 117 799

;;								else {RegAddr_temp = (I2C_BUFF[chari-chark]-0x30);}
CLINEA 0000H 0001H 0320H 0009H 003BH
	bal	_$L405
_$L403 :
CBLOCK 140 118 800
	l	r0,	NEAR _chari
	mov	r1,	#00h
	l	r2,	NEAR _chark
	mov	r3,	#00h
	sub	r0,	r2
	subc	r1,	r3
	l	r0,	NEAR _I2C_BUFF[er0]
	add	r0,	#0d0h
	st	r0,	NEAR _RegAddr_temp
CBLOCKEND 140 118 800
_$L405 :

;;								RegAddr += RegAddr_temp;
CLINEA 0000H 0001H 0321H 0009H 0020H
	l	r0,	NEAR _RegAddr
	l	r1,	NEAR _RegAddr_temp
	add	r0,	r1
	st	r0,	NEAR _RegAddr
CBLOCKEND 140 115 802
CBLOCKEND 140 116 860

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031DH 0024H 002AH
	mov	r0,	r2
	add	r0,	#0ffh

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031DH 0001H 000BH
_$L461 :
	st	r0,	NEAR _chark

;;							for(chark = charj; chark>0; chark--){
CLINEA 0000H 0000H 031DH 001BH 0022H
	cmp	r0,	#00h
	ble	_$M74
	b	_$L396
_$M74 :

;;							chari++;
CLINEA 0000H 0000H 0323H 0008H 000FH
	lea	OFFSET _chari
	inc	[ea]

;;							charj = 0;
CLINEA 0000H 0001H 0324H 0008H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _charj

;;							_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0327H 0008H 0041H
	st	r0,	NEAR __flgI2CFin

;;							i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0328H 0008H 004CH
	bl	_i2c_stop

;;							i2c_startReceive(I2CAdd, &RegAddr, 1, &I2CReceInfo, I2CNumBytes, (cbfI2c)_funcI2CFin);	//Begin I2C Recieve Command
CLINEA 0000H 0001H 0329H 0008H 0079H
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
CLINEA 0000H 0000H 032AH 0001H 000BH
	bal	_$L462

;;							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 032AH 0008H 0057H
_$L408 :
CBLOCK 140 119 810

;;								NOP1000();
CLINEA 0000H 0001H 032BH 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 032CH 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 140 119 813

;;							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 032AH 0001H 000BH
_$L462 :

;;							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 032AH 001BH 0022H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L408

;;							I2C_RX_Data[6] = I2CReceInfo[0];
CLINEA 0000H 0001H 0333H 0008H 0027H
	l	r0,	NEAR _I2CReceInfo
	st	r0,	NEAR _I2C_RX_Data+06h

;;							I2C_RX_Data[8] = I2CReceInfo[1];
CLINEA 0000H 0001H 0334H 0008H 0027H
	l	r0,	NEAR _I2CReceInfo+01h
	st	r0,	NEAR _I2C_RX_Data+08h

;;							I2C_RX_Data[10] = I2CReceInfo[2];
CLINEA 0000H 0001H 0335H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+02h
	st	r0,	NEAR _I2C_RX_Data+0ah

;;							I2C_RX_Data[12] = I2CReceInfo[3];
CLINEA 0000H 0001H 0336H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+03h
	st	r0,	NEAR _I2C_RX_Data+0ch

;;							I2C_RX_Data[14] = I2CReceInfo[4];
CLINEA 0000H 0001H 0337H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+04h
	st	r0,	NEAR _I2C_RX_Data+0eh

;;							I2C_RX_Data[16] = I2CReceInfo[5];
CLINEA 0000H 0001H 0338H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+05h
	st	r0,	NEAR _I2C_RX_Data+010h

;;							I2C_RX_Data[18] = I2CReceInfo[6];
CLINEA 0000H 0001H 0339H 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+06h
	st	r0,	NEAR _I2C_RX_Data+012h

;;							I2C_RX_Data[20] = I2CReceInfo[7];
CLINEA 0000H 0001H 033AH 0008H 0028H
	l	r0,	NEAR _I2CReceInfo+07h
	st	r0,	NEAR _I2C_RX_Data+014h

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 033CH 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 033DH 0008H 0013H
	bl	_uart_stop

;;							uart_startSend(I2C_RX_Data, 23, _funcUartFin);
CLINEA 0000H 0001H 033EH 0008H 0035H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#23
	mov	r0,	#BYTE1 OFFSET _I2C_RX_Data
	mov	r1,	#BYTE2 OFFSET _I2C_RX_Data
	bl	_uart_startSend
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 033FH 0001H 000BH
	bal	_$L463

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 033FH 0008H 001FH
_$L412 :
CBLOCK 140 120 831

;;								NOP1000();
CLINEA 0000H 0001H 0340H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 0341H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 140 120 834

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 033FH 0001H 000BH
_$L463 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 033FH 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L412

;;							I2CAdd = 0;
CLINEA 0000H 0001H 0345H 0008H 0012H
	mov	r0,	#00h
	st	r0,	NEAR _I2CAdd

;;							I2CNumBytes = 0;
CLINEA 0000H 0001H 0346H 0008H 0017H
	st	r0,	NEAR _I2CNumBytes

;;							RegAddr = 0;
CLINEA 0000H 0001H 0347H 0008H 0013H
	st	r0,	NEAR _RegAddr

;;							chari = 0;
CLINEA 0000H 0001H 0348H 0008H 0011H
	st	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 0349H 0008H 002AH
_$L416 :
CBLOCK 140 121 841

;;								I2CReceInfo[chari] = 0;
CLINEA 0000H 0001H 034AH 0009H 001FH
	mov	r1,	#00h
	mov	r2,	#00h
	st	r2,	NEAR _I2CReceInfo[er0]
CBLOCKEND 140 121 843

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 0349H 0008H 002AH
	lea	OFFSET _chari
	inc	[ea]
	l	r0,	NEAR _chari

;;							for(chari = 0; chari < 8; chari++){
CLINEA 0000H 0000H 0349H 001BH 0022H
	cmp	r0,	#08h
	blt	_$L416

;;							_flgUartFin = 0;
CLINEA 0000H 0001H 034EH 0008H 0017H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;							uart_stop();
CLINEA 0000H 0001H 034FH 0008H 0013H
	bl	_uart_stop

;;							uart_startSend(I2C_RX_REC, 21, _funcUartFin);
CLINEA 0000H 0001H 0350H 0008H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#21
	mov	r0,	#BYTE1 OFFSET _I2C_RX_REC
	mov	r1,	#BYTE2 OFFSET _I2C_RX_REC
	bl	_uart_startSend
	add	sp,	#2 

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0351H 0001H 000BH
	bal	_$L464

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0351H 0008H 001FH
_$L422 :
CBLOCK 140 122 849

;;								NOP1000();
CLINEA 0000H 0001H 0352H 0009H 0012H
	bl	_NOP1000

;;								main_clrWDT();
CLINEA 0000H 0001H 0353H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 140 122 852

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0351H 0001H 000BH
_$L464 :

;;							while(_flgUartFin != 1){
CLINEA 0000H 0000H 0351H 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L422

;;							}
CLINEA 0000H 0000H 0354H 0008H 0008H
CBLOCKEND 140 102 853
CBLOCKEND 140 101 854
CBLOCKEND 140 100 855
CBLOCKEND 140 99 856
CBLOCKEND 140 98 857

;;goto RX_Loop;
CLINEA 0000H 0001H 035AH 0001H 000DH
	b	_$L12
CBLOCKEND 140 2 860

;;}//end main
CLINEA 0000H 0001H 035CH 0001H 000BH
CBLOCKEND 140 1 860
CFUNCTIONEND 140


	rseg $$main_clrWDT$main
CFUNCTION 124

_main_clrWDT	:
CBLOCK 124 1 886

;;{
CLINEA 0000H 0001H 0376H 0001H 0001H
CBLOCK 124 2 886

;;	do {
CLINEA 0000H 0001H 0377H 0002H 0005H
_$L468 :
CBLOCK 124 3 887

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 0378H 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 124 3 889

;;	} while (WDP != 1);
CLINEA 0000H 0000H 0379H 0002H 0014H
	tb	0f00eh.0
	beq	_$L468

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 037AH 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 124 2 891

;;}
CLINEA 0000H 0001H 037BH 0001H 0001H
	rt
CBLOCKEND 124 1 891
CFUNCTIONEND 124


	rseg $$NOP1000$main
CFUNCTION 139

_NOP1000	:
CBLOCK 139 1 901

;;{
CLINEA 0000H 0001H 0385H 0001H 0001H
CBLOCK 139 2 901
CLOCAL 4AH 0002H 0000H 0002H "ONCNT" 02H 00H 01H
CBLOCKEND 139 2 908

;;}
CLINEA 0000H 0001H 038CH 0001H 0001H
	rt
CBLOCKEND 139 1 908
CFUNCTIONEND 139


	rseg $$Initialization$main
CFUNCTION 125

_Initialization	:
CBLOCK 125 1 915

;;{
CLINEA 0000H 0001H 0393H 0001H 0001H
	push	lr
CBLOCK 125 2 915
CRET 0000H

;;	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 0397H 0002H 0045H
	sb	0f02ah.0

;;	DUA0	= 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 0398H 0002H 0041H
	rb	0f02ah.2

;;	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 0399H 0002H 0032H
	sb	0f02ah.3

;;	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 039AH 0002H 0045H
	sb	0f02ah.6

;;	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 039BH 0002H 0047H
	rb	0f02ah.7

;;	BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 039DH 0002H 0026H
	mov	r0,	#00h
	st	r0,	0f02ch

;;	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 039EH 0002H 0052H
	st	r0,	0f02eh

;;	BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 039FH 0002H 0058H
	st	r0,	0f02fh

;;	PortA_Low();	//Initialize all 3 Ports of Q111 Port A to GPIO-Low
CLINEA 0000H 0001H 03A3H 0002H 0041H
	bl	_PortA_Low

;;	PortB_Low();	//Initialize all 8 Ports of Q111 Port B to GPIO-Low
CLINEA 0000H 0001H 03A4H 0002H 0041H
	bl	_PortB_Low

;;	PortC_Low();	//Initialize all 4 Ports of Q111 Port C to GPIO-Low
CLINEA 0000H 0001H 03A5H 0002H 0041H
	bl	_PortC_Low

;;	SetOSC(); //8MHz
CLINEA 0000H 0001H 03A8H 0002H 0011H
	bl	_SetOSC

;;	TM8D    = 0;	//Timer 8 DATA Register
CLINEA 0000H 0001H 03BAH 0002H 0025H
	mov	r0,	#00h
	st	r0,	0f8e0h

;;	TM8C    = 0;	//Timer 8 CLOCK Register
CLINEA 0000H 0001H 03BDH 0002H 0026H
	st	r0,	0f8e1h

;;	T8C1 = 0;	// 01 = HTBCLK  
CLINEA 0000H 0001H 03C2H 0002H 001BH
	rb	0f8e1h.1

;;	T8C0 = 1;
CLINEA 0000H 0001H 03C3H 0002H 000AH
	sb	0f8e1h.0

;;	T89M16 = 0;	// 0=8-Bit Mode; 1=16bit Mode...
CLINEA 0000H 0001H 03C5H 0002H 002DH
	rb	0f8e2h.5

;;	T8OST = 0;	// 0=Normal; 1=One-Shot...
CLINEA 0000H 0001H 03C7H 0002H 0026H
	rb	0f8e2h.7

;;	T8RUN = 0;	//0=STOP; 1=START...
CLINEA 0000H 0001H 03CAH 0002H 0020H
	rb	0f8e3h.0

;;	irq_di(); 	//Disable Interrupts...
CLINEA 0000H 0001H 03CFH 0002H 0023H
	bl	_irq_di

;;	irq_init();	//Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 03D0H 0002H 003EH
	bl	_irq_init

;;	IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0; // 0=DISABLED; 1=ENABLED
CLINEA 0000H 0001H 03DBH 0002H 004CH
	mov	r0,	#00h
	st	r0,	0f017h
	st	r0,	0f016h
	st	r0,	0f015h
	st	r0,	0f014h
	st	r0,	0f013h
	st	r0,	0f012h
	st	r0,	0f011h
	st	r0,	0f010h

;;	IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;	//Clear all Requests...
CLINEA 0000H 0001H 03E6H 0002H 0053H
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;	E2H = 0; 	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 03E7H 0002H 0046H
	rb	0f017h.3

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 03E9H 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0bh
	bl	_irq_setHdr

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_I2C0INT, _intI2c );
CLINEA 0000H 0001H 03EAH 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#08h
	bl	_irq_setHdr

;;	EI2CM = 1;
CLINEA 0000H 0001H 03ECH 0002H 000BH
	sb	0f012h.7

;;	QI2CM = 1;
CLINEA 0000H 0001H 03EDH 0002H 000BH
	sb	0f01ah.7

;;	EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 03EEH 0002H 0049H
	sb	0f014h.0

;;	irq_ei();	// Enable Interrupts...
CLINEA 0000H 0001H 03F0H 0002H 0022H
	bl	_irq_ei

;;	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 03F5H 0002H 0029H
	mov	r0,	#03h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03F6H 0002H 001DH
	bl	_main_clrWDT

;;	HelloWorld[12] 	= 0x0D;
CLINEA 0000H 0001H 03F9H 0002H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0ch

;;	HelloWorld[13] 	= 0x0A;
CLINEA 0000H 0001H 03FAH 0002H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _HelloWorld+0dh

;;	InputStatus[21] 	= 0x0D;
CLINEA 0000H 0001H 03FBH 0002H 0019H
	mov	r0,	#0dh
	st	r0,	NEAR _InputStatus+015h

;;	InputStatus[22] 	= 0x0A;
CLINEA 0000H 0001H 03FCH 0002H 0019H
	mov	r0,	#0ah
	st	r0,	NEAR _InputStatus+016h

;;	InputRec[12] 	= 0x0D;
CLINEA 0000H 0001H 03FDH 0002H 0016H
	mov	r0,	#0dh
	st	r0,	NEAR _InputRec+0ch

;;	InputRec[13] 	= 0x0A;
CLINEA 0000H 0001H 03FEH 0002H 0016H
	mov	r0,	#0ah
	st	r0,	NEAR _InputRec+0dh

;;	OutputRec[21] 	= 0x0D;
CLINEA 0000H 0001H 03FFH 0002H 0017H
	mov	r0,	#0dh
	st	r0,	NEAR _OutputRec+015h

;;	OutputRec[22] 	= 0x0A;
CLINEA 0000H 0001H 0400H 0002H 0017H
	mov	r0,	#0ah
	st	r0,	NEAR _OutputRec+016h

;;	AckMCUConn[20] 	= 0x0D;
CLINEA 0000H 0001H 0401H 0002H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _AckMCUConn+014h

;;	AckMCUConn[21] 	= 0x0A;
CLINEA 0000H 0001H 0402H 0002H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _AckMCUConn+015h

;;	NackMCUConn[60] = 0x0D;
CLINEA 0000H 0001H 0403H 0002H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _NackMCUConn+03ch

;;	NackMCUConn[61] = 0x0A;
CLINEA 0000H 0001H 0404H 0002H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _NackMCUConn+03dh

;;	ListFWRev[20] = 0x0D;
CLINEA 0000H 0001H 0405H 0002H 0016H
	mov	r0,	#0dh
	st	r0,	NEAR _ListFWRev+014h

;;	ListFWRev[21] = 0x0A;
CLINEA 0000H 0001H 0406H 0002H 0016H
	mov	r0,	#0ah
	st	r0,	NEAR _ListFWRev+015h

;;	I2C_TX_REC[19] = 0x0D;
CLINEA 0000H 0001H 0407H 0002H 0017H
	mov	r0,	#0dh
	st	r0,	NEAR _I2C_TX_REC+013h

;;	I2C_TX_REC[20] = 0x0A;
CLINEA 0000H 0001H 0408H 0002H 0017H
	mov	r0,	#0ah
	st	r0,	NEAR _I2C_TX_REC+014h

;;	I2C_RX_REC[19] = 0x0D;
CLINEA 0000H 0001H 0409H 0002H 0017H
	mov	r0,	#0dh
	st	r0,	NEAR _I2C_RX_REC+013h

;;	I2C_RX_REC[20] = 0x0A;
CLINEA 0000H 0001H 040AH 0002H 0017H
	mov	r0,	#0ah
	st	r0,	NEAR _I2C_RX_REC+014h

;;	I2C_RX_Data[21] = 0x0D;
CLINEA 0000H 0001H 040BH 0002H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _I2C_RX_Data+015h

;;	I2C_RX_Data[22] = 0x0A;
CLINEA 0000H 0001H 040CH 0002H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _I2C_RX_Data+016h

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
CLINEA 0000H 0001H 0413H 0002H 0045H
	mov	r0,	#00h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#01h
	bl	_i2c_init
	add	sp,	#2 

;;			     &_uartSetParam );						/* Param... 	 */
CLINEA 0000H 0001H 0418H 0009H 002FH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;	uart_PortSet();
CLINEA 0000H 0001H 0419H 0002H 0010H
	bl	_uart_PortSet

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 041AH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 041BH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(HelloWorld, 14, _funcUartFin); // Send, "Hello World!"
CLINEA 0000H 0001H 041DH 0002H 0046H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#14
	mov	r0,	#BYTE1 OFFSET _HelloWorld
	mov	r1,	#BYTE2 OFFSET _HelloWorld
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 041EH 0001H 0015H
	bal	_$L481

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 041EH 0002H 0019H
_$L479 :
CBLOCK 125 3 1054

;;		NOP1000();
CLINEA 0000H 0001H 041FH 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 0420H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 125 3 1057

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 041EH 0001H 0015H
_$L481 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 041EH 001BH 0022H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L479
CBLOCKEND 125 2 1058

;;}//End Initialization
CLINEA 0000H 0001H 0422H 0001H 0015H
	pop	pc
CBLOCKEND 125 1 1058
CFUNCTIONEND 125


	rseg $$_funcUartFin$main
CFUNCTION 133

__funcUartFin	:
CBLOCK 133 1 1070

;;{
CLINEA 0000H 0001H 042EH 0001H 0001H
	push	lr
CBLOCK 133 2 1070
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 042FH 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0430H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 0431H 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 133 2 1074

;;}
CLINEA 0000H 0001H 0432H 0001H 0001H
	pop	pc
CBLOCKEND 133 1 1074
CFUNCTIONEND 133


	rseg $$_funcI2CFin$main
CFUNCTION 134

__funcI2CFin	:
CBLOCK 134 1 1085

;;{
CLINEA 0000H 0001H 043DH 0001H 0001H
	push	lr
CBLOCK 134 2 1085
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 043EH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 043FH 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 0440H 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 134 2 1089

;;}
CLINEA 0000H 0001H 0441H 0001H 0001H
	pop	pc
CBLOCKEND 134 1 1089
CFUNCTIONEND 134


	rseg $$_intI2c$main
CFUNCTION 138

__intI2c	:
CBLOCK 138 1 1099

;;{
CLINEA 0000H 0001H 044BH 0001H 0001H
	push	lr
CBLOCK 138 2 1099
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 044CH 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 044DH 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 138 2 1102

;;}
CLINEA 0000H 0001H 044EH 0001H 0001H
	pop	pc
CBLOCKEND 138 1 1102
CFUNCTIONEND 138


	rseg $$checkI2C$main
CFUNCTION 135

_checkI2C	:
CBLOCK 135 1 1112

;;{
CLINEA 0000H 0001H 0458H 0001H 0001H
	push	lr
CBLOCK 135 2 1112
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	while (ret != 1) {
CLINEA 0000H 0000H 045DH 0002H 0013H
_$L488 :
CBLOCK 135 3 1117

;;		ret = i2c_continue();
CLINEA 0000H 0000H 045EH 0003H 0017H
	bl	_i2c_continue
CBLOCK 135 4 1119
CBLOCKEND 135 4 1121
CBLOCKEND 135 3 1122

;;	while (ret != 1) {
CLINEA 0000H 0000H 045DH 001BH 0022H
	cmp	r0,	#01h
	cmpc	r1,	#00h
	bne	_$L488
CBLOCKEND 135 2 1123

;;}
CLINEA 0000H 0001H 0463H 0001H 0001H
	pop	pc
CBLOCKEND 135 1 1123
CFUNCTIONEND 135


	rseg $$main_reqNotHalt$main
CFUNCTION 136

_main_reqNotHalt	:
CBLOCK 136 1 1133

;;{
CLINEA 0000H 0001H 046DH 0001H 0001H
CBLOCK 136 2 1133

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 046EH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 136 2 1135

;;}
CLINEA 0000H 0001H 046FH 0001H 0001H
	rt
CBLOCKEND 136 1 1135
CFUNCTIONEND 136


	rseg $$_intUart$main
CFUNCTION 137

__intUart	:
CBLOCK 137 1 1145

;;{
CLINEA 0000H 0001H 0479H 0001H 0001H
CBLOCK 137 2 1145

;;		uart_continue(); //in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 047AH 0003H 0047H
	b	_uart_continue
CBLOCKEND 137 2 1147
CLINEA 0000H 0001H 047BH 0001H 0001H
CBLOCKEND 137 1 1147
CFUNCTIONEND 137


	rseg $$SetOSC$main
CFUNCTION 126

_SetOSC	:
CBLOCK 126 1 1152

;;static void SetOSC(void){
CLINEA 0000H 0001H 0480H 0001H 0019H
CBLOCK 126 2 1152

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0489H 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 048AH 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 048CH 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 048DH 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 048FH 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 0490H 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 0492H 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 0494H 0002H 0017H
	ei
CBLOCKEND 126 2 1174

;;}
CLINEA 0000H 0001H 0496H 0001H 0001H
	rt
CBLOCKEND 126 1 1174
CFUNCTIONEND 126


	rseg $$analog_comparator$main
CFUNCTION 127

_analog_comparator	:
CBLOCK 127 1 1181

;;void analog_comparator(void){
CLINEA 0000H 0001H 049DH 0001H 001DH
CBLOCK 127 2 1181

;;	CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 04B3H 0002H 0025H
	sb	0f950h.0

;;	CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 04B4H 0002H 0023H
	rb	0f951h.1

;;	CMP0E0  = 0x00;
CLINEA 0000H 0001H 04B5H 0002H 0010H
	rb	0f951h.0

;;	CMP0SM1 = 0x00; 	// Detect without Sampling... 
CLINEA 0000H 0001H 04B6H 0002H 0030H
	rb	0f951h.3

;;	CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 04B7H 0002H 002DH
	sb	0f951h.4

;;	CMP0EN  = 0x00;
CLINEA 0000H 0001H 04BAH 0002H 0010H
	rb	0f950h.0
CBLOCKEND 127 2 1213

;;}
CLINEA 0000H 0001H 04BDH 0001H 0001H
	rt
CBLOCKEND 127 1 1213
CFUNCTIONEND 127


	rseg $$PortA_Low$main
CFUNCTION 128

_PortA_Low	:
CBLOCK 128 1 1221

;;void PortA_Low(void){
CLINEA 0000H 0001H 04C5H 0001H 0015H
CBLOCK 128 2 1221

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 04CFH 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 04D0H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 04D1H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 04D4H 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 04D5H 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 04D6H 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 04D7H 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 04D8H 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 04D9H 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 04DCH 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 04DDH 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 04DEH 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 04DFH 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 04E0H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 04E1H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 04E4H 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 04E5H 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 04E6H 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 04E8H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 128 2 1258
CLINEA 0000H 0001H 04EAH 0001H 0001H
CBLOCKEND 128 1 1258
CFUNCTIONEND 128


	rseg $$PortB_Low$main
CFUNCTION 129

_PortB_Low	:
CBLOCK 129 1 1264

;;void PortB_Low(void){
CLINEA 0000H 0001H 04F0H 0001H 0015H
CBLOCK 129 2 1264

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 04FAH 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 04FBH 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 04FCH 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 04FDH 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 04FEH 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 04FFH 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0500H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0501H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0504H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0505H 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0506H 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 0507H 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0508H 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 0509H 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 050AH 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 050BH 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 050CH 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 050DH 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 050EH 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 050FH 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0510H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0511H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0512H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 0513H 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0516H 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 0517H 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0518H 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 0519H 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 051AH 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 051BH 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 051CH 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 051DH 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 051EH 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 051FH 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0520H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 0521H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0522H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 0523H 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0524H 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 0525H 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 0528H 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 0529H 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 052AH 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 052BH 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 052CH 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 052DH 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 052EH 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 052FH 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0531H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 129 2 1331
CLINEA 0000H 0001H 0533H 0001H 0001H
CBLOCKEND 129 1 1331
CFUNCTIONEND 129


	rseg $$PortC_Low$main
CFUNCTION 130

_PortC_Low	:
CBLOCK 130 1 1337

;;void PortC_Low(void){
CLINEA 0000H 0001H 0539H 0001H 0015H
CBLOCK 130 2 1337

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 0543H 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 0544H 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 0545H 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 0546H 0002H 0031H
	rb	0f261h.3

;;	PC0C1  = 1;		// PortC Bit0 set to CMOS Output...
CLINEA 0000H 0001H 054AH 0002H 0031H
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 054BH 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to CMOS Output...
CLINEA 0000H 0001H 054CH 0002H 0031H
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 054DH 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to CMOS Output...
CLINEA 0000H 0001H 054EH 0002H 0031H
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 054FH 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0550H 0002H 0031H
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 0551H 0002H 000EH
	sb	0f262h.3

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0554H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 0555H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0556H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 0557H 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0558H 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 0559H 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 055AH 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 055BH 0002H 000EH
	rb	0f264h.3

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 055EH 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 055FH 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 0560H 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 0561H 0002H 0021H
	rb	0f260h.3

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0563H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 130 2 1381
CLINEA 0000H 0001H 0565H 0001H 0001H
CBLOCKEND 130 1 1381
CFUNCTIONEND 130


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 131

_PortA_Digital_Inputs	:
CBLOCK 131 1 1387

;;void PortA_Digital_Inputs(void){
CLINEA 0000H 0001H 056BH 0001H 0020H
CBLOCK 131 2 1387

;;	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 0575H 0002H 0030H
	sb	0f251h.0

;;	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 0576H 0002H 0030H
	sb	0f251h.1

;;	PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 0577H 0002H 0030H
	sb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 057BH 0002H 0041H
	sb	0f253h.0

;;	PA0C0  = 0;		
CLINEA 0000H 0001H 057CH 0002H 000EH
	rb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 057DH 0002H 0041H
	sb	0f253h.1

;;	PA1C0  = 0;	
CLINEA 0000H 0001H 057EH 0002H 000DH
	rb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 057FH 0002H 0041H
	sb	0f253h.2

;;	PA2C0  = 0;	
CLINEA 0000H 0001H 0580H 0002H 000DH
	rb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 0583H 0002H 0039H
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0584H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 0585H 0002H 0039H
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0586H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 0587H 0002H 0039H
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0588H 0002H 000EH
	rb	0f254h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 058AH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 131 2 1420
CLINEA 0000H 0001H 058CH 0001H 0001H
CBLOCKEND 131 1 1420
CFUNCTIONEND 131


	rseg $$PinB0_PWM$main
CFUNCTION 132

_PinB0_PWM	:
CBLOCK 132 1 1428

;;void PinB0_PWM(void){
CLINEA 0000H 0001H 0594H 0001H 0015H
CBLOCK 132 2 1428

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 05A0H 0002H 0031H
	rb	0f259h.0

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 05A3H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 05A4H 0002H 000EH
	sb	0f25ah.0

;;	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 05A7H 0002H 0036H
	rb	0f25dh.0

;;	PB0MD0  = 1;	
CLINEA 0000H 0001H 05A8H 0002H 000EH
	sb	0f25ch.0

;;	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 05ACH 0002H 0023H
	rb	0f916h.1

;;	PCCS0 = 1;
CLINEA 0000H 0001H 05ADH 0002H 000BH
	sb	0f916h.0

;;	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 05B0H 0002H 007EH
	mov	r0,	#09ah
	mov	r1,	#010h
	st	er0,	0f910h

;;	PWCD =    12;		//12    ~  0.25% duty cycle @ 160Hz
CLINEA 0000H 0001H 05BAH 0002H 0033H
	mov	er0,	#12
	st	er0,	0f912h

;;	PCRUN = 0;		// OFF to start
CLINEA 0000H 0001H 05BCH 0002H 001CH
	rb	0f917h.0
CBLOCKEND 132 2 1470

;;}
CLINEA 0000H 0001H 05BEH 0001H 0001H
	rt
CBLOCKEND 132 1 1470
CFUNCTIONEND 132

	public _NackMCUConn
	public _checkI2C
	public _main_clrWDT
	public _main_reqNotHalt
	public _AckMCUConn
	public _InputRec
	public _PortA_Digital_Inputs
	public _main
	public _I2C_RX_Data
	public _ListFWRev
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
	DB	"ML610Q111 Connected!", 00H
	db	00h
	DB	"Firmware Version: 01", 00H
	db	00h
	DB	"Please Close Port and change Target MCU under Device Options", 00H
	db	00h
	DB	"I2CTX CMD Received!", 00H
	db	00h
	DB	"I2CRX CMD Received!", 00H
	db	00h
	DB	"I2C-R X X X X X X X X", 00H
	db	00h

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
_ListFWRev :
	ds	016h
_NackMCUConn :
	ds	03eh
_I2C_TX_REC :
	ds	015h
_I2C_RX_REC :
	ds	015h
_I2C_RX_Data :
	ds	017h

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
