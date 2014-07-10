LAPIS DEV BOARD READ ME FILE
Last Updated 7 April 2014


Your New LAPIS Development Board comes pre-loaded with the firmware to allow communication between the custom GUI (Graphical User Interface) and your computer. 
This will allow you to control the state of the I/O pins on the LAPIS DEV BOARD.

Before starting, please review the following:
	1.) 	Read and review this document, and related ReadMe files in each of the sub directories
	2.) 	Read "Introduction to the LAPIS DEV BOARD.pdf" in this same directory
	3.) 	Read the Manual for the LAPIS DEV BOARD, as well as the Manual for the GUI (again, both are in this same directory)
	4.)	Review the manuals for the U8 Development Suite - Becoming familiar with this great suite of tools will be essential to getting the most 
		 out of your LAPIS DEV BOARD! (See: folder titled: "Manuals for the U8 Development Suite")



START UP GUIDE:
	1.)	Install U8 Development Suite on your computer 
		Installation includes “C” compiler, Debugger, Flash Programmer – used to write application code and debug its operation
		Installation also includes all the software manuals for the U8 Development tools
	2.)	Once U8 Development Suite is installed, connect your LAPIS DEV BOARD to your Computer via supplied USB Cable
	3.)	If FTDI drivers need installed to help computer connect to LAPIS DEV BOARD, please do so now. (See Read Me File in FTDI Virtual Com Port Drivers directory)
	4.)	Run the GUI, "LAPIS DEV BOARD_ControlSoftware_3-31-2014_rev01.exe" found in the folder: GUI Program 
	5.) 	Select your COM PORT and click the OPEN PORT Button in the GUI
	6.) 	Click "Test UART" Button in the GUI - The Console Window should now state that the LAPIS DEV BOARD ML610Q112 is connected to your computer



LAPIS DEV BOARD Disk FILE CONTENTS:
	1.) U8 Development Suite Installation CD image - (Compiler, IDE, Debugger, LAPIS U8 Manuals, etc.)
	2.) Data Sheets - Links to download latest Data Sheets
	3.) Express PCB Universal Socket Example - An example of an add-on board for the LAPIS DEV BOARD Platform - 
		Can be used to create custom Plug 'n Play boards for your LAPIS DEV BOARD.
	4.) FTDI Virtual Com Port Drivers - Driver may be needed to allow your LAPIS DEV BOARD to communicate with your Computer. They can be found here if needed.
	5.) GUI Program - Custom Graphical User Interface by Kris Bahar to allow communication between your LAPIS DEV BOARD and your Computer.
	6.) LAPIS DEV BOARD Design Files - Schematics, Board Layout Files, Gerber Files, Bill of Materials, etc. for the LAPIS DEV BOARD
	7.) Pictures for LAPIS DEV BOARD Manual - Various pictures used in LAPIS DEV BOARD Manuals
	8.) SAMPLE Code - Development Code for the LAPIS Semiconductor ML610Q111 & ML610Q112 microcontrollers 
		that can be tested out on this Development Board and to help develop your own applications
		a.) Q111 - 3COLOR_LED_LIGHTING
		b.) Q111 - Quad_Encod_PWM
		c.) Q111 - TEMPLATE
		d.) Q112 - 3COLOR_LED_LIGHTING
		e.) Q112 - Analog
		f.) Q112 - GPIO Complete
		g.) Q112 - PIR ALARM
		h.) Q112 - Quad_Encod_PWM
		i.) Q112 - TEMPLATE
		j.) Q178 - LED_LIGHTING
		k.) UART PAIR (Q111 to Q112 at 512k) (Connect RX of Q111 to TX of Q112 & TX of Q111 to RX of Q112 via 22ohm resistors)
	9.) LAPIS DEV BOARD User Manual (LAPIS DEV BOARD User Manual - Rev 2.7.pdf)
       10.) LAPIS DEV BOARD GUI Manual (LAPIS DEV BOARD GUI Manual - Rev 1.0.pdf)
       11.) Misc. - Contains miscellaneous, LAPIS files.
       12.) Documents:
		a.) Introduction to the LAPIS DEV BOARD.pdf
		b.) Out of Box Guide.pdf
		c.) LAPIS DEV BOARD User Manual - Rev 2.7.pdf
		d.) LAPIS DEV BOARD GUI Manual - Rev 1.0.pdf
		e.) LAPIS DEV BOARD READ ME FILE.TXT

Please contact Carl Schell (cschell@rohmsemiconductor.com) and Alec Melnick (amelnick@rohmsemiconductor.com) for help, support or questions regarding this LAPIS DEV BOARD Kit.

Good Luck in your designs!