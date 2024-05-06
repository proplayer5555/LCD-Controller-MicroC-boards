static char pix;
static char s1,s2;
static char red,grn,blu,x1,y1;
static unsigned char c1,d1,e1;



#define spi_clk   PORTB.F7   // pin clock
#define spi_dta   PORTB.F6   // pin data
#define spi_cs    PORTB.F5   // pin select
#define spi_reset PORTB.F4   // pin reset


#define CS0 spi_cs=0;
#define CS1 spi_cs=1;
#define CLK0 spi_clk=0;
#define CLK1 spi_clk=1;
#define SDA0 spi_dta=0;
#define SDA1 spi_dta=1;
#define RESET0 spi_reset=0;
#define RESET1 spi_reset=1;

void sendCMD(char cmd);
void sendData(char cmd);
void shiftBits(char b);
void setPixel(char r,char g,char b);

 void shiftBits(char b) {

  CLK0
  if ((b&128)!=0) SDA1 else SDA0
  CLK1

  CLK0
  if ((b&64)!=0) SDA1 else SDA0
  CLK1

  CLK0
  if ((b&32)!=0) SDA1 else SDA0
  CLK1

  CLK0
  if ((b&16)!=0) SDA1 else SDA0
  CLK1

  CLK0
  if ((b&8)!=0) SDA1 else SDA0
  CLK1

  CLK0
  if ((b&4)!=0) SDA1 else SDA0
  CLK1

  CLK0
  if ((b&2)!=0) SDA1 else SDA0
  CLK1

  CLK0
  if ((b&1)!=0) SDA1 else SDA0
  CLK1

}


//send command
void sendCMD(char datax) {

  CLK0
  SDA0                      //0 indicates command
  CLK1
  shiftBits(datax);
}



void sendData(char datax) {

  CLK0
  SDA1                      //1 indicates data
  CLK1

  shiftBits(datax);

}

void setPixel(char r_,char g_,char b_) {

  red=r_;
  grn=g_;
  blu=b_;
  if (pix==0) {    // even pixel
    s1=(red & 0xF0) | (grn>>4);
    s2=(blu & 0xF0);
    pix=1;
  } else {    //odd pixel
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
 TRISD = 0xFF; //configure port B as input
 TRISB = 0x00; //configure PORT D as outpout
 PORTD = 0xFF; //set all pins of PORT D to 1;
 key =0;
 do {
 // scan first row
 PORTB.F0 = 0;
 delay_ms(10);
 var = PORTD;
 if (var.F0 == 0) key = '<';
 else if (var.F1 == 0) key = '7';
 else if (var.F2 == 0) key = '4';
 else if (var.F3 == 0) key = '1';
 PORTB.F0 =1;
 // scan second row
 PORTB.F1 = 0;
 delay_ms(10);
 var = PORTD;
 if (var.F0 == 0) key = '0';
 else if (var.F1 == 0) key = '8';
 else if (var.F2 == 0) key = '5';
 else if (var.F3 == 0) key = '2';
 PORTB.F1 =1;
 // scan third row
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
 return key; //return ASCII code of key pressed.
}
// Lcd pinout settings
sbit LCD_RS at RE2_bit;
sbit LCD_EN at RE1_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;

// Pin direction
sbit LCD_RS_Direction at TRISE2_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;

// Software I2C connections
sbit Soft_I2C_Scl           at RC3_bit;
sbit Soft_I2C_Sda           at RC4_bit;
sbit Soft_I2C_Scl_Direction at TRISC3_bit;
sbit Soft_I2C_Sda_Direction at TRISC4_bit;
// End Software I2C connections


void main() {


char *text1;
  char mem_data;
  unsigned keypressed='ê';

  unsigned char tmp;
  unsigned i;
text1 = "1695";

Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);

  PORTB = 0;
  TRISB = 0;

  CS0
  SDA0
  CLK1


 RESET1          //Send harware RESET signal
 delay_ms(10);
 RESET0
 delay_ms(10);
 RESET1

  CLK1
  SDA1
  CLK1

  delay_ms(10);

 //Software Reset
  sendCMD(0x01);

  //Sleep Out
  sendCMD(0x11);

  //Booster ON
  sendCMD(0x03);

  delay_ms(10);

  //Display On
  sendCMD(0x29);

  //Normal display mode
  sendCMD(0x13);

  //Display inversion off
  sendCMD(0x20);

  //Data order
  sendCMD(0xBA);


  sendCMD(0x3A);
  sendData(3);   //12-Bit per Pixel (default)

  //Set Constrast
  sendCMD(0x25);
  sendData(127);

  //Column Adress Set
  sendCMD(0x2A);
  sendData(51);
  sendData(81);

  //Page Adress Set
  sendCMD(0x2B);
  sendData(46);
  sendData(86);

  //Memory Write
  sendCMD(0x2C);





  do{
  keypressed=read_keypad1();


  if(keypressed=='1'){
  LCD_Out(1,1,"1695");
   //paint display area
   do {
    //yellow bar
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
   RESET1          //Send harware RESET signal
 delay_ms(10);
 RESET0
 delay_ms(10);
 RESET1

  CLK1
  SDA1
  CLK1

  delay_ms(10);

 //Software Reset
  sendCMD(0x01);

  //Sleep Out
  sendCMD(0x11);

  //Booster ON
  sendCMD(0x03);

  delay_ms(10);

  //Display On
  sendCMD(0x29);

  //Normal display mode
  sendCMD(0x13);

  //Display inversion off
  sendCMD(0x20);

  //Data order
  sendCMD(0xBA);


  sendCMD(0x3A);
  sendData(3);   //12-Bit per Pixel (default)

  //Set Constrast
  sendCMD(0x25);
  sendData(127);
  
  //Column Adress Set
  sendCMD(0x2A);
  sendData(52);
  sendData(131);

  //Page Adress Set
  sendCMD(0x2B);
  sendData(0);
  sendData(79);

  //Memory Write
  sendCMD(0x2C);
    //paint display area

   do {
    //yellow bar
    for (i=0;i<80*80;i++) {
      setPixel(100,100,100);
    }
    delay_ms(1000);

  }while(1);


  }

  keypressed='ê';
  }while(1);


}