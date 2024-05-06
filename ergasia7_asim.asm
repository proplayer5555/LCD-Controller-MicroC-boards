
_shiftBits:

;ergasia7_asim.c,28 :: 		void shiftBits(char b) {
;ergasia7_asim.c,30 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,31 :: 		if ((b&128)!=0) SDA1 else SDA0
	MOVLW       128
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits0
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits1
L_shiftBits0:
	BCF         PORTB+0, 6 
L_shiftBits1:
;ergasia7_asim.c,32 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,34 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,35 :: 		if ((b&64)!=0) SDA1 else SDA0
	MOVLW       64
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits2
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits3
L_shiftBits2:
	BCF         PORTB+0, 6 
L_shiftBits3:
;ergasia7_asim.c,36 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,38 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,39 :: 		if ((b&32)!=0) SDA1 else SDA0
	MOVLW       32
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits4
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits5
L_shiftBits4:
	BCF         PORTB+0, 6 
L_shiftBits5:
;ergasia7_asim.c,40 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,42 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,43 :: 		if ((b&16)!=0) SDA1 else SDA0
	MOVLW       16
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits6
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits7
L_shiftBits6:
	BCF         PORTB+0, 6 
L_shiftBits7:
;ergasia7_asim.c,44 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,46 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,47 :: 		if ((b&8)!=0) SDA1 else SDA0
	MOVLW       8
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits8
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits9
L_shiftBits8:
	BCF         PORTB+0, 6 
L_shiftBits9:
;ergasia7_asim.c,48 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,50 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,51 :: 		if ((b&4)!=0) SDA1 else SDA0
	MOVLW       4
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits10
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits11
L_shiftBits10:
	BCF         PORTB+0, 6 
L_shiftBits11:
;ergasia7_asim.c,52 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,54 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,55 :: 		if ((b&2)!=0) SDA1 else SDA0
	MOVLW       2
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits12
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits13
L_shiftBits12:
	BCF         PORTB+0, 6 
L_shiftBits13:
;ergasia7_asim.c,56 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,58 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,59 :: 		if ((b&1)!=0) SDA1 else SDA0
	MOVLW       1
	ANDWF       FARG_shiftBits_b+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_shiftBits14
	BSF         PORTB+0, 6 
	GOTO        L_shiftBits15
L_shiftBits14:
	BCF         PORTB+0, 6 
L_shiftBits15:
;ergasia7_asim.c,60 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,62 :: 		}
L_end_shiftBits:
	RETURN      0
; end of _shiftBits

_sendCMD:

;ergasia7_asim.c,66 :: 		void sendCMD(char datax) {
;ergasia7_asim.c,68 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,69 :: 		SDA0                      //0 indicates command
	BCF         PORTB+0, 6 
;ergasia7_asim.c,70 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,71 :: 		shiftBits(datax);
	MOVF        FARG_sendCMD_datax+0, 0 
	MOVWF       FARG_shiftBits_b+0 
	CALL        _shiftBits+0, 0
;ergasia7_asim.c,72 :: 		}
L_end_sendCMD:
	RETURN      0
; end of _sendCMD

_sendData:

;ergasia7_asim.c,76 :: 		void sendData(char datax) {
;ergasia7_asim.c,78 :: 		CLK0
	BCF         PORTB+0, 7 
;ergasia7_asim.c,79 :: 		SDA1                      //1 indicates data
	BSF         PORTB+0, 6 
;ergasia7_asim.c,80 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,82 :: 		shiftBits(datax);
	MOVF        FARG_sendData_datax+0, 0 
	MOVWF       FARG_shiftBits_b+0 
	CALL        _shiftBits+0, 0
;ergasia7_asim.c,84 :: 		}
L_end_sendData:
	RETURN      0
; end of _sendData

_setPixel:

