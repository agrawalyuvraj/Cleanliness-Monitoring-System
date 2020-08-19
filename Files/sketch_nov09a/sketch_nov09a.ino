#include <SoftwareSerial.h>

int a0 = 0;      // variables to store the read value
int a1 = 0;
int a2 = 0;
int b0 = 0;
int b1 = 0;
int b2 = 0;
int flag = 0;
String str = "";
int d1, d2 = 0;


SoftwareSerial mySerial(12, 13); //A6 Tx & Rx is connected to Arduino #12 & #13


void setup() {
  pinMode(5, INPUT);    // sets the digital pins as input
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(8, INPUT);
  pinMode(9, INPUT);
  pinMode(10, INPUT);
  pinMode(11, INPUT);
  
      Serial.begin(9600);
      
      //Begin serial communication with Arduino and A6
      mySerial.begin(9600);    
}

void loop() {
  flag = digitalRead(11);
    if(flag == 1)  {
      a0 = digitalRead(7);
      a1 = digitalRead(6);
      a2 = digitalRead(5);
      b0 = digitalRead(10);
      b1 = digitalRead(9);
      b2 = digitalRead(8);

      d1 =  a1*pow(2,a1) + a2*pow(4,a2);
      d1 =  d1 + a0;
      d2 =  b1*pow(2,b1) + b2*pow(4,b2);
      d2 =  d2 + b0;
      
      str = str + "The wing A is cleaned for " + String(d1) + " day(s)" + "   The wing B is cleaned for " + String(d2) + " day(s).";

      mySerial.println("AT"); //Once the handshake test is successful, it will back to OK
      updateSerial();
    
      mySerial.println("AT+CMGF=1"); // Configuring TEXT mode
      updateSerial();
      mySerial.println("AT+CMGS=\"+918619602692\"");//change ZZ with country code and xxxxxxxxxxx with phone number to sms
      updateSerial();
      mySerial.print(str); //text content
      updateSerial();
      mySerial.write(26);

      str="";
    }
  }

void updateSerial()
{
  delay(500);
  while (Serial.available()) 
  {
    mySerial.write(Serial.read());//Forward what Serial received to Software Serial Port
  }
  while(mySerial.available()) 
  {
    Serial.write(mySerial.read());//Forward what Software Serial received to Serial Port
  }
}
