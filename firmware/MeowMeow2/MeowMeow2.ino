/************************************************************
ENGLISH
MeowMeow2.ino - v1.0v
Meow Meow - Using the Meow Meow you can make anything into a key 
just by connecting a few alligator clips

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

***********************************************************************/
////////////////////////
// DEBUG DEFINITIONS ////               
/////////////////////////
//#define DEBUG
//#define DEBUG2 
//#define DEBUG3
//#define DEBUG_MOUSE


#define BUFFER_LENGTH    3     // 3 bytes gives us 24 samples
#define NUM_INPUTS       10    // 10 on the front

// id numbers for mouse movement inputs (used in settings.h)
#define MOUSE_MOVE_UP       -1 
#define MOUSE_MOVE_DOWN     -2
#define MOUSE_MOVE_LEFT     -3
#define MOUSE_MOVE_RIGHT    -4

#include "Keyboard.h"
#include <Mouse.h>
#include "Adafruit_FreeTouch.h"
#include "settings.h"

Adafruit_FreeTouch qt_0 = Adafruit_FreeTouch(A4, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // S
Adafruit_FreeTouch qt_1 = Adafruit_FreeTouch(A5, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // D
Adafruit_FreeTouch qt_2 = Adafruit_FreeTouch(A6, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // Arrow LEFT
Adafruit_FreeTouch qt_3 = Adafruit_FreeTouch(A7, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // Arrow RIGHT
Adafruit_FreeTouch qt_4 = Adafruit_FreeTouch(A8, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // Arrow DOWN
Adafruit_FreeTouch qt_5 = Adafruit_FreeTouch(A9, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // Arrow UP
Adafruit_FreeTouch qt_6 = Adafruit_FreeTouch(A10, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // W
Adafruit_FreeTouch qt_7 = Adafruit_FreeTouch(A11, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // A
Adafruit_FreeTouch qt_8 = Adafruit_FreeTouch(A12, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // Click Mouse
Adafruit_FreeTouch qt_9 = Adafruit_FreeTouch(A13, OVERSAMPLE_4, RESISTOR_50K, FREQ_MODE_NONE); // SPACE

Adafruit_FreeTouch *p[10] = { &qt_0, &qt_1, &qt_2, &qt_3, &qt_4, &qt_5, &qt_6, &qt_7, &qt_8, &qt_9 };

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
  int touch;
} 
MeowMeowInput;

MeowMeowInput inputs[NUM_INPUTS];

// Pin Numbers
// input pin numbers for pre-order production board
int pinNumbers[NUM_INPUTS] = {
  A4, A5, A6, A7, A8, A9,     // top of meow meow board
  A10, A11, A12, A13        // left side of female header, KEYBOARD 
};
    
void setup() {
  #ifdef DEBUG
  Serial.begin(115200);
  while (!Serial);
  Serial.println("Meow");
  Serial.println("Meow");
  #endif

  initializeInputs();
  calibrate();
 
  Keyboard.begin();
  digitalWrite(LED_BUILTIN,LOW);
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
    boolean newMeasurement = ((abs(newState - inputs[i].touch) > CALIBRATION) ? 0 : 1);

    #ifdef DEBUG
      Serial.print(p[i]->measure());
      Serial.print(",");
    #endif
    // invert so that true means the switch is closed
    newMeasurement = !newMeasurement; 
    #ifdef DEBUG2
      Serial.print("Index:");
      Serial.print(i);
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
  #ifdef DEBUG
    Serial.println();
  #endif
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
  digitalWrite(LED_BUILTIN,HIGH);

  if (! qt_0.begin())  
    Serial.println(F("Failed to begin pin A0 or"));
  if (! qt_1.begin())  
    Serial.println(F("Failed to begin pin A1 or D"));
  if (! qt_2.begin())  
    Serial.println(F("Failed to begin pin A2 or Arrow LEFT"));
  if (! qt_3.begin())  
    Serial.println(F("Failed to begin pin A3 or Arrow RIGHT"));
  if (! qt_4.begin())  
    Serial.println(F("Failed to begin pin A4 or Arrow DOWN"));
  if (! qt_5.begin())  
    Serial.println(F("Failed to begin pin A5 or Arrow UP"));
  if (! qt_6.begin())  
    Serial.println(F("Failed to begin pin A6 or W"));
  if (! qt_7.begin())  
    Serial.println(F("Failed to begin pin A7 or A"));
  if (! qt_8.begin())  
   Serial.println(F("Failed to begin pin A8 or Click Mouse"));
  if (! qt_9.begin())  
   Serial.println(F("Failed to begin pin A9 or SPACE"));
   
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
  delay(500);
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
        Serial.println(inputs[i].isMouseMotion);  
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


/* 
 *  INITIAL CALIBRATION INPUT
The wires, electrodes and other object themselves have a certain amount of 
'inherent capacitcance'!

This means that whenever you attach an alligator clip, or a large piece of copper, 
or whatever your electrode is, the capacitive sense chip will detect it and may 
think you're touching it. What you have to do is recalibrate the sensor. 
The easiest way to do that is to restart the arduino sketch since calibration is done 
when the chip is initialized. So, basically ... connect all your wires, electrodes, 
fruit, etc...then start up the capacitive touch program!
*/
void calibrate(){
  for (int i=0; i<NUM_INPUTS; i++) {
    // make a new measurement for initial calibration
    long newState = (p[i]->measure());
    inputs[i].touch = newState;
  }
}
