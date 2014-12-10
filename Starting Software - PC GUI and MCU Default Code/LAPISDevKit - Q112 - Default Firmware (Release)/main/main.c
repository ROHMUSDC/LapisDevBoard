//*****************************************************************************
// Program:	 LAPIS Development Board Demo Code Q112
// Author:	 C. Schell & K. Bahar
//		 ROHM Semiconductor USA, LLC
//		 US Design Center
// Started:  April 6th, 2013
// Purpose:	 Demonstration Code for use with Lapis "LAPIS" Development Board 
// Updated:	 October 17th, 2013
//*****************************************************************************

//*****************************************************************************
// Microcontroller's connections on the LAPIS Development Board to the 
//  Plug 'n Play, Raspberry Pi Compatible, Universal Connectors:
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => 3.3V Power					Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q112 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q112 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => GPIO #04 (Q112 I/O B.2)	Pin-08 => UART-TX  (Q112 I/O B.1)
// Pin-09 => no connection				Pin-10 => UART-RX  (Q112 I/O B.0) 
// Pin-11 => GPIO #17 (Q112 I/O C.0)	Pin-12 => GPIO #18 (Q112 I/O B.7)
// Pin-13 => GPIO #21 (Q112 I/O C.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q112 I/O C.2)	Pin-16 => GPIO #23 (Q112 I/O D.1)
// Pin-17 => no connection				Pin-18 => GPIO #24 (Q112 I/O D.2)
// Pin-19 => SPI-MOSI (Q112 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q112 I/O B.3)	Pin-22 => GPIO #25 (Q112 I/O D.3)
// Pin-23 => SPI-SCLK (Q112 I/O B.5)*	Pin-24 => SPI-CS0  (Q112 I/O D.4)
// Pin-25 => no connection				Pin-26 => SPI-CS1  (Q112 I/O D.5)
//
//=============================================================================
//*****************************************************************************

//*****************************************************************************
// Q112 Microcontroller's I/O Pins at J4 on the LAPIS Development Board to the
// LAPIS Development Board 
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => A.0				Pin-02 => A.1
// Pin-03 => A.2				Pin-04 => B.0
// Pin-05 => B.1				Pin-06 => B.2
// Pin-07 => B.3				Pin-08 => B.4
// Pin-09 => B.5				Pin-10 => B.6 
// Pin-11 => B.7				Pin-12 => C.0
// Pin-13 => C.1				Pin-14 => C.2
// Pin-15 => C.3				Pin-16 => C.4
// Pin-17 => C.5				Pin-18 => C.6
// Pin-19 => C.7				Pin-20 => D.0
// Pin-21 => D.1				Pin-22 => D.2
// Pin-23 => D.3				Pin-24 => D.4
// Pin-25 => D.5				Pin-26 => GROUND
//
//=============================================================================
//*****************************************************************************


//***** PREPROCESSOR DIRECTIVES ***********************************************
// INCLUDED FILES...
// Include Path: common;main;irq;timer;clock;tbc;pwm;uart;

	#include	<ML610112.H>	// Lapis Micro ML610Q112 on LAPIS Development Board
	#include	<stdlib.h>		// General-purpose utilities
	#include 	<uart.h>		// UART Function Prototypes
	#include 	<common.h>		// Common Definitions
	#include 	<irq.h>			// IRQ Definitions
	#include 	<mcu.h>			// MCU Definition
	#include	<i2c.h>			// I2C Definition
	//#include 	<clock.h>		// Set System Clock API
	//#include 	<tbc.h>			// Set TBC (Timer Based Clock) API
	//#include 	<timer.h>		// Timer Macros & APIs
	//#include 	<main.h>		// Clear WDT API
	//#include	<ctype.h>		// Character classification and conversion 
	//#include	<errno.h>		// Error identifiers Library
	//#include	<float.h>		// Numerical limits for floating-point numbers
	//#include	<limits.h>		// Numerical limits for integers
	//#include	<math.h>		// Mathematical functions
	//#include	<muldivu8.h>	// Multiplication and Division accelerator
	//#include	<setjmp.h>		// Global jump (longjmp)
	//#include	<signal.h>		// Signal handling functions
	//#include	<stdarg.h>		// Variable numbers of arguments
	//#include	<stddef.h>		// Standard types and macros 
	#include	<stdio.h>		// I/O-related processing
	//#include	<string.h>		// Character string manipulation routines
	//#include	<yfuns.h>		// 
	//#include	<yvals.h>		// Called for by most Header Files

//*****************************************************************************
 // I/O PIN DATA ALIASES...
// Connections for Q112 Universal Socket
	#define RX 		PB0D 
	#define TX 		PB1D 
	#define I2C_SDA 	PB6D 
	#define I2C_SCL 	PB5D 
	#define GPIO_04	PB2D 
	#define GPIO_17	PC0D
	#define GPIO_21	PC1D
	#define GPIO_22	PC2D
	#define GPIO_18	PB7D
	#define GPIO_23	PD1D
	#define GPIO_24	PD2D
	#define GPIO_25	PD3D
	#define SPI_MOSI	PB4D
	#define SPI_MISO	PB3D
	#define SPI_SCL 	PB5D
	#define SPI_CS0	PD4D
	#define SPI_CS1 	PD5D 	

//*****************************************************************************
//===========================================================================
//   MACROS: 
//===========================================================================
#define WelcomeString		( "LAPIS ML610Q112 LAPIS DEVELOPMENT DEMO\n\r" )
#define WelcomeString_LEN	( sizeof(WelcomeString) - 1 )

// ===== Peripheral setting.=====
#define HSCLK_KHZ	( 8000u )	// 8MHz = 8000kHz (will be multiplied by 1024 to give 8,192,000Hz)
#define FLG_SET	( 0x01u ) 


