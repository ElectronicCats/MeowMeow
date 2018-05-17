/************************************************************
SPANISH
MeowMeow.ino
Meow Meow - 
Andres Sabas @ Electronic Cats
Eduardo Contreras @ Electronic Cats
Original Creation Date: April 17, 2018
https://github.com/ElectronicCats/MeowMeow

Este ejemplos demuestra el funcionamiento basico del kit Meow Meow
http://electroniccats.com

Especificaciones del entorno de Desarrollo:
  IDE: Arduino 1.8.4
  Plataforma de Hardware:
  Meow Meow
  - SAMD21G18

Este código es beerware si tu me ves ( o cualquier otro miembro de Electronic Cats) 
a nivel local, y tu has encontrado nuestro código útil ,
por favor comprar una ronda de cervezas!

Distribuido como; no se da ninguna garantía.

************************************************************/

/************************************************************
ENGLISH
CatSat.ino
Meow Meow - 
Andres Sabas @ Electronic Cats
Original Creation Date: April 17, 2018
https://github.com/ElectronicCats/MeowMeow

This example demonstrates how to use Meow Meow

Development environment specifics:
  IDE: Arduino 1.8.4
  Hardware Platform:
  Meow Meow
  - SAMD21G18

This code is beerware; if you see me (or any other Electronic Cats 
member) at the local, and you've found our code helpful, 
please buy us a round!

Distributed as-is; no warranty is given.

Library Adafruit FreeTouch
https://github.com/adafruit/Adafruit_FreeTouch

*/
#include "Keyboard.h"
#include "Adafruit_FreeTouch.h"

Adafruit_FreeTouch qt_1 = Adafruit_FreeTouch(A0, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);  //A0
Adafruit_FreeTouch qt_2 = Adafruit_FreeTouch(A1, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); //AREF
Adafruit_FreeTouch qt_3 = Adafruit_FreeTouch(A2, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_4 = Adafruit_FreeTouch(A3, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_5 = Adafruit_FreeTouch(A4, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_6 = Adafruit_FreeTouch(A5, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_7 = Adafruit_FreeTouch(A6, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_8 = Adafruit_FreeTouch(A7, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); //A1
Adafruit_FreeTouch qt_9 = Adafruit_FreeTouch(A8, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_10 = Adafruit_FreeTouch(A9, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);

Adafruit_FreeTouch *p[10] = { &qt_1, &qt_2, &qt_3, &qt_4, &qt_5, &qt_6, &qt_7, &qt_8, &qt_9, &qt_10 };
//Adafruit_FreeTouch *p[10] = { &qt_2 };

#define BUFFER_LENGTH    3     // 3 bytes gives us 24 samples
#define NUM_INPUTS       10    // 6 on the front + 4 on the back

int touch = 600;    // Change this variable to something between your capacitive touch serial readouts for on and off

byte byteCounter = 0;
byte bitCounter = 0;

/////////////////////////
// STRUCT ///////////////
/////////////////////////
typedef struct {
  byte pinNumber;
  int keyCode;
  byte measurementBuffer[BUFFER_LENGTH]; 
  boolean oldestMeasurement;
  byte bufferSum;
  boolean pressed;
  boolean prevPressed;
  boolean isMouseMotion;
  boolean isMouseButton;
  boolean isKey;
} 
MeowMeowInput;

MeowMeowInput inputs[NUM_INPUTS];

// Pin Numbers
// input pin numbers for kickstarter production board
int pinNumbers[NUM_INPUTS] = {
  A0, A1, A2, A3, A4, A5,     // top of makey makey board
  A6, A7, A8, A9        // left side of female header, KEYBOARD 
};

/*
int pinNumbers[NUM_INPUTS] = {
  A1 
};
*/

void setup() {
  #ifdef DEBUG
  Serial.begin(115200);
  while (!Serial);
  Serial.println("Meow");
  Serial.println("Meow");
  #endif
  
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);

 //   if (! qt_1.begin())  
 //   Serial.println(F("Failed to begin qt on pin A0"));
  if (! qt_2.begin())  
    Serial.println(F("Failed to begin qt on pin A1"));
  if (! qt_3.begin())  
    Serial.println(F("Failed to begin qt on pin A2"));
  if (! qt_4.begin())  
    Serial.println(F("Failed to begin qt on pin A3"));
        if (! qt_5.begin())  
    Serial.println(F("Failed to begin qt on pin A4"));
  if (! qt_6.begin())  
    Serial.println(F("Failed to begin qt on pin A5"));
  if (! qt_7.begin())  
    Serial.println(F("Failed to begin qt on pin A6"));
  if (! qt_8.begin())  
    Serial.println(F("Failed to begin qt on pin A7"));
  if (! qt_9.begin())  
   Serial.println(F("Failed to begin qt on pin A8"));
  if (! qt_10.begin())  
   Serial.println(F("Failed to begin qt on pin A9"));

 
  Keyboard.begin();
}

void loop() {

  updateMeasurementBuffers();
  //updateBufferSums();
  updateBufferIndex();
}

//////////////////////////////
// UPDATE MEASUREMENT BUFFERS
//////////////////////////////
void updateMeasurementBuffers() {

  for (int i=0; i<NUM_INPUTS; i++) {

    // store the oldest measurement, which is the one at the current index,
    // before we update it to the new one 
    // we use oldest measurement in updateBufferSums
    byte currentByte = inputs[i].measurementBuffer[byteCounter];
    inputs[i].oldestMeasurement = (currentByte >> bitCounter) & 0x01; 

    // make the new measurement
    long newState = (p[i]->measure());
    boolean newMeasurement = ((newState > touch)? 1 : 0);
  
    Serial.print("Index:");Serial.println(i);
    Serial.println(p[i]->measure());
    Serial.println(newMeasurement);
    // invert so that true means the switch is closed
    newMeasurement = !newMeasurement; 
    Serial.println(newMeasurement);
    // store it    
    if (newMeasurement) {
      currentByte |= (1<<bitCounter);
      //Serial.print("Current OR:");Serial.println(currentByte);
    } 
    else {
      currentByte &= ~(1<<bitCounter);
      //Serial.print("Current AND");Serial.println(currentByte);
    }
    inputs[i].measurementBuffer[byteCounter] = currentByte;
    //Serial.println(inputs[i].measurementBuffer[byteCounter]);
  }
}

///////////////////////////
// UPDATE BUFFER INDEX
///////////////////////////
void updateBufferIndex() {
  bitCounter++;
  if (bitCounter == 8) {
    bitCounter = 0;
    byteCounter++;
    if (byteCounter == BUFFER_LENGTH) {
      byteCounter = 0;
    }
  }
}


