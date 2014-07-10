;; Compile Options : /TML610178A /ML /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /D_ML610Q178 /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.31.4
;; File Name       : volume.c

	type (ML610178A) 
	model large, near
	$$volGetAdValue$volume segment code 2h any
	$$volInit$volume segment code 2h any
CVERSION 3.31.4
CGLOBAL 01H 03H 0000H "volInit" 08H 02H 00H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "volGetAdValue" 08H 02H 01H 00H 80H 00H 00H 00H 08H
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
CFILE 0001H 00000020H "main\\mcu.h"
CFILE 0002H 000008AAH "main\\ml610178A.h"
CFILE 0003H 0000001FH "volume\\volume.h"
CFILE 0000H 00000038H "volume\\volume.c"

	rseg $$volInit$volume
CFUNCTION 0

_volInit	:
CBLOCK 0 1 29

;;{
CLINEA 0000H 0001H 001DH 0001H 0001H
CBLOCK 0 2 29

;;	P30DIR = 1; // input
CLINEA 0000H 0001H 001EH 0002H 0015H
	sb	0f219h.0

;;	P30C0 = 0;
CLINEA 0000H 0001H 001FH 0002H 000BH
	rb	0f21ah.0

;;	P30C1 = 0; // hi-z
CLINEA 0000H 0001H 0020H 0002H 0013H
	rb	0f21bh.0

;;	SARUN = 0; // stop
CLINEA 0000H 0001H 0024H 0002H 0013H
	rb	0f2f1h.0

;;	SALP = 0; // one time
CLINEA 0000H 0001H 0026H 0002H 0016H
	rb	0f2f0h.0

;;	SADMOD = 0x0001; // ch0 select
CLINEA 0000H 0001H 0027H 0002H 001FH
	mov	er0,	#1 
	st	er0,	0f2f2h
CBLOCKEND 0 2 40

;;}
CLINEA 0000H 0001H 0028H 0001H 0001H
	rt
CBLOCKEND 0 1 40
CFUNCTIONEND 0


	rseg $$volGetAdValue$volume
CFUNCTION 1

_volGetAdValue	:
CBLOCK 1 1 43

;;{
CLINEA 0000H 0001H 002BH 0001H 0001H
CBLOCK 1 2 43
CLOCAL 46H 0002H 0024H 0002H "result" 02H 00H 08H

;;	SARUN = 1; // start
CLINEA 0000H 0001H 002EH 0002H 0014H
	sb	0f2f1h.0

;;	while( SARUN != 0 ) // wait finish
CLINEA 0000H 0000H 002FH 0002H 0023H
_$L4 :
CBLOCK 1 3 48
CBLOCKEND 1 3 50
	tb	0f2f1h.0
	bne	_$L4

;;	result = SADR0 >> 6; // bit0����bit5�͌��Ȃ��B���ʋl�߂ɂ���B
CLINEA 0000H 0001H 0034H 0002H 003FH
	l	er0,	0f2d0h
	srlc	r0,	#06h
	srl	r1,	#06h

;;	return result;
CLINEA 0000H 0001H 0035H 0002H 000FH
CBLOCKEND 1 2 54

;;}
CLINEA 0000H 0000H 0036H 0001H 0001H
	rt
CBLOCKEND 1 1 54
CFUNCTIONEND 1

	public _volInit
	public _volGetAdValue
	extrn code far : _main

	end