// SET DESIRED UART SETTINGS HERE! (Options in UART.h)
#define UART_BAUDRATE		( UART_BR_9600BPS) 	// Data Bits Per Second - Tested at rates from 2400bps to 512000bps!
#define UART_DATA_LENGTH	( UART_LG_8BIT )		// x-Bit Data
#define UART_PARITY_BIT		( UART_PT_NON )		// Parity
#define UART_STOP_BIT		( UART_STP_1BIT )		// x Stop-Bits
#define UART_LOGIC			( UART_NEG_POS )		// Desired Logic
#define UART_DIRECTION		( UART_DIR_LSB )		// LSB or MSB First

//*****************************************************************************

//*****************************************************************************
//===========================================================================
//   STRUCTURES: 
//===========================================================================
//Example Structure Declaration
typedef struct {
	unsigned char state     : 1;
	unsigned char state_sub : 2;
	unsigned char reserve   : 5;
} STRUCT_STATE;	

static const tUartSetParam  _uartSetParam = {		// UART Parameters
	UART_BAUDRATE,						// Members of Structure...
	UART_DATA_LENGTH,						// Members of Structure...
	UART_PARITY_BIT,						// Members of Structure...
	UART_STOP_BIT,						// Members of Structure...
	UART_LOGIC,							// Members of Structure...
	UART_DIRECTION						// Members of Structure...
};

//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   FUNCTION PROTOTYPES: 
//	Establishes the name and return type of a function and may specify the 
// 	types, formal parameter names and number of arguments to the function                                 
//===========================================================================
void main_clrWDT( void );			// no return value and no arguments
void Initialization( void );			// no return value and no arguments
void SetOSC( void );				// no return value and no arguments
void analog_comparator( void );		// no return value and no arguments
void PortA_Low( void );				// no return value and no arguments
void PortB_Low( void );				// no return value and no arguments
void PortC_Low( void );				// no return value and no arguments
void PortD_Low( void );				// no return value and no arguments
void PortA_Digital_Inputs( void );		// no return value and no arguments
void PinB0_PWM( void ); 			// no return value and no arguments

void _funcUartFin( unsigned int size, unsigned char errStat );
void _funcI2CFin( unsigned int size, unsigned char errStat );
void checkI2C( void );
void main_reqNotHalt( void );
void _intUart( void );
void _intI2c( void );
void NOP1000( void );
//*****************************************************************************

//GLOBALS...
unsigned char	_flgUartFin;
unsigned char 	_flgI2CFin;
unsigned char	_reqNotHalt;

unsigned char	HelloWorld[14] = {"Hello World!  "};

unsigned char	InputStatus[23] = {"INP_00000000_00000000"};	//Used for Testing the UART Terminal during initial
unsigned char	InputRec[14] = {"INP Received"};				//Used for Testing the UART Terminal during initial
unsigned char	OutputRec[23] = {"OUT Received         "};		//Used for Testing the UART Terminal during initial
unsigned char	RecWorld[21];									//Used for Testing the UART Terminal during initial
unsigned char	AckMCUConn[22] = {"ML610Q112 Connected!"};
unsigned char	ListFWRev[22] = {"Firmware Version: 01"};
unsigned char	NackMCUConn[62] = {"Please Close Port and change Target MCU under Device Options"};
unsigned char	I2C_TX_REC[21] = {"I2CTX CMD Received!"};
unsigned char	I2C_RX_REC[21] = {"I2CRX CMD Received!"};
unsigned char	I2C_RX_Data[23] = {"I2C-R X X X X X X X X"};

unsigned int	UART_VAR;

static unsigned char			I2C_BUFF[46];
static unsigned char			I2CAdd;
static unsigned char			I2CNumBytes;
static unsigned char			Data0Str;
static unsigned char			Data1Str;
static unsigned char			Data2Str;
static unsigned char			Data3Str;
static unsigned char			Data4Str;
static unsigned char			Data5Str;
static unsigned char			Data6Str;
static unsigned char			Data7Str;
static unsigned char			RegAddr;
static unsigned char			I2CAdd_temp;
static unsigned char			I2CNumBytes_temp;
static unsigned char			Data0Str_temp;
static unsigned char			Data1Str_temp;
static unsigned char			Data2Str_temp;
static unsigned char			Data3Str_temp;
static unsigned char			Data4Str_temp;
static unsigned char			Data5Str_temp;
static unsigned char			Data6Str_temp;
static unsigned char			Data7Str_temp;
static unsigned char			RegAddr_temp;
static unsigned char			I2CSendInfo[8];
static unsigned char			I2CReceInfo[8];
static unsigned char			chari;
static unsigned char			charj;
static unsigned char			chark;

unsigned int ret;
unsigned int testI2C;

