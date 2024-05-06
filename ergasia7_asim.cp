#line 1 "C:/Users/propl/OneDrive/Υπολογιστής/ergasia7_asimopoylos/ergasia7_asim.c"
static char pix;
static char s1,s2;
static char red,grn,blu,x1,y1;
static unsigned char c1,d1,e1;
#line 23 "C:/Users/propl/OneDrive/Υπολογιστής/ergasia7_asimopoylos/ergasia7_asim.c"
void sendCMD(char cmd);
void sendData(char cmd);
void shiftBits(char b);
void setPixel(char r,char g,char b);

 void shiftBits(char b) {

  PORTB.F7 =0; 
 if ((b&128)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

  PORTB.F7 =0; 
 if ((b&64)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

  PORTB.F7 =0; 
 if ((b&32)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

  PORTB.F7 =0; 
 if ((b&16)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

  PORTB.F7 =0; 
 if ((b&8)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

  PORTB.F7 =0; 
 if ((b&4)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

  PORTB.F7 =0; 
 if ((b&2)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

  PORTB.F7 =0; 
 if ((b&1)!=0)  PORTB.F6 =1;  else  PORTB.F6 =0; 
  PORTB.F7 =1; 

}



void sendCMD(char datax) {

  PORTB.F7 =0; 
  PORTB.F6 =0; 
  PORTB.F7 =1; 
 shiftBits(datax);
}



void sendData(char datax) {

  PORTB.F7 =0; 
  PORTB.F6 =1; 
  PORTB.F7 =1; 

 shiftBits(datax);

}

void setPixel(char r_,char g_,char b_) {

 red=r_;
 grn=g_;
 blu=b_;
 if (pix==0) {
 s1=(red & 0xF0) | (grn>>4);
 s2=(blu & 0xF0);
 pix=1;
 } else {
 pix=0;
 sendData(s1);
 sendData(s2|(red>>4));
 sendData((grn & 0xF0) | (blu>>4));
 }

}


char read_keypad1()
{
 char var, key;
 int i,j;
 char TEMPB = PORTB;
 char TEMPD = PORTD;
 char TEMPTRISB = TRISB;
 char TEMPTRISD = TRISD;
 PORTB = 0xFF;
 TRISD = 0xFF;
 TRISB = 0x00;
 PORTD = 0xFF;
 key =0;
 do {

 PORTB.F0 = 0;
 delay_ms(10);
 var = PORTD;
 if (var.F0 == 0) key = '<';
 else if (var.F1 == 0) key = '7';
 else if (var.F2 == 0) key = '4';
 else if (var.F3 == 0) key = '1';
 PORTB.F0 =1;

 PORTB.F1 = 0;
 delay_ms(10);
 var = PORTD;
 if (var.F0 == 0) key = '0';
 else if (var.F1 == 0) key = '8';
 else if (var.F2 == 0) key = '5';
 else if (var.F3 == 0) key = '2';
 PORTB.F1 =1;

 PORTB.F2 =0;
 delay_ms(10);
 var = PORTD;
 if (var.F0 == 0) key = '>';
 else if (var.F1 == 0) key = '9';
 else if (var.F2 == 0) key = '6';
 else if (var.F3 == 0) key = '3';
 PORTB.F2 =1;
 }while (key == 0);
 PORTB = TEMPB ;
 PORTD = TEMPD;

 TRISB = TEMPTRISB ;
 TRISD = TEMPTRISD ;
 return key;
}

sbit LCD_RS at RE2_bit;
sbit LCD_EN at RE1_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;


sbit LCD_RS_Direction at TRISE2_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;


sbit Soft_I2C_Scl at RC3_bit;
sbit Soft_I2C_Sda at RC4_bit;
sbit Soft_I2C_Scl_Direction at TRISC3_bit;
sbit Soft_I2C_Sda_Direction at TRISC4_bit;



void main() {


char *text1;
 char mem_data;
 unsigned keypressed='κ';

 unsigned char tmp;
 unsigned i;
text1 = "1695";

Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);

 PORTB = 0;
 TRISB = 0;

  PORTB.F5 =0; 
  PORTB.F6 =0; 
  PORTB.F7 =1; 


  PORTB.F4 =1; 
 delay_ms(10);
  PORTB.F4 =0; 
 delay_ms(10);
  PORTB.F4 =1; 

  PORTB.F7 =1; 
  PORTB.F6 =1; 
  PORTB.F7 =1; 

 delay_ms(10);


 sendCMD(0x01);


 sendCMD(0x11);


 sendCMD(0x03);

 delay_ms(10);


 sendCMD(0x29);


 sendCMD(0x13);


 sendCMD(0x20);


 sendCMD(0xBA);


 sendCMD(0x3A);
 sendData(3);


 sendCMD(0x25);
 sendData(127);


 sendCMD(0x2A);
 sendData(51);
 sendData(81);


 sendCMD(0x2B);
 sendData(46);
 sendData(86);


 sendCMD(0x2C);





 do{
 keypressed=read_keypad1();


 if(keypressed=='1'){
 LCD_Out(1,1,"1695");

 do {

 for (i=0;i<30*40;i++) {
 setPixel(255,255,0);
 }
 delay_ms(1000);

 for (i=0;i<30*40;i++) {
 setPixel(255,255,255);
 }
 delay_ms(1000);
 }while(1);
 }


 if (keypressed=='0'||keypressed=='1'||keypressed=='2'||keypressed=='3'||keypressed=='4'||keypressed=='5'||keypressed=='6'||keypressed=='7'||keypressed=='8'||keypressed=='9'||keypressed=='#'||keypressed=='*'){
 LCD_Out(1,1,"1695");
  PORTB.F4 =1; 
 delay_ms(10);
  PORTB.F4 =0; 
 delay_ms(10);
  PORTB.F4 =1; 

  PORTB.F7 =1; 
  PORTB.F6 =1; 
  PORTB.F7 =1; 

 delay_ms(10);


 sendCMD(0x01);


 sendCMD(0x11);


 sendCMD(0x03);

 delay_ms(10);


 sendCMD(0x29);


 sendCMD(0x13);


 sendCMD(0x20);


 sendCMD(0xBA);


 sendCMD(0x3A);
 sendData(3);


 sendCMD(0x25);
 sendData(127);


 sendCMD(0x2A);
 sendData(52);
 sendData(131);


 sendCMD(0x2B);
 sendData(0);
 sendData(79);


 sendCMD(0x2C);


 do {

 for (i=0;i<80*80;i++) {
 setPixel(100,100,100);
 }
 delay_ms(1000);

 }while(1);


 }

 keypressed='κ';
 }while(1);


}