;ergasia7_asim.c,86 :: 		void setPixel(char r_,char g_,char b_) {
;ergasia7_asim.c,88 :: 		red=r_;
	MOVF        FARG_setPixel_r_+0, 0 
	MOVWF       ergasia7_asim_red+0 
;ergasia7_asim.c,89 :: 		grn=g_;
	MOVF        FARG_setPixel_g_+0, 0 
	MOVWF       ergasia7_asim_grn+0 
;ergasia7_asim.c,90 :: 		blu=b_;
	MOVF        FARG_setPixel_b_+0, 0 
	MOVWF       ergasia7_asim_blu+0 
;ergasia7_asim.c,91 :: 		if (pix==0) {    // even pixel
	MOVF        ergasia7_asim_pix+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_setPixel16
;ergasia7_asim.c,92 :: 		s1=(red & 0xF0) | (grn>>4);
	MOVLW       240
	ANDWF       ergasia7_asim_red+0, 0 
	MOVWF       ergasia7_asim_s1+0 
	MOVF        ergasia7_asim_grn+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	IORWF       ergasia7_asim_s1+0, 1 
;ergasia7_asim.c,93 :: 		s2=(blu & 0xF0);
	MOVLW       240
	ANDWF       ergasia7_asim_blu+0, 0 
	MOVWF       ergasia7_asim_s2+0 
;ergasia7_asim.c,94 :: 		pix=1;
	MOVLW       1
	MOVWF       ergasia7_asim_pix+0 
;ergasia7_asim.c,95 :: 		} else {    //odd pixel
	GOTO        L_setPixel17
L_setPixel16:
;ergasia7_asim.c,96 :: 		pix=0;
	CLRF        ergasia7_asim_pix+0 
;ergasia7_asim.c,97 :: 		sendData(s1);
	MOVF        ergasia7_asim_s1+0, 0 
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,98 :: 		sendData(s2|(red>>4));
	MOVF        ergasia7_asim_red+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	IORWF       ergasia7_asim_s2+0, 0 
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,99 :: 		sendData((grn & 0xF0) | (blu>>4));
	MOVLW       240
	ANDWF       ergasia7_asim_grn+0, 0 
	MOVWF       FARG_sendData_datax+0 
	MOVF        ergasia7_asim_blu+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	IORWF       FARG_sendData_datax+0, 1 
	CALL        _sendData+0, 0
;ergasia7_asim.c,100 :: 		}
L_setPixel17:
;ergasia7_asim.c,102 :: 		}
L_end_setPixel:
	RETURN      0
; end of _setPixel

_read_keypad1:

;ergasia7_asim.c,105 :: 		char read_keypad1()
;ergasia7_asim.c,109 :: 		char TEMPB = PORTB;
	MOVF        PORTB+0, 0 
	MOVWF       R3 
;ergasia7_asim.c,110 :: 		char TEMPD = PORTD;
	MOVF        PORTD+0, 0 
	MOVWF       R4 
;ergasia7_asim.c,111 :: 		char TEMPTRISB = TRISB;
	MOVF        TRISB+0, 0 
	MOVWF       R5 
;ergasia7_asim.c,112 :: 		char TEMPTRISD = TRISD;
	MOVF        TRISD+0, 0 
	MOVWF       R6 
;ergasia7_asim.c,113 :: 		PORTB = 0xFF;
	MOVLW       255
	MOVWF       PORTB+0 
;ergasia7_asim.c,114 :: 		TRISD = 0xFF; //configure port B as input
	MOVLW       255
	MOVWF       TRISD+0 
;ergasia7_asim.c,115 :: 		TRISB = 0x00; //configure PORT D as outpout
	CLRF        TRISB+0 
;ergasia7_asim.c,116 :: 		PORTD = 0xFF; //set all pins of PORT D to 1;
	MOVLW       255
	MOVWF       PORTD+0 
;ergasia7_asim.c,117 :: 		key =0;
	CLRF        R2 