/*############################################################################*/
/*#                                  APIs                                    #*/
/*############################################################################*/
//*****************************************************************************
//===========================================================================
//  	Start of MAIN FUNCTION
//===========================================================================
int main(void) 
{

char char_a;		// -128 to 127
unsigned char uchar;	// 0-255
int inta, table [100];	// -32,768 to 32767
unsigned int uint;	// 0 to 65,535
long long_a,delay;	// -2,147,483,648 to 2,147,483,647
float float_a;		// 1.17549435e-38 to 3.40282347e+38
double double_a;		// 2.2250738585072014e-308 to 1.7976931348623157e+308 

//unsigned char encoder_position, previous_encoder_position;  // 0-255
unsigned char button_flag;  						// 0-255
int i,j,k,x,y;								// -32,768 to 32767
unsigned char sndByte;
unsigned int count;
char maskC;


Init:
	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.

RX_Loop:	
		main_clrWDT();
		
		//Reset RecWorld for UART Receive
		for (i=0;i<22;i++)
		{
			RecWorld[i] = 0;	
		}
		
		//Begin UART Receive
		_flgUartFin = 0;
		uart_stop();
		uart_startReceive(RecWorld, 21, _funcUartFin);
		while(_flgUartFin != 1){
			NOP1000();
			main_clrWDT();
		}
		
		//Check UART Receive String for "ACK"
		//if ACK Sent, Return "UART Connected"
		//--This loop triggers when COM port is opened on PC
		if(RecWorld[0] == 0x41){			//if RECWORLD == "ACK2"
			if(RecWorld[1] == 0x43){
				if(RecWorld[2] == 0x4B){
					if(RecWorld[3] == 0x32){
						_flgUartFin = 0;
						uart_stop();
						uart_startSend(AckMCUConn, 22, _funcUartFin);
						while(_flgUartFin != 1){
							NOP1000();
							main_clrWDT();
						}
						_flgUartFin = 0;
						uart_stop();
						uart_startSend(ListFWRev, 22, _funcUartFin);
						while(_flgUartFin != 1){
							NOP1000();
							main_clrWDT();
						}
					}
					else
					{
						_flgUartFin = 0;
						uart_stop();
						uart_startSend(NackMCUConn, 62, _funcUartFin);
						while(_flgUartFin != 1){
							NOP1000();
							main_clrWDT();
						}
						
					}
				}
			}
		}
		
		//Check UART Receive String for "INC" - Input, Port C
		//This section is triggered by the GPIO command tab
		if(RecWorld[0] == 0x49){			//if RECWORLD == "INC"
			if(RecWorld[1] == 0x4E){
				if(RecWorld[2] == 0x43){
					InputStatus[2] = 0x43;
					InputRec[2] = 0x43;
					for(count = 4; count < 12; count++)
					{ 
						RecWorld[count] -= 0x30;
						if(RecWorld[count] != (0x01||0x00)){
							RecWorld[count] = 0;
						}
					}
					
					//Set PORTC to Input or Output based on PC application
					PC7DIR = RecWorld[4];
					PC6DIR = RecWorld[5];
					PC5DIR = RecWorld[6];
					PC4DIR = RecWorld[7];
					PC3DIR = RecWorld[8];
					PC2DIR = RecWorld[9];
					PC1DIR = RecWorld[10];
					PC0DIR = RecWorld[11];
					
					//Format I/O Direction into output string
					InputStatus[4] = PC7DIR + 0x30;
					InputStatus[5] = PC6DIR + 0x30;
					InputStatus[6] = PC5DIR + 0x30;
					InputStatus[7] = PC4DIR + 0x30;
					InputStatus[8] = PC3DIR + 0x30;
					InputStatus[9] = PC2DIR + 0x30;
					InputStatus[10] = PC1DIR + 0x30;
					InputStatus[11] = PC0DIR + 0x30;
					
					//Format I/O Level into output string
					InputStatus[13] = PC7D + 0x30;
					InputStatus[14] = PC6D + 0x30;
					InputStatus[15] = PC5D + 0x30;
					InputStatus[16] = PC4D + 0x30;
					InputStatus[17] = PC3D + 0x30;
					InputStatus[18] = PC2D + 0x30;
					InputStatus[19] = PC1D + 0x30;
					InputStatus[20] = PC0D + 0x30;
					
					//Send the InputStatus String
					//	"INP_[PC7DIR][PC6DIR]...[PC0DIR]_[PC7D]{PC6D]...[PC0D]"
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(InputStatus, 23, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
					
					//Send the Acknowledgement String
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(InputRec, 14, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
				}
			}
		}
		
		//Check UART Receive String for "OUC" - Output, PortC
		//This section is triggered by the GPIO command tab
		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUC"
			if(RecWorld[1] == 0x55){
				if(RecWorld[2] == 0x43){
					OutputRec[2] = 0x43;
					for(count = 4; count < 21; count++)
					{ 
						RecWorld[count] -= 0x30;
						if(RecWorld[count] != (0x01||0x00)){
							RecWorld[count] = 0;
						}
					}
					//Set I/O Pin Direction based on PC App
					PC7DIR = RecWorld[4];
					PC6DIR = RecWorld[5];
					PC5DIR = RecWorld[6];
					PC4DIR = RecWorld[7];
					PC3DIR = RecWorld[8];
					PC2DIR = RecWorld[9];
					PC1DIR = RecWorld[10];
					PC0DIR = RecWorld[11];
					
					//Set I/O Pin Direction based on PC App
					PC7D = RecWorld[13];
					PC6D = RecWorld[14];
					PC5D = RecWorld[15];
					PC4D = RecWorld[16];
					PC3D = RecWorld[17];
					PC2D = RecWorld[18];
					PC1D = RecWorld[19];
					PC0D = RecWorld[20];
					
					//Return GPIO pin state within the acknowledgement string
					OutputRec[13] = PC7D + 0x30;
					OutputRec[14] = PC6D + 0x30;
					OutputRec[15] = PC5D + 0x30;
					OutputRec[16] = PC4D + 0x30;
					OutputRec[17] = PC3D + 0x30;
					OutputRec[18] = PC2D + 0x30;
					OutputRec[19] = PC1D + 0x30;
					OutputRec[20] = PC0D + 0x30;
					
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(OutputRec, 23, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
				}
			}
		}
		
		//Check UART Receive String for "INB" - Input, PortB
		//This section is triggered by the GPIO command tab
		if(RecWorld[0] == 0x49){			//if RECWORLD == "INB"
			if(RecWorld[1] == 0x4E){
				if(RecWorld[2] == 0x42){
					InputStatus[2] = 0x42;
					InputRec[2] = 0x42;
					for(count = 4; count < 12; count++)
					{ 
						RecWorld[count] -= 0x30;
						if(RecWorld[count] != (0x01||0x00)){
							RecWorld[count] = 0;
						}
					}
					
					//For Port C GPIO, we can only control two GPIOs due to
					//other functionality.  Please see comments below
					
					//Set PORTC to Input or Output based on PC application
					PB7DIR = RecWorld[4]; 
					//PC6DIR = RecWorld[5];		//I2C SDA
					//PC5DIR = RecWorld[6];		//SPI SCLK/I2C SCL
					//PC4DIR = RecWorld[7];		//SPI MOSI
					//PC3DIR = RecWorld[8];		//SPI MISO
					PB2DIR = RecWorld[9];
					//PC1DIR = RecWorld[10];	//UART TX
					//PC0DIR = RecWorld[11];	//UART RX
					
					//Format I/O Direction into output string
					InputStatus[4] = PB7DIR + 0x30;
					InputStatus[5] = 0x78;
					InputStatus[6] = 0x78;
					InputStatus[7] = 0x78;
					InputStatus[8] = 0x78;
					InputStatus[9] = PB2DIR + 0x30;
					InputStatus[10] = 0x78;
					InputStatus[11] = 0x78;
					
					//Format I/O Level into output string
					InputStatus[13] = PB7D + 0x30;
					InputStatus[14] = 0x78;
					InputStatus[15] = 0x78;
					InputStatus[16] = 0x78;
					InputStatus[17] = 0x78;
					InputStatus[18] = PB2D + 0x30;
					InputStatus[19] = 0x78;
					InputStatus[20] = 0x78;
					
					//Send the InputStatus String
					//	"INB_[PC7DIR][PC6DIR]...[PC0DIR]_[PC7D]{PC6D]...[PC0D]"
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(InputStatus, 23, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
					
					//Send the Acknowledgement String
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(InputRec, 14, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
				}
			}
		}
		
		//Check UART Receive String for "OUB" - Output, PortB
		//This section is triggered by the GPIO command tab
		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUB"
			if(RecWorld[1] == 0x55){
				if(RecWorld[2] == 0x42){
					OutputRec[2] = 0x42;
					for(count = 4; count < 21; count++)
					{ 
						RecWorld[count] -= 0x30;
						if(RecWorld[count] != (0x01||0x00)){
							RecWorld[count] = 0;
						}
					}
					//Set I/O Pin Direction based on PC App
					PB7DIR = RecWorld[4];
					//PB6DIR = RecWorld[5];
					//PB5DIR = RecWorld[6];
					//PB4DIR = RecWorld[7];
					//PB3DIR = RecWorld[8];
					PB2DIR = RecWorld[9];
					//PB1DIR = RecWorld[10];
					//PB0DIR = RecWorld[11];
					
					//Set I/O Pin Direction based on PC App
					PB7D = RecWorld[13];
					//PB6D = RecWorld[14];
					//PB5D = RecWorld[15];
					//PB4D = RecWorld[16];
					//PB3D = RecWorld[17];
					PB2D = RecWorld[18];
					//PB1D = RecWorld[19];
					//PB0D = RecWorld[20];
					
					//Return GPIO pin state within the acknowledgement string
					OutputRec[13] = PB7D + 0x30;
					OutputRec[14] = 0x78;
					OutputRec[15] = 0x78;
					OutputRec[16] = 0x78;
					OutputRec[17] = 0x78;
					OutputRec[18] = PB2D + 0x30;
					OutputRec[19] = 0x78;
					OutputRec[20] = 0x78;
					
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(OutputRec, 23, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
				}
			}
		}
		
		//Check UART Receive String for "IND" - Input, Port D
		//This section is triggered by the GPIO command tab
		if(RecWorld[0] == 0x49){			//if RECWORLD == "IND"
			if(RecWorld[1] == 0x4E){
				if(RecWorld[2] == 0x44){
					InputStatus[2] = 0x44;
					InputRec[2] = 0x44;
					for(count = 4; count < 12; count++)
					{ 
						RecWorld[count] -= 0x30;
						if(RecWorld[count] != (0x01||0x00)){
							RecWorld[count] = 0;
						}
					}
					
					//Set PORTD to Input or Output based on PC application
					//PC7DIR = RecWorld[4];
					//PC6DIR = RecWorld[5];
					PD5DIR = RecWorld[6];
					PD4DIR = RecWorld[7];
					PD3DIR = RecWorld[8];
					PD2DIR = RecWorld[9];
					PD1DIR = RecWorld[10];
					PD0DIR = RecWorld[11];
					
					//Format I/O Direction into output string
					InputStatus[4] = 0x78;
					InputStatus[5] = 0x78;
					InputStatus[6] = PD5DIR + 0x30;
					InputStatus[7] = PD4DIR + 0x30;
					InputStatus[8] = PD3DIR + 0x30;
					InputStatus[9] = PD2DIR + 0x30;
					InputStatus[10] = PD1DIR + 0x30;
					InputStatus[11] = PD0DIR + 0x30;
					
					//Format I/O Level into output string
					InputStatus[13] = 0x78;
					InputStatus[14] = 0x78;
					InputStatus[15] = PD5D + 0x30;
					InputStatus[16] = PD4D + 0x30;
					InputStatus[17] = PD3D + 0x30;
					InputStatus[18] = PD2D + 0x30;
					InputStatus[19] = PD1D + 0x30;
					InputStatus[20] = PD0D + 0x30;
					
					//Send the InputStatus String
					//	"INP_[PC7DIR][PC6DIR]...[PC0DIR]_[PC7D]{PC6D]...[PC0D]"
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(InputStatus, 23, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
					
					//Send the Acknowledgement String
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(InputRec, 14, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
				}
			}
		}
		
		//Check UART Receive String for "OUD" - Output, PortD
		//This section is triggered by the GPIO command tab
		if(RecWorld[0] == 0x4F){			//if RECWORLD == "OUD"
			if(RecWorld[1] == 0x55){
				if(RecWorld[2] == 0x44){
					OutputRec[2] = 0x44;
					for(count = 4; count < 21; count++)
					{ 
						RecWorld[count] -= 0x30;
						if(RecWorld[count] != (0x01||0x00)){
							RecWorld[count] = 0;
						}
					}
					//Set I/O Pin Direction based on PC App
					//PC7DIR = RecWorld[4];
					//PC6DIR = RecWorld[5];
					PD5DIR = RecWorld[6];
					PD4DIR = RecWorld[7];
					PD3DIR = RecWorld[8];
					PD2DIR = RecWorld[9];
					PD1DIR = RecWorld[10];
					PD0DIR = RecWorld[11];
					
					//Set I/O Pin Direction based on PC App
					//D7D = RecWorld[13];
					//PD6D = RecWorld[14];
					PD5D = RecWorld[15];
					PD4D = RecWorld[16];
					PD3D = RecWorld[17];
					PD2D = RecWorld[18];
					PD1D = RecWorld[19];
					PD0D = RecWorld[20];
					
					//Return GPIO pin state within the acknowledgement string
					OutputRec[13] = 0x78;
					OutputRec[14] = 0x78;
					OutputRec[15] = PD5D + 0x30;
					OutputRec[16] = PD4D + 0x30;
					OutputRec[17] = PD3D + 0x30;
					OutputRec[18] = PD2D + 0x30;
					OutputRec[19] = PD1D + 0x30;
					OutputRec[20] = PD0D + 0x30;
					
					_flgUartFin = 0;
					uart_stop();
					uart_startSend(OutputRec, 23, _funcUartFin);
					while(_flgUartFin != 1){
						NOP1000();
						main_clrWDT();
					}
				}
			}
		}
				
		//Start I2C Write Sequence
		//This section is triggered by the write portion of the I2C command tab
		if(RecWorld[0] == 0x49){			//if RECWORLD == "I2CTX"
			if(RecWorld[1] == 0x32){
				if(RecWorld[2] == 0x43){
					if(RecWorld[3] == 0x54){
						if(RecWorld[4] == 0x58){
							//if RECWORLD = "I2CTX" then begin waiting for the I2C sequence to be sent
							// The Sequence will be stored in I2C_BUFF
							_flgUartFin = 0;
							uart_stop();
							uart_startReceive(I2C_BUFF, 46, _funcUartFin);
							while(_flgUartFin != 1){
								NOP1000();
								main_clrWDT();
							}
							
							//This next section will begin parsing the character string into their respective values
							chari = 2;
							charj = 0;
							chark = 0;
							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30);}
								I2CAdd += I2CAdd_temp;
							}
							chari++;
							charj = 0;
							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30);}
								I2CNumBytes += I2CNumBytes_temp;
							}
							chari++;
							charj = 0;
							
							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data0Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data0Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data0Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data0Str += Data0Str_temp;
							}
							chari++;
							charj = 0;
							
							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data1Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data1Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data1Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data1Str += Data1Str_temp;
							}
							chari++;
							charj = 0;

							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data2Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data2Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data2Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data2Str += Data2Str_temp;
							}
							chari++;
							charj = 0;

							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data3Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data3Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data3Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data3Str += Data3Str_temp;
							}
							chari++;
							charj = 0;

							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data4Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data4Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data4Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data4Str += Data4Str_temp;
							}
							chari++;
							charj = 0;

							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data5Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data5Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data5Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data5Str += Data5Str_temp;
							}
							chari++;
							charj = 0;

							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data6Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data6Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data6Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data6Str += Data6Str_temp;
							}
							chari++;
							charj = 0;

							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){Data7Str_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){Data7Str_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {Data7Str_temp = (I2C_BUFF[chari-chark]-0x30);}
								Data7Str += Data7Str_temp;
							}
							chari++;
							charj = 0;							
							
							//Now that I2C message info has been parsed, we will restructure them into the I2CSendInfo String...
							I2CSendInfo[0] = Data0Str;
							I2CSendInfo[1] = Data1Str;
							I2CSendInfo[2] = Data2Str;
							I2CSendInfo[3] = Data3Str;
							I2CSendInfo[4] = Data4Str;
							I2CSendInfo[5] = Data5Str;
							I2CSendInfo[6] = Data6Str;
							I2CSendInfo[7] = Data7Str;
							
							//This will reset our starting temp variables to 0 as we are now done with these variables.
							Data0Str = Data1Str = Data2Str = Data3Str = Data4Str = Data5Str = Data6Str = Data7Str = 0;
							
							//Now we can start the I2C send based on the info from the PC App
							_flgI2CFin = 0;														//reset I2C completed flag
							i2c_stop();															//Make sure I2C is not currently running
							i2c_startSend( I2CAdd, &I2CSendInfo, I2CNumBytes, &I2CSendInfo, 0, (cbfI2c)_funcI2CFin);		//Begin I2C Recieve Command
							while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
								NOP1000();
								main_clrWDT();
							}
							
							//Reset All original variables to a 0 state
							I2CAdd = 0;
							I2CNumBytes = 0;
							chari = 0;
							for(chari = 0; chari < 8; chari++){
								I2CSendInfo[chari] = 0;
							}
							
							//Send the final UART message to PC saying that this transaction was successful.
							_flgUartFin = 0;
							uart_stop();
							uart_startSend(I2C_TX_REC, 21, _funcUartFin);
							while(_flgUartFin != 1){
								NOP1000();
								main_clrWDT();
							}
						}
					}
				}
			}
		}
		
		//I2C Read Sequence
		//This section is triggered by the read portion of the I2C command tab
		if(RecWorld[0] == 0x49){			//if RECWORLD == "I2CRX"
			if(RecWorld[1] == 0x32){
				if(RecWorld[2] == 0x43){
					if(RecWorld[3] == 0x52){
						if(RecWorld[4] == 0x58){
							//if RECWORLD = "I2CRX" then begin waiting for the I2C sequence to be sent
							// The Sequence will be stored in I2C_BUFF
							_flgUartFin = 0;
							uart_stop();
							uart_startReceive(I2C_BUFF, 46, _funcUartFin);
							while(_flgUartFin != 1){
								NOP1000();
								main_clrWDT();
							}
							
							//This next section will begin parsing the character string into their respective values
							chari = 2;
							charj = 0;
							chark = 0;
							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {I2CAdd_temp = (I2C_BUFF[chari-chark]-0x30);}
								I2CAdd += I2CAdd_temp;
							}
							chari++;
							charj = 0;
							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {I2CNumBytes_temp = (I2C_BUFF[chari-chark]-0x30);}
								I2CNumBytes += I2CNumBytes_temp;
							}
							chari++;
							charj = 0;
							
							while(I2C_BUFF[chari]!=0x20){
								chari++;
								charj++;
							}
							for(chark = charj; chark>0; chark--){
								if(chark == 3){RegAddr_temp = (I2C_BUFF[chari-chark]-0x30)*100;}
								else if(chark == 2){RegAddr_temp = (I2C_BUFF[chari-chark]-0x30)*10;}
								else {RegAddr_temp = (I2C_BUFF[chari-chark]-0x30);}
								RegAddr += RegAddr_temp;
							}
							chari++;
							charj = 0;
							
							//Now we can start the I2C Receive based on the info from the PC App
							_flgI2CFin = 0;																	//reset I2C completed Flag
							i2c_stop();																		//Make sure I2C is not currently running
							i2c_startReceive(I2CAdd, &RegAddr, 1, &I2CReceInfo, I2CNumBytes, (cbfI2c)_funcI2CFin);	//Begin I2C Recieve Command
							while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
								NOP1000();
								main_clrWDT();
							}
							
							//Send UART Message Returning the Values to the GUI!
							//unsigned char	I2C_RX_Data[23] = {"I2CRX X X X X X X X X"}
							//Note, that these values have not been converted into the Ascii Representation,
							//Thus, these values will not be clearly visible in the GUI console
							I2C_RX_Data[6] = I2CReceInfo[0];
							I2C_RX_Data[8] = I2CReceInfo[1];
							I2C_RX_Data[10] = I2CReceInfo[2];
							I2C_RX_Data[12] = I2CReceInfo[3];
							I2C_RX_Data[14] = I2CReceInfo[4];
							I2C_RX_Data[16] = I2CReceInfo[5];
							I2C_RX_Data[18] = I2CReceInfo[6];
							I2C_RX_Data[20] = I2CReceInfo[7];
							
							_flgUartFin = 0;
							uart_stop();
							uart_startSend(I2C_RX_Data, 23, _funcUartFin);
							while(_flgUartFin != 1){
								NOP1000();
								main_clrWDT();
							}
			
							//Reset All original variables to a 0 state
							I2CAdd = 0;
							I2CNumBytes = 0;
							RegAddr = 0;
							chari = 0;
							for(chari = 0; chari < 8; chari++){
								I2CReceInfo[chari] = 0;
							}
							
							//Send the final UART message to PC saying that this transaction was successful.
							_flgUartFin = 0;
							uart_stop();
							uart_startSend(I2C_RX_REC, 21, _funcUartFin);
							while(_flgUartFin != 1){
								NOP1000();
								main_clrWDT();
							}
						}
					}
				}
			}
		}
		goto RX_Loop;
		
}//end main

