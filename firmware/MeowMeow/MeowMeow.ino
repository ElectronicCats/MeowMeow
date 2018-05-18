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

Basado en el trabajo de:
 Eric Rosenbaum, Jay Silver, and Jim Lindblom
 MIT Media Lab & Sparkfun

************************************************************/

/************************************************************
ENGLISH
MeowMeow.ino
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

Based in the work by:
 Eric Rosenbaum, Jay Silver, and Jim Lindblom
 MIT Media Lab & Sparkfun

Library Adafruit FreeTouch
https://github.com/adafruit/Adafruit_FreeTouch

*/

////////////////////////
// DEBUG DEFINITIONS ////               
/////////////////////////
//#define DEBUG
//#define DEBUG2 
//#define DEBUG3 


#define BUFFER_LENGTH    3     // 3 bytes gives us 24 samples
#define NUM_INPUTS       10    // 6 on the front + 4 on the back

#include "Keyboard.h"
#include <Mouse.h>
#include "Adafruit_FreeTouch.h"
#include "settings.h"

Adafruit_FreeTouch qt_0 = Adafruit_FreeTouch(A0, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);  
Adafruit_FreeTouch qt_1 = Adafruit_FreeTouch(A1, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_2 = Adafruit_FreeTouch(A2, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_3 = Adafruit_FreeTouch(A3, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_4 = Adafruit_FreeTouch(A4, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_5 = Adafruit_FreeTouch(A5, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_6 = Adafruit_FreeTouch(A6, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_7 = Adafruit_FreeTouch(A7, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_8 = Adafruit_FreeTouch(A8, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);
Adafruit_FreeTouch qt_9 = Adafruit_FreeTouch(A9, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE);

Adafruit_FreeTouch *p[10] = { &qt_0, &qt_1, &qt_2, &qt_3, &qt_4, &qt_5, &qt_6, &qt_7, &qt_8, &qt_9 };

int touch = 600;    // Change this variable to something between your capacitive touch serial readouts for on and off

byte byteCounter = 0;
byte bitCounter = 0;
int pressThreshold;
int releaseThreshold;
boolean inputChanged;
int mouseMovementCounter = 0; // for sending mouse movement events at a slower interval

int mouseHoldCount[NUM_INPUTS]; // used to store mouse movement hold data

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

void setup() {
  #ifdef DEBUG
  Serial.begin(115200);
  while (!Serial);
  Serial.println("Meow");
  Serial.println("Meow");
  #endif

  initializeInputs();
 
  Keyboard.begin();
}

void loop() {

  updateMeasurementBuffers();
  updateBufferSums();
  updateBufferIndex();
  updateInputStates();
  sendMouseButtonEvents();
  sendMouseMovementEvents();
  #ifdef DEBUG
    delay(100);
  #endif
  
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
    boolean newMeasurement = ((newState > touch)? 0 : 1);

    #ifdef DEBUG
      Serial.print("Index:");Serial.println(i);
      Serial.println(p[i]->measure());
      Serial.println(newMeasurement);
    #endif
    // invert so that true means the switch is closed
    newMeasurement = !newMeasurement; 
    #ifdef DEBUG
      Serial.println(newMeasurement);
    #endif
    // store it    
    if (newMeasurement) {
      currentByte |= (1<<bitCounter);
      #ifdef DEBUG2
        Serial.print("Current OR:");Serial.println(currentByte);
      #endif
    } 
    else {
      currentByte &= ~(1<<bitCounter);
      #ifdef DEBUG2
        Serial.print("Current AND");Serial.println(currentByte);
      #endif
    }
    inputs[i].measurementBuffer[byteCounter] = currentByte;
    #ifdef DEBUG2
      Serial.println(inputs[i].measurementBuffer[byteCounter]);
    #endif
  }
}

///////////////////////////
// UPDATE BUFFER SUMS
///////////////////////////
void updateBufferSums() {

  // the bufferSum is a running tally of the entire measurementBuffer
  // add the new measurement and subtract the old one

  for (int i=0; i<NUM_INPUTS; i++) {
    byte currentByte = inputs[i].measurementBuffer[byteCounter];
    boolean currentMeasurement = (currentByte >> bitCounter) & 0x01; 
    #ifdef DEBUG2
      Serial.print("currentMeasurement:");Serial.println(currentMeasurement);
    #endif
    if (currentMeasurement) {
      inputs[i].bufferSum++;
      #ifdef DEBUG2
        Serial.print("bufferSum++");Serial.println(inputs[i].bufferSum);
      #endif
    }
    if (inputs[i].oldestMeasurement) {
      inputs[i].bufferSum--;
      #ifdef DEBUG2
        Serial.print("bufferSum--:");Serial.println(inputs[i].bufferSum);
      #endif
    }
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

//////////////////////////
// UPDATE INPUT STATES
///////////////////////////
void updateInputStates() {
  inputChanged = false;
  for (int i=0; i<NUM_INPUTS; i++) {
    inputs[i].prevPressed = inputs[i].pressed; // store previous pressed state (only used for mouse buttons)
    #ifdef DEBUG2
      Serial.print("inputs pressed:");Serial.println(inputs[i].pressed);
    #endif
    if (inputs[i].pressed) {
      if (inputs[i].bufferSum < releaseThreshold) {  
        inputChanged = true;
        inputs[i].pressed = false;
        if (inputs[i].isKey) {
          Keyboard.release(inputs[i].keyCode);
        }
        if (inputs[i].isMouseMotion) {  
          mouseHoldCount[i] = 0;  // input becomes released, reset mouse hold
        }
      }
      else if (inputs[i].isMouseMotion) {  
        mouseHoldCount[i]++; // input remains pressed, increment mouse hold
      }
    } 
    else if (!inputs[i].pressed) {
      if (inputs[i].bufferSum > pressThreshold) {  // input becomes pressed
        inputChanged = true;
        inputs[i].pressed = true; 
        if (inputs[i].isKey) {
          Keyboard.press(inputs[i].keyCode);
        }
      }
    }
  }
#ifdef DEBUG3
  if (inputChanged) {
    Serial.println("change");
  }
#endif
}

///////////////////////////
// INITIALIZE INPUTS
///////////////////////////
void initializeInputs() {

// initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);

  if (! qt_0.begin())  
    Serial.println(F("Failed to begin qt on pin A0"));
  if (! qt_1.begin())  
    Serial.println(F("Failed to begin qt on pin A1"));
  if (! qt_2.begin())  
    Serial.println(F("Failed to begin qt on pin A2"));
  if (! qt_3.begin())  
    Serial.println(F("Failed to begin qt on pin A3"));
  if (! qt_4.begin())  
    Serial.println(F("Failed to begin qt on pin A4"));
  if (! qt_5.begin())  
    Serial.println(F("Failed to begin qt on pin A5"));
  if (! qt_6.begin())  
    Serial.println(F("Failed to begin qt on pin A6"));
  if (! qt_7.begin())  
    Serial.println(F("Failed to begin qt on pin A7"));
  if (! qt_8.begin())  
   Serial.println(F("Failed to begin qt on pin A8"));
  if (! qt_9.begin())  
   Serial.println(F("Failed to begin qt on pin A9"));
   
  float thresholdPerc = SWITCH_THRESHOLD_OFFSET_PERC;
  float thresholdCenterBias = SWITCH_THRESHOLD_CENTER_BIAS/50.0;
  float pressThresholdAmount = (BUFFER_LENGTH * 8) * (thresholdPerc / 100.0);
  float thresholdCenter = ( (BUFFER_LENGTH * 8) / 2.0 ) * (thresholdCenterBias);
  pressThreshold = int(thresholdCenter + pressThresholdAmount);
  releaseThreshold = int(thresholdCenter - pressThresholdAmount);

#ifdef DEBUG
  Serial.println("pressThreshold: ");
  Serial.println(pressThreshold);
  Serial.println("releaseThreshold: ");
  Serial.println(releaseThreshold);
  delay(4000);
#endif

  for (int i=0; i<NUM_INPUTS; i++) {
    inputs[i].pinNumber = pinNumbers[i];
    inputs[i].keyCode = keyCodes[i];

    for (int j=0; j<BUFFER_LENGTH; j++) {
      inputs[i].measurementBuffer[j] = 0;
    }
    inputs[i].oldestMeasurement = 0;
    inputs[i].bufferSum = 0;

    inputs[i].pressed = false;
    inputs[i].prevPressed = false;

    inputs[i].isMouseMotion = false;
    inputs[i].isMouseButton = false;
    inputs[i].isKey = false;

    if (inputs[i].keyCode < 0) {
#ifdef DEBUG_MOUSE
      Serial.println("GOT IT");  
#endif

      inputs[i].isMouseMotion = true;
    } 
    else if ((inputs[i].keyCode == MOUSE_LEFT) || (inputs[i].keyCode == MOUSE_RIGHT)) {
      inputs[i].isMouseButton = true;
    }
    else {
      inputs[i].isKey = true;
    }
#ifdef DEBUG
    Serial.println(i);
#endif

  }
}

/////////////////////////////
// SEND MOUSE BUTTON EVENTS 
/////////////////////////////
void sendMouseButtonEvents() {
  if (inputChanged) {
    for (int i=0; i<NUM_INPUTS; i++) {
      if (inputs[i].isMouseButton) {
        if (inputs[i].pressed) {
          if (inputs[i].keyCode == MOUSE_LEFT) {
            Mouse.press(MOUSE_LEFT);
          } 
          if (inputs[i].keyCode == MOUSE_RIGHT) {
            Mouse.press(MOUSE_RIGHT);
          } 
        } 
        else if (inputs[i].prevPressed) {
          if (inputs[i].keyCode == MOUSE_LEFT) {
            Mouse.release(MOUSE_LEFT);
          } 
          if (inputs[i].keyCode == MOUSE_RIGHT) {
            Mouse.release(MOUSE_RIGHT);
          }           
        }
      }
    }
  }
}

//////////////////////////////
// SEND MOUSE MOVEMENT EVENTS
//////////////////////////////
void sendMouseMovementEvents() {
  byte right = 0;
  byte left = 0;
  byte down = 0;
  byte up = 0;
  byte horizmotion = 0;
  byte vertmotion = 0;

  mouseMovementCounter++;
  mouseMovementCounter %= MOUSE_MOTION_UPDATE_INTERVAL;
  if (mouseMovementCounter == 0) {
    for (int i=0; i<NUM_INPUTS; i++) {
#ifdef DEBUG_MOUSE
      //  Serial.println(inputs[i].isMouseMotion);  
#endif

      if (inputs[i].isMouseMotion) {
        if (inputs[i].pressed) {
          #ifdef MOUSE_MOVE_UP
          if (inputs[i].keyCode == MOUSE_MOVE_UP) {
            // JL Changes (x4): now update to 1 + a hold factor, constrained between 1 and mouse max movement speed
            up=constrain(1+mouseHoldCount[i]/MOUSE_RAMP_SCALE, 1, MOUSE_MAX_PIXELS);
          }  
          #endif
          #ifdef MOUSE_MOVE_DOWN
          if (inputs[i].keyCode == MOUSE_MOVE_DOWN) {
            down=constrain(1+mouseHoldCount[i]/MOUSE_RAMP_SCALE, 1, MOUSE_MAX_PIXELS);
          }  
          #endif
          #ifdef MOUSE_MOVE_LEFT
          if (inputs[i].keyCode == MOUSE_MOVE_LEFT) {
            left=constrain(1+mouseHoldCount[i]/MOUSE_RAMP_SCALE, 1, MOUSE_MAX_PIXELS);
          }
          #endif
          #ifdef MOUSE_MOVE_RIGHT  
          if (inputs[i].keyCode == MOUSE_MOVE_RIGHT) {
            right=constrain(1+mouseHoldCount[i]/MOUSE_RAMP_SCALE, 1, MOUSE_MAX_PIXELS);
          }  
          #endif
        }
      }
    }

    // diagonal scrolling and left/right cancellation
    if(left > 0)
    {
      if(right > 0)
      {
        horizmotion = 0; // cancel horizontal motion because left and right are both pushed
      }
      else
      {
        horizmotion = -left; // left yes, right no
      }
    }
    else
    {
      if(right > 0)
      {
        horizmotion = right; // right yes, left no
      }
    }

    if(down > 0)
    {
      if(up > 0)
      {
        vertmotion = 0; // cancel vertical motion because up and down are both pushed
      }
      else
      {
        vertmotion = down; // down yes, up no
      }
    }
    else
    {
      if (up > 0)
      {
        vertmotion = -up; // up yes, down no
      }
    }
    // now move the mouse
    if( !((horizmotion == 0) && (vertmotion==0)) )
    {
      Mouse.move(horizmotion * PIXELS_PER_MOUSE_STEP, vertmotion * PIXELS_PER_MOUSE_STEP);
    }
  }
}