;ergasia7_asim.c,118 :: 		do {
L_read_keypad118:
;ergasia7_asim.c,120 :: 		PORTB.F0 = 0;
	BCF         PORTB+0, 0 
;ergasia7_asim.c,121 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_read_keypad121:
	DECFSZ      R13, 1, 1
	BRA         L_read_keypad121
	DECFSZ      R12, 1, 1
	BRA         L_read_keypad121
	NOP
;ergasia7_asim.c,122 :: 		var = PORTD;
	MOVF        PORTD+0, 0 
	MOVWF       R1 
;ergasia7_asim.c,123 :: 		if (var.F0 == 0) key = '<';
	BTFSC       R1, 0 
	GOTO        L_read_keypad122
	MOVLW       60
	MOVWF       R2 
	GOTO        L_read_keypad123
L_read_keypad122:
;ergasia7_asim.c,124 :: 		else if (var.F1 == 0) key = '7';
	BTFSC       R1, 1 
	GOTO        L_read_keypad124
	MOVLW       55
	MOVWF       R2 
	GOTO        L_read_keypad125
L_read_keypad124:
;ergasia7_asim.c,125 :: 		else if (var.F2 == 0) key = '4';
	BTFSC       R1, 2 
	GOTO        L_read_keypad126
	MOVLW       52
	MOVWF       R2 
	GOTO        L_read_keypad127
L_read_keypad126:
;ergasia7_asim.c,126 :: 		else if (var.F3 == 0) key = '1';
	BTFSC       R1, 3 
	GOTO        L_read_keypad128
	MOVLW       49
	MOVWF       R2 
L_read_keypad128:
L_read_keypad127:
L_read_keypad125:
L_read_keypad123:
;ergasia7_asim.c,127 :: 		PORTB.F0 =1;
	BSF         PORTB+0, 0 
;ergasia7_asim.c,129 :: 		PORTB.F1 = 0;
	BCF         PORTB+0, 1 
;ergasia7_asim.c,130 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_read_keypad129:
	DECFSZ      R13, 1, 1
	BRA         L_read_keypad129
	DECFSZ      R12, 1, 1
	BRA         L_read_keypad129
	NOP
;ergasia7_asim.c,131 :: 		var = PORTD;
	MOVF        PORTD+0, 0 
	MOVWF       R1 
;ergasia7_asim.c,132 :: 		if (var.F0 == 0) key = '0';
	BTFSC       R1, 0 
	GOTO        L_read_keypad130
	MOVLW       48
	MOVWF       R2 
	GOTO        L_read_keypad131
L_read_keypad130:
;ergasia7_asim.c,133 :: 		else if (var.F1 == 0) key = '8';
	BTFSC       R1, 1 
	GOTO        L_read_keypad132
	MOVLW       56
	MOVWF       R2 
	GOTO        L_read_keypad133
L_read_keypad132:
;ergasia7_asim.c,134 :: 		else if (var.F2 == 0) key = '5';
	BTFSC       R1, 2 
	GOTO        L_read_keypad134
	MOVLW       53
	MOVWF       R2 
	GOTO        L_read_keypad135
L_read_keypad134:
;ergasia7_asim.c,135 :: 		else if (var.F3 == 0) key = '2';
	BTFSC       R1, 3 
	GOTO        L_read_keypad136
	MOVLW       50
	MOVWF       R2 
L_read_keypad136:
L_read_keypad135:
L_read_keypad133:
L_read_keypad131:
;ergasia7_asim.c,136 :: 		PORTB.F1 =1;
	BSF         PORTB+0, 1 
;ergasia7_asim.c,138 :: 		PORTB.F2 =0;
	BCF         PORTB+0, 2 
;ergasia7_asim.c,139 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_read_keypad137:
	DECFSZ      R13, 1, 1
	BRA         L_read_keypad137
	DECFSZ      R12, 1, 1
	BRA         L_read_keypad137
	NOP
;ergasia7_asim.c,140 :: 		var = PORTD;
	MOVF        PORTD+0, 0 
	MOVWF       R1 
;ergasia7_asim.c,141 :: 		if (var.F0 == 0) key = '>';
	BTFSC       R1, 0 
	GOTO        L_read_keypad138
	MOVLW       62
	MOVWF       R2 
	GOTO        L_read_keypad139
L_read_keypad138:
;ergasia7_asim.c,142 :: 		else if (var.F1 == 0) key = '9';
	BTFSC       R1, 1 
	GOTO        L_read_keypad140
	MOVLW       57
	MOVWF       R2 
	GOTO        L_read_keypad141
L_read_keypad140:
;ergasia7_asim.c,143 :: 		else if (var.F2 == 0) key = '6';
	BTFSC       R1, 2 
	GOTO        L_read_keypad142
	MOVLW       54
	MOVWF       R2 
	GOTO        L_read_keypad143
L_read_keypad142:
;ergasia7_asim.c,144 :: 		else if (var.F3 == 0) key = '3';
	BTFSC       R1, 3 
	GOTO        L_read_keypad144
	MOVLW       51
	MOVWF       R2 
L_read_keypad144:
L_read_keypad143:
L_read_keypad141:
L_read_keypad139:
;ergasia7_asim.c,145 :: 		PORTB.F2 =1;
	BSF         PORTB+0, 2 
;ergasia7_asim.c,146 :: 		}while (key == 0);
	MOVF        R2, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_read_keypad118