//===========================================================================
//  	End of MAIN FUNCTION
//===========================================================================
//*****************************************************************************




//*****************************************************************************
//===========================================================================
//  	Start of Other Functions...
//===========================================================================
//*****************************************************************************


/*******************************************************************************
	Routine Name:	main_clrWDT
	Form:			void main_clrWDT( void )
	Parameters:		void
	Return value:	void
	Description:	clear WDT.
******************************************************************************/

void main_clrWDT( void )
{
	//How to clear the Watch Dog Timer:
	// => Write alternately 0x5A and 0xA5 into WDTCON register
	do {
		WDTCON = 0x5Au;
	} while (WDP != 1);
	WDTCON = 0xA5u;
}

/*******************************************************************************
	Routine Name:	NOP1000
	Form:			void NOP( void )
	Parameters:		void
	Return value:	void
	Description:	NOP for 1000 Cycles.
******************************************************************************/
void NOP1000( void )
{
unsigned int ONCNT = 0;

	while(ONCNT < 1000) {	// NOP for 1000 Cycles
		ONCNT++;
	}
	ONCNT = 0;			// Reset Counter 
}



//===========================================================================
//	Initialize Micro to Desired State...
//===========================================================================
static void Initialization(void){

	//Initialize Peripherals	
	//BLKCON2 Control Bits...Manually Set 4/12/2013
	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
	
	BLKCON4 = 0x00; // 0=> Enables SA-ADC
	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
	BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWW (PWMC, PWMD, PWME, PWMF

	// Port Initialize
	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low

	// Set Oscillator Rate
    SetOSC();

    
	// TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
	// TIMER SETUP
	Setup_Timer_8:
	// Reset TIMER DATA REGISTER...
	TM8D    = 0;	//Timer 8 DATA Register
	// Reset TIMER CLOCK REGISTER...
	TM8C    = 0;	//Timer 8 CLOCK Register
	// TIMER-8 Control...
	//   CONTROL-0 Register:
	// Operation Clock for Timer...
	T8C1 = 0;	// 01 = HTBCLK  
	T8C0 = 1;
	// Count Mode...
	T89M16 = 0;	// 0=8-Bit Mode; 1=16bit Mode...
	//One-Shot or Normal Mode...
	T8OST = 0;	// 0=Normal; 1=One-Shot...
	//   CONTROL-1 Register:
	// RUN Mode...
	T8RUN = 0;	//0=STOP; 1=START...
	// TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT


	
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
	// INTERRUPT SETUP...
	irq_di();	// Disable Interrupts
	irq_init();	// Initialize Interrupts (All Off and NO Requests)

	// INTERRUPT ENABLE REGISTERS...
	//  IE0 = VOLTAGE LEVEL SUPERVISOR Int.
	//  IE1 = EXTERNAL Ints on B1, B0, A2, A1, & A0
	//  IE2 = SUCCESSIVE APPROXIMATION Int.
	//  IE3 = TIMERS 8 & 9 Ints.
	//  IE4 = UART & COMPARATOR Ints.
	//  IE5 = TIMERS A, B, E & F Ints.
	//  IE6 = PWMC &  128Hz & 32Hz TBC Ints.
	//  IE7 = 16Hz & 2Hz TBC Ints.
	IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;

	// INTERRUPT REQUEST REGISTERS...
	//  IRQ0 = WDT & VLS Int Requests
	//  IRQ1 = EXTERNAL Int Requests
	//  IRQ2 = SUCCESSIVE APPROXIMATION Int Requests
	//  IRQ3 = TIMERS 8 & 9 Int Requests 
	//  IRQ4 = UART & COMPARATOR Int Requests 
	//  IRQ5 = TIMERS A, B, E & F Int Requests 
	//  IRQ6 = PWMC &  128Hz & 32Hz TBC Int Requests 
	//  IRQ7 = 16Hz & 2Hz TBC Int Requests 
	IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
	E2H = 0; 	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
				
	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
		
	EI2CM = 1;
	QI2CM = 1;
	EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
		
	irq_ei(); // Enable Interrupts
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

	// WDT...
	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
	main_clrWDT(); 	// Clear WDT
	
	//Add EOL characters to strings
	HelloWorld[12] 	= 0x0D;
	HelloWorld[13] 	= 0x0A;
	InputStatus[21] 	= 0x0D;
	InputStatus[22] 	= 0x0A;
	InputRec[12] 	= 0x0D;
	InputRec[13] 	= 0x0A;
	OutputRec[21] 	= 0x0D;
	OutputRec[22] 	= 0x0A;
	AckMCUConn[20] 	= 0x0D;
	AckMCUConn[21] 	= 0x0A;
	NackMCUConn[60] = 0x0D;
	NackMCUConn[61] = 0x0A;
	ListFWRev[20] = 0x0D;
	ListFWRev[21] = 0x0A;
	I2C_TX_REC[19] = 0x0D;
	I2C_TX_REC[20] = 0x0A;
	I2C_RX_REC[19] = 0x0D;
	I2C_RX_REC[20] = 0x0A;
	I2C_RX_Data[21] = 0x0D;
	I2C_RX_Data[22] = 0x0A;
	
	//I2C Initialization...
	//P20C0 = 1;	/* CMOS output */
	//P20C1 = 1;	
	//P20D = 1;	/* write protect enable */
	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
	
	//UART Initialization...
	(void)uart_init( (unsigned char)UART_CS_HSCLK,		/* Generator       */
			     (unsigned short)HSCLK_KHZ,		/* HSCLK frequency */
			     &_uartSetParam );				/* Param... 	 */
	uart_PortSet();
	_flgUartFin = 0;
	uart_stop();
		
	uart_startSend(HelloWorld, 14, _funcUartFin); // Send, "Hello World!"
	while(_flgUartFin != 1){
		NOP1000();
		main_clrWDT();
	}
}//End Initialization
//===========================================================================

/*******************************************************************************
	Routine Name:	_funcUartFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcUartFin( unsigned int size, unsigned char errStat )
{
	uart_continue();					// Function in UART.c: process to continue send and receive...
	_flgUartFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_funcI2CFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcI2CFin( unsigned int size, unsigned char errStat )
{
	i2c_continue();					// Function in UART.c: process to continue send and receive...
	_flgI2CFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_intI2c
	Form:			static void _intI2c( void )
	Parameters:		void
	Return value:	void
	Description:	I2C handler.
******************************************************************************/
static void _intI2c( void )
{
	(void)i2c_continue();
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	checkI2C
	Form:			void checkI2C( void )
	Parameters:		void
	Return value:	void
	Description:	Reading or writing processing of I2C Bus.
******************************************************************************/
void checkI2C( void )
{
int		ret;
	
	ret = 0;
	//P21C1 = 1;
	while (ret != 1) {
		ret = i2c_continue();
		if( ret == 1 ) {
			//P21C1 = 0;
		}
	}
}

/*******************************************************************************
	Routine Name:	main_reqNotHalt
	Form:			void reqNotHalt( void )
	Parameters:		void
	Return value:	void
	Description:	request not halt.
******************************************************************************/
void main_reqNotHalt( void )
{
	_reqNotHalt = (unsigned char)FLG_SET;
}

/*******************************************************************************
	Routine Name:	_intUart
	Form:			static void _intUart( void )
	Parameters:		void
	Return value:	void
	Description:	UART handler.
******************************************************************************/
static void _intUart( void )
{
		uart_continue(); //in UART.c: process to continue send and receive...
}

//===========================================================================
//	OSC set
//===========================================================================
static void SetOSC(void){

	//FCON0: 			// xMHz PLL (3=1MHz; 2=2MHz; 1=4MHz; 0=8MHz)...
	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
	SYSC1 = 0;

	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
	OSCM0 = 0;
   	
	ENOSC = 1;			//1=Enable High Speed Oscillator...
	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 

	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013

	__EI();			//INT enable
}
//===========================================================================


//===========================================================================
//	Analog Comparator setup
//===========================================================================
void analog_comparator(void){

//Carl's Notes...

//Step 1: Select the Interrupt Mode
// 	a.) Interrupt Disabled      => CMPxE1 = 0; CMPxE0 = 0;	  
// 	b.) Falling-Edge Int. Mode  => CMPxE1 = 0; CMPxE0 = 1;
// 	c.) Rising-Edge Int. Mode   => CMPxE1 = 1; CMPxE0 = 0;
// 	d.) Both-Edge Int. Mode     => CMPxE1 = 1; CMPxE0 = 1;


//Step 2: Enable the Comparator                       => CMPxEN = 1;	

//Step 3: Wait 3ms to allow Comparator to stabilize

//Step 4: Read the comparison result			=> CMPxD: 0= +<-; 1= +>-

//Step 5: Disable the Comparator				=> CMPxEN = 0;	



   //Comparator 0...
	CMP0EN  = 0x01; 	// Comparator ON...
	CMP0E1  = 0x00; 	// No Interupt...
	CMP0E0  = 0x00;
	CMP0SM1 = 0x00; 	// Detect without Sampling... 
	CMP0RFS = 0x01; 	// Differential Input on B5

   //Comparator 0 OFF
	CMP0EN  = 0x00;


}
//===========================================================================



//===========================================================================
//	Clear All 3 Bits of Port A
//===========================================================================
void PortA_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
	PA2DIR = 0;		// PortA Bit2 set to Output Mode...

	//I/O Type...
	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
	PA0C0  = 1;		
	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
	PA1C0  = 1;	
	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
	PA2C0  = 1;	

	//Purpose...
	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
	PA0MD0  = 0;	
	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
	PA1MD0  = 0;	
	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
	PA2MD0  = 0;	

	//Data...
	PA0D = 0;		// A.0 Output OFF....
	PA1D = 0;		// A.1 Output OFF....
	PA2D = 0;		// A.2 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 8 Bits of Port B
//===========================================================================
void PortB_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
	PB7DIR = 0;		// PortB Bit7 set to Output Mode...

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
	PB0C0  = 1;		
	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
	PB1C0  = 1;	
	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
	PB2C0  = 1;	
	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
	PB3C0  = 1;		
	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
	PB4C0  = 1;	
	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
	PB5C0  = 1;	
	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
	PB6C0  = 1;	
	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
	PB7C0  = 1;	

	//Purpose...
	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
	PB0MD0  = 0;	
	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
	PB1MD0  = 0;	
	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
	PB2MD0  = 0;	
	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
	PB3MD0  = 0;	
	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
	PB4MD0  = 0;	
	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
	PB5MD0  = 0;
	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
	PB6MD0  = 0;	
	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
	PB7MD0  = 0;

	//Data...
	PB0D = 0;		// B.0 Output OFF....
	PB1D = 0;		// B.1 Output OFF....
	PB2D = 0;		// B.2 Output OFF....
	PB3D = 0;		// B.3 Output OFF....
	PB4D = 0;		// B.4 Output OFF....
	PB5D = 0;		// B.5 Output OFF....
	PB6D = 0;		// B.6 Output OFF....
	PB7D = 0;		// B.7 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 8 Bits of Port C
//===========================================================================
void PortC_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
	PC7DIR = 0;		// PortC Bit7 set to Output Mode...

	//I/O Type...
	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
	PC0C0  = 1;		
	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
	PC1C0  = 1;	
	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
	PC2C0  = 1;	
	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
	PC3C0  = 1;		
	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
	PC4C0  = 1;	
	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
	PC5C0  = 1;	
	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
	PC6C0  = 1;	
	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
	PC7C0  = 1;	

	//Purpose...
	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
	PC0MD0  = 0;	
	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
	PC1MD0  = 0;	
	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
	PC2MD0  = 0;	
	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
	PC3MD0  = 0;	
	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
	PC4MD0  = 0;	
	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
	PC5MD0  = 0;
	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
	PC6MD0  = 0;	
	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
	PC7MD0  = 0;

	//Data...
	PC0D = 0;		// C.0 Output OFF....
	PC1D = 0;		// C.1 Output OFF....
	PC2D = 0;		// C.2 Output OFF....
	PC3D = 0;		// C.3 Output OFF....
	PC4D = 0;		// C.4 Output OFF....
	PC5D = 0;		// C.5 Output OFF....
	PC6D = 0;		// C.6 Output OFF....
	PC7D = 0;		// C.7 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 6 Bits of Port D
//===========================================================================
void PortD_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Data...

	//Direction...	
	PD0DIR = 0;		// PortD Bit0 set to Output Mode...
	PD1DIR = 0;		// PortD Bit1 set to Output Mode...
	PD2DIR = 0;		// PortD Bit2 set to Output Mode...
	PD3DIR = 0;		// PortD Bit3 set to Output Mode...
	PD4DIR = 0;		// PortD Bit4 set to Output Mode...
	PD5DIR = 0;		// PortD Bit5 set to Output Mode...

	//I/O Type...
	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
	PD0C0= 1;		
	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
	PD1C0= 1;	
	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
	PD2C0= 1;	
	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
	PD3C0= 1;		
	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
	PD4C0= 1;	
	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
	PD5C0= 1;	

	//Data...
	PD0D = 0;		// D.0 Output OFF....
	PD1D = 0;		// D.1 Output OFF....
	PD2D = 0;		// D.2 Output OFF....
	PD3D = 0;		// D.3 Output OFF....
	PD4D = 0;		// D.4 Output OFF....
	PD5D = 0;		// D.5 Output OFF....


	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Set All 3 Bits of Port A as Digital Input Pins
//===========================================================================
void PortA_Digital_Inputs(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
	PA2DIR = 1;		// PortA Bit2 set to Input Mode...


	//I/O Type...
	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
	PA0C0  = 0;		
	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
	PA1C0  = 0;	
	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
	PA2C0  = 0;	

	//Purpose...
	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
	PA0MD0  = 0;	
	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
	PA1MD0  = 0;	
	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
	PA2MD0  = 0;	

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================



//===========================================================================
//	PWM Output on Port B - Pin 0
//===========================================================================
void PinB0_PWM(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Select the Clock Mode...
//Step 5: Set the Duty Cycle...
//Step 5: Start the PWM Counter...

	//Direction...	
	PB0DIR = 0;		// PortB Bit0 set to Output Mode...

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
	PB0C0  = 1;		

	//Purpose...
	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
	PB0MD0  = 1;	


	//Select the Clock Mode...
	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
	PCCS0 = 1;

	//SET THE PERIOD...(Added Feb 4th, 2013)
	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

	//SET THE DUTY CYCLE...(Added Feb 15th, 2013)

	//PWCD =    10;		//10    ~  0.2  % duty cycle @ 120Hz
	//PWCD =   100;		//100   ~  2.4  % duty cycle @ 120Hz
	//PWCD =  1000;		//1000  ~ 23.5  % duty cycle @ 120Hz
	//PWCD =  4000;		//4000  ~ 94.0  % duty cycle @ 120Hz
	//PWCD =  4150;		//4150  ~ 99.0  % duty cycle @ 120Hz
	//PWCD =    20;		//20    ~  0.4  % duty cycle @ 120Hz	
	PWCD =    12;		//12    ~  0.25 % duty cycle @ 160Hz

	PCRUN = 0;		// OFF to start

}
//===========================================================================