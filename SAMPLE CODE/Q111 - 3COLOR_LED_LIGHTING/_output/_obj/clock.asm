;; Compile Options : /TML610111 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /D_ML610Q111 /SS 1024 /SD /Oa /Om /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.31.4
;; File Name       : clock.c

	type (ML610111) 
	model small, near
	$$clk_setSysclk$clock segment code 2h #0h
CVERSION 3.31.4
CGLOBAL 01H 03H 0000H "clk_setSysclk" 08H 02H 00H 00H 81H 02H 00H 00H 07H
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
CFILE 0001H 00000022H "main\\mcu.h"
CFILE 0002H 000007EEH "C:\\Users\\cschell\\U8DEV~1\\Inc\\ml610111.h"
CFILE 0003H 00000022H "clock\\clock.h"
CFILE 0004H 00000049H "irq\\irq.h"
CFILE 0005H 000000A0H "timer\\timer.h"
CFILE 0006H 00000029H "common\\common.h"
CFILE 0000H 00000068H "clock\\clock.c"

	rseg $$clk_setSysclk$clock
CFUNCTION 0

_clk_setSysclk	:
CBLOCK 0 1 77

;;{
CLINEA 0000H 0001H 004DH 0001H 0001H
	push	lr
CBLOCK 0 2 77
CRET 0000H

;;	SYSCLK = 0;	// LSCLK�I��
CLINEA 0000H 0001H 0050H 0002H 0019H
	rb	0f003h.0

;;	ENOSC  = 0;	// �������U��~
CLINEA 0000H 0001H 0051H 0002H 001CH
	rb	0f003h.1

;;	OSCM1  = 1;	// ����PLL
CLINEA 0000H 0001H 0052H 0002H 0017H
	sb	0f002h.3

;;	OSCM0  = 0;
CLINEA 0000H 0001H 0053H 0002H 000CH
	rb	0f002h.2

;;	SYSC0  = 0;
CLINEA 0000H 0001H 0055H 0002H 000CH
	rb	0f002h.0

;;	SYSC1  = 0;	// ��8MHz OSCLK(==OSCLK/2)
CLINEA 0000H 0001H 0056H 0002H 0027H
	rb	0f002h.1

;;	ENOSC  = 1;	// �������U�J�n
CLINEA 0000H 0001H 0058H 0002H 001CH
	sb	0f003h.1

;;	CLKSYS_TM_IRQ_EN = 0;
CLINEA 0000H 0001H 005BH 0002H 0016H
	rb	0f013h.2

;;	tm_init( TM_CH_NO_89 );			/* Timer channel */
CLINEA 0000H 0001H 005CH 0002H 002EH
	mov	r0,	#01h
	bl	_tm_init

;;	CLKSYS_TM_IRQ = 0;
CLINEA 0000H 0001H 005DH 0002H 0013H
	rb	0f01bh.2

;;	tm_set89Source(TM_CS_LSCLK);						/* Operation clock */
CLINEA 0000H 0001H 005EH 0002H 0038H
	mov	r0,	#00h
	bl	_tm_set89Source

;;	tm_set89Data( (unsigned short)(CLKSYS_TIMER_CNT) );	/* Timer count value */
CLINEA 0000H 0001H 005FH 0002H 004CH
	mov	r0,	#062h
	mov	r1,	#00h
	bl	_tm_set89Data

;;	tm_start89();
CLINEA 0000H 0001H 0060H 0002H 000EH
	bl	_tm_start89

;;	while( tm_checkOvf89() == TM_R_NOT_OVF );
CLINEA 0000H 0000H 0061H 0002H 002AH
_$L3 :
	tb	0f01bh.3
	beq	_$L3

;;	tm_stop89();
CLINEA 0000H 0001H 0062H 0002H 000DH
	bl	_tm_stop89

;;	CLKSYS_TM_IRQ = 0;
CLINEA 0000H 0001H 0063H 0002H 0013H
	rb	0f01bh.2

;;	SYSCLK = 1;	// HSCLK�I��
CLINEA 0000H 0001H 0065H 0002H 0019H
	sb	0f003h.0
CBLOCKEND 0 2 103

;;}
CLINEA 0000H 0001H 0067H 0001H 0001H
	pop	pc
CBLOCKEND 0 1 103
CFUNCTIONEND 0

	public _clk_setSysclk
	extrn code near : _tm_stop89
	extrn code near : _tm_set89Data
	extrn code near : _tm_set89Source
	extrn code near : _tm_init
	extrn code near : _tm_start89
	extrn code near : _main

	end