;ergasia7_asim.c,147 :: 		PORTB = TEMPB ;
	MOVF        R3, 0 
	MOVWF       PORTB+0 
;ergasia7_asim.c,148 :: 		PORTD = TEMPD;
	MOVF        R4, 0 
	MOVWF       PORTD+0 
;ergasia7_asim.c,150 :: 		TRISB = TEMPTRISB ;
	MOVF        R5, 0 
	MOVWF       TRISB+0 
;ergasia7_asim.c,151 :: 		TRISD = TEMPTRISD ;
	MOVF        R6, 0 
	MOVWF       TRISD+0 
;ergasia7_asim.c,152 :: 		return key; //return ASCII code of key pressed.
	MOVF        R2, 0 
	MOVWF       R0 
;ergasia7_asim.c,153 :: 		}
L_end_read_keypad1:
	RETURN      0
; end of _read_keypad1

_main:

;ergasia7_asim.c,178 :: 		void main() {
;ergasia7_asim.c,183 :: 		unsigned keypressed='ê';
	MOVLW       234
	MOVWF       main_keypressed_L0+0 
	MOVLW       0
	MOVWF       main_keypressed_L0+1 
;ergasia7_asim.c,189 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;ergasia7_asim.c,190 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ergasia7_asim.c,192 :: 		PORTB = 0;
	CLRF        PORTB+0 
;ergasia7_asim.c,193 :: 		TRISB = 0;
	CLRF        TRISB+0 
;ergasia7_asim.c,195 :: 		CS0
	BCF         PORTB+0, 5 
;ergasia7_asim.c,196 :: 		SDA0
	BCF         PORTB+0, 6 
;ergasia7_asim.c,197 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,200 :: 		RESET1          //Send harware RESET signal
	BSF         PORTB+0, 4 
;ergasia7_asim.c,201 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main45:
	DECFSZ      R13, 1, 1
	BRA         L_main45
	DECFSZ      R12, 1, 1
	BRA         L_main45
	NOP
;ergasia7_asim.c,202 :: 		RESET0
	BCF         PORTB+0, 4 
;ergasia7_asim.c,203 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main46:
	DECFSZ      R13, 1, 1
	BRA         L_main46
	DECFSZ      R12, 1, 1
	BRA         L_main46
	NOP
;ergasia7_asim.c,204 :: 		RESET1
	BSF         PORTB+0, 4 
;ergasia7_asim.c,206 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,207 :: 		SDA1
	BSF         PORTB+0, 6 
;ergasia7_asim.c,208 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,210 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main47:
	DECFSZ      R13, 1, 1
	BRA         L_main47
	DECFSZ      R12, 1, 1
	BRA         L_main47
	NOP
;ergasia7_asim.c,213 :: 		sendCMD(0x01);
	MOVLW       1
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,216 :: 		sendCMD(0x11);
	MOVLW       17
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,219 :: 		sendCMD(0x03);
	MOVLW       3
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,221 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main48:
	DECFSZ      R13, 1, 1
	BRA         L_main48
	DECFSZ      R12, 1, 1
	BRA         L_main48
	NOP
;ergasia7_asim.c,224 :: 		sendCMD(0x29);
	MOVLW       41
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,227 :: 		sendCMD(0x13);
	MOVLW       19
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,230 :: 		sendCMD(0x20);
	MOVLW       32
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,233 :: 		sendCMD(0xBA);
	MOVLW       186
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,236 :: 		sendCMD(0x3A);
	MOVLW       58
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,237 :: 		sendData(3);   //12-Bit per Pixel (default)
	MOVLW       3
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,240 :: 		sendCMD(0x25);
	MOVLW       37
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,241 :: 		sendData(127);
	MOVLW       127
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,244 :: 		sendCMD(0x2A);
	MOVLW       42
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,245 :: 		sendData(51);
	MOVLW       51
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,246 :: 		sendData(81);
	MOVLW       81
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,249 :: 		sendCMD(0x2B);
	MOVLW       43
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,250 :: 		sendData(46);
	MOVLW       46
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,251 :: 		sendData(86);
	MOVLW       86
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,254 :: 		sendCMD(0x2C);
	MOVLW       44
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,260 :: 		do{
L_main49:
;ergasia7_asim.c,261 :: 		keypressed=read_keypad1();
	CALL        _read_keypad1+0, 0
	MOVF        R0, 0 
	MOVWF       main_keypressed_L0+0 
	MOVLW       0
	MOVWF       main_keypressed_L0+1 
;ergasia7_asim.c,264 :: 		if(keypressed=='1'){
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main85
	MOVLW       49
	XORWF       main_keypressed_L0+0, 0 
L__main85:
	BTFSS       STATUS+0, 2 
	GOTO        L_main52
;ergasia7_asim.c,265 :: 		LCD_Out(1,1,"1695");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_ergasia7_asim+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_ergasia7_asim+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ergasia7_asim.c,267 :: 		do {
L_main53:
;ergasia7_asim.c,269 :: 		for (i=0;i<30*40;i++) {
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
L_main56:
	MOVLW       4
	SUBWF       main_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main86
	MOVLW       176
	SUBWF       main_i_L0+0, 0 
L__main86:
	BTFSC       STATUS+0, 0 
	GOTO        L_main57
;ergasia7_asim.c,270 :: 		setPixel(255,255,0);
	MOVLW       255
	MOVWF       FARG_setPixel_r_+0 
	MOVLW       255
	MOVWF       FARG_setPixel_g_+0 
	CLRF        FARG_setPixel_b_+0 
	CALL        _setPixel+0, 0
;ergasia7_asim.c,269 :: 		for (i=0;i<30*40;i++) {
	INFSNZ      main_i_L0+0, 1 
	INCF        main_i_L0+1, 1 
;ergasia7_asim.c,271 :: 		}
	GOTO        L_main56
L_main57:
;ergasia7_asim.c,272 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main59:
	DECFSZ      R13, 1, 1
	BRA         L_main59
	DECFSZ      R12, 1, 1
	BRA         L_main59
	DECFSZ      R11, 1, 1
	BRA         L_main59
	NOP
	NOP
;ergasia7_asim.c,274 :: 		for (i=0;i<30*40;i++) {
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
L_main60:
	MOVLW       4
	SUBWF       main_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main87
	MOVLW       176
	SUBWF       main_i_L0+0, 0 
L__main87:
	BTFSC       STATUS+0, 0 
	GOTO        L_main61
;ergasia7_asim.c,275 :: 		setPixel(255,255,255);
	MOVLW       255
	MOVWF       FARG_setPixel_r_+0 
	MOVLW       255
	MOVWF       FARG_setPixel_g_+0 
	MOVLW       255
	MOVWF       FARG_setPixel_b_+0 
	CALL        _setPixel+0, 0
;ergasia7_asim.c,274 :: 		for (i=0;i<30*40;i++) {
	INFSNZ      main_i_L0+0, 1 
	INCF        main_i_L0+1, 1 
;ergasia7_asim.c,276 :: 		}
	GOTO        L_main60
L_main61:
;ergasia7_asim.c,277 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main63:
	DECFSZ      R13, 1, 1
	BRA         L_main63
	DECFSZ      R12, 1, 1
	BRA         L_main63
	DECFSZ      R11, 1, 1
	BRA         L_main63
	NOP
	NOP
;ergasia7_asim.c,278 :: 		}while(1);
	GOTO        L_main53
;ergasia7_asim.c,279 :: 		}
L_main52:
;ergasia7_asim.c,282 :: 		if (keypressed=='0'||keypressed=='1'||keypressed=='2'||keypressed=='3'||keypressed=='4'||keypressed=='5'||keypressed=='6'||keypressed=='7'||keypressed=='8'||keypressed=='9'||keypressed=='#'||keypressed=='*'){
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main88
	MOVLW       48
	XORWF       main_keypressed_L0+0, 0 
L__main88:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main89
	MOVLW       49
	XORWF       main_keypressed_L0+0, 0 
L__main89:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main90
	MOVLW       50
	XORWF       main_keypressed_L0+0, 0 
L__main90:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main91
	MOVLW       51
	XORWF       main_keypressed_L0+0, 0 
L__main91:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main92
	MOVLW       52
	XORWF       main_keypressed_L0+0, 0 
L__main92:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main93
	MOVLW       53
	XORWF       main_keypressed_L0+0, 0 
L__main93:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main94
	MOVLW       54
	XORWF       main_keypressed_L0+0, 0 
L__main94:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main95
	MOVLW       55
	XORWF       main_keypressed_L0+0, 0 
L__main95:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main96
	MOVLW       56
	XORWF       main_keypressed_L0+0, 0 
L__main96:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main97
	MOVLW       57
	XORWF       main_keypressed_L0+0, 0 
L__main97:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main98
	MOVLW       35
	XORWF       main_keypressed_L0+0, 0 
L__main98:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	MOVLW       0
	XORWF       main_keypressed_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main99
	MOVLW       42
	XORWF       main_keypressed_L0+0, 0 
L__main99:
	BTFSC       STATUS+0, 2 
	GOTO        L__main78
	GOTO        L_main66
L__main78:
;ergasia7_asim.c,283 :: 		LCD_Out(1,1,"1695");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_ergasia7_asim+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_ergasia7_asim+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ergasia7_asim.c,284 :: 		RESET1          //Send harware RESET signal
	BSF         PORTB+0, 4 
;ergasia7_asim.c,285 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main67:
	DECFSZ      R13, 1, 1
	BRA         L_main67
	DECFSZ      R12, 1, 1
	BRA         L_main67
	NOP
;ergasia7_asim.c,286 :: 		RESET0
	BCF         PORTB+0, 4 
;ergasia7_asim.c,287 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main68:
	DECFSZ      R13, 1, 1
	BRA         L_main68
	DECFSZ      R12, 1, 1
	BRA         L_main68
	NOP
;ergasia7_asim.c,288 :: 		RESET1
	BSF         PORTB+0, 4 
;ergasia7_asim.c,290 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,291 :: 		SDA1
	BSF         PORTB+0, 6 
;ergasia7_asim.c,292 :: 		CLK1
	BSF         PORTB+0, 7 
;ergasia7_asim.c,294 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main69:
	DECFSZ      R13, 1, 1
	BRA         L_main69
	DECFSZ      R12, 1, 1
	BRA         L_main69
	NOP
;ergasia7_asim.c,297 :: 		sendCMD(0x01);
	MOVLW       1
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,300 :: 		sendCMD(0x11);
	MOVLW       17
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,303 :: 		sendCMD(0x03);
	MOVLW       3
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,305 :: 		delay_ms(10);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main70:
	DECFSZ      R13, 1, 1
	BRA         L_main70
	DECFSZ      R12, 1, 1
	BRA         L_main70
	NOP
;ergasia7_asim.c,308 :: 		sendCMD(0x29);
	MOVLW       41
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,311 :: 		sendCMD(0x13);
	MOVLW       19
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,314 :: 		sendCMD(0x20);
	MOVLW       32
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,317 :: 		sendCMD(0xBA);
	MOVLW       186
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,320 :: 		sendCMD(0x3A);
	MOVLW       58
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,321 :: 		sendData(3);   //12-Bit per Pixel (default)
	MOVLW       3
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,324 :: 		sendCMD(0x25);
	MOVLW       37
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,325 :: 		sendData(127);
	MOVLW       127
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,328 :: 		sendCMD(0x2A);
	MOVLW       42
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,329 :: 		sendData(52);
	MOVLW       52
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,330 :: 		sendData(131);
	MOVLW       131
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,333 :: 		sendCMD(0x2B);
	MOVLW       43
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,334 :: 		sendData(0);
	CLRF        FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,335 :: 		sendData(79);
	MOVLW       79
	MOVWF       FARG_sendData_datax+0 
	CALL        _sendData+0, 0
;ergasia7_asim.c,338 :: 		sendCMD(0x2C);
	MOVLW       44
	MOVWF       FARG_sendCMD_datax+0 
	CALL        _sendCMD+0, 0
;ergasia7_asim.c,341 :: 		do {
L_main71:
;ergasia7_asim.c,343 :: 		for (i=0;i<80*80;i++) {
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
L_main74:
	MOVLW       25
	SUBWF       main_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main100
	MOVLW       0
	SUBWF       main_i_L0+0, 0 
L__main100:
	BTFSC       STATUS+0, 0 
	GOTO        L_main75
;ergasia7_asim.c,344 :: 		setPixel(100,100,100);
	MOVLW       100
	MOVWF       FARG_setPixel_r_+0 
	MOVLW       100
	MOVWF       FARG_setPixel_g_+0 
	MOVLW       100
	MOVWF       FARG_setPixel_b_+0 
	CALL        _setPixel+0, 0
;ergasia7_asim.c,343 :: 		for (i=0;i<80*80;i++) {
	INFSNZ      main_i_L0+0, 1 
	INCF        main_i_L0+1, 1 
;ergasia7_asim.c,345 :: 		}
	GOTO        L_main74
L_main75:
;ergasia7_asim.c,346 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main77:
	DECFSZ      R13, 1, 1
	BRA         L_main77
	DECFSZ      R12, 1, 1
	BRA         L_main77
	DECFSZ      R11, 1, 1
	BRA         L_main77
	NOP
	NOP
;ergasia7_asim.c,348 :: 		}while(1);
	GOTO        L_main71
;ergasia7_asim.c,351 :: 		}
L_main66:
;ergasia7_asim.c,353 :: 		keypressed='ê';
	MOVLW       234
	MOVWF       main_keypressed_L0+0 
	MOVLW       0
	MOVWF       main_keypressed_L0+1 
;ergasia7_asim.c,354 :: 		}while(1);
	GOTO        L_main49
;ergasia7_asim.c,357 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
