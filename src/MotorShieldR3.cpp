#include "MotorShieldR3.h"
#include "Arduino.h"


float volt_per_amp = 1.65; // resolution according to hardware page
  int dirPinA = 12;
  int pwmPinA = 3;
  int brkPinA = 9;
  int currPinA = A0;

  int dirPinB = 13;
  int pwmPinB = 11;
  int brkPinB = 8;
  int currPinB = A1;
 
  // variables
  float currentRaw; // the raw analogRead ranging from 0-1023
  float currentVolts; // raw reading changed to Volts
  float currentAmps; // Voltage reading changed to Amps

void motorEnableA()
{
	pinMode(dirPinA, OUTPUT); //Initiates Motor Channel A pin
	pinMode(brkPinA, OUTPUT); //Initiates Brake Channel A pin
}

void motorEnableB()
{
  pinMode(dirPinB, OUTPUT); //Initiates Motor Channel B pin
  pinMode(brkPinB, OUTPUT); //Initiates Brake Channel B pin
}



void motorDriveA(int mSpeed)
{

	if(mSpeed == 0)
	{
    	digitalWrite(brkPinA, LOW);
    	analogWrite(pwmPinA, 0); 
  } else if (mSpeed > 0)
  	{
    	digitalWrite(dirPinA, HIGH);
    	digitalWrite(brkPinA, LOW);
    	analogWrite(pwmPinA, mSpeed); 
  } else if (mSpeed < 0)
  	{
    	digitalWrite(dirPinA, LOW);
    	digitalWrite(brkPinA, LOW);
    	analogWrite(pwmPinA, mSpeed);
  	}

}

void motorDriveB(int mSpeed)
{

  if(mSpeed == 0)
  {
      digitalWrite(brkPinB, LOW);
      analogWrite(pwmPinB, 0); 
  } else if (mSpeed > 0)
    {
      digitalWrite(dirPinB, HIGH);
      digitalWrite(brkPinB, LOW);
      analogWrite(pwmPinB, mSpeed); 
  } else if (mSpeed < 0)
    {
      digitalWrite(dirPinB, LOW);
      digitalWrite(brkPinB, LOW);
      analogWrite(pwmPinB, mSpeed);
    }

}

void motorBrakeOnA()
{
  analogWrite(pwmPinA, 0);
  digitalWrite(brkPinA, HIGH);
}

void motorBrakeOnB()
{
  analogWrite(pwmPinB, 0);
  digitalWrite(brkPinB, HIGH);
}


void motorBrakeOffA()
{
  digitalWrite(brkPinA, LOW);
}

void motorBrakeOffB()
{
  digitalWrite(brkPinB, LOW);
}


void motorStopA()
{
  analogWrite(pwmPinA, 0);
  digitalWrite(brkPinA, LOW);
}

void motorStopB()
{
  analogWrite(pwmPinB, 0);
  digitalWrite(brkPinB, LOW);
}


float motorCurrentA()
{
  currentRaw = analogRead(currPinA);
  currentVolts = currentRaw *(5.0/1024.0);
  currentAmps = currentVolts/volt_per_amp;
  return currentAmps;
}

float motorCurrentB()
{
  currentRaw = analogRead(currPinB);
  currentVolts = currentRaw *(5.0/1024.0);
  currentAmps = currentVolts/volt_per_amp;
  return currentAmps;
}