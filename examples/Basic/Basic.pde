/*
 Basic Motor Operations

  Covers the Basic Funtions of:
    motorEnableA();
    motorEnableB();

    motorDriveA(int);
    motorDriveB(int);

    motorBrakeOnA();
    motorBrakeOnB();

    motorBrakeOffA();
    motorBrakeOffB();

    motorStopA();
    motorStopB();

    motorCurrentA(); Returns a float
    motorCurrentB(); Returns a float

 by dan

 */

#include <MotorShieldR3.h>

motorEnableA(); // Enables Motor A on the Shield (Motor A Uses Pins - 12, 3, 9, A0)
motorEnableB(); // Enables Motor A on the Shield (Motor B Uses Pins - 13, 11, 8, A1)

void setup() {

// Open Serial communication
  Serial.begin(9600);
  Serial.println("Arduino Motor Shield R3 Motors A & B Test:\n");
}


void loop() {

// Drive motors A & B Forward

  Serial.println("Motors A & B at full speed forward!");
  motorDriveA(255); // Motor Forward speeds start from "0" to "255"
  motorDriveB(255);

  delay(3000); // Hold the motor at full speed for 3 seconds
  Serial.println(" "); // Put a litte spcae in the terminal between operations
  

// Brake the motor. 

  Serial.println("Start braking motors A & B");
  motorBrakeOnA(); // Turning the Brakes On will stop the motors from free spinning wile they are not driving
  motorBrakeOnB();

  delay(1000);

// Release the Brakes! 

  Serial.println("Stop braking motors A & B");
  motorBrakeOffA(); // Turning the Brakes Off will allow the motors to free spin wile they are not driving
  motorBrakeOffB();

  delay(1000);
  Serial.println(" "); // Put a litte spcae in the terminal between operations



// Drive motors A & B Backwards

  Serial.println("Motors A & B at full speed Backwards!");
  motorDriveA(-255); // Motor Backwards speeds start from "0" to "-255"
  motorDriveB(-255);

  delay(3000); // Hold the motor at full speed for 3 seconds
  Serial.println(" "); // Put a litte spcae in the terminal between operations



// Stopping the motors A & B without the Brakes. 

  Serial.println("Stopping the motors A & B without the Brakes");
  motorStopA(); // This is the same as "motorDriveA(0);"
  motorStopB(); // This is the same as "motorDriveB(0);"

  delay(1000);
  Serial.println(" "); Serial.println(" "); // Put a litte extra spcae in the terminal between operations


// Reading the Motor Current

  //Reading the Motor Current at 0 speed
  Serial.print("MotorA Current at 0 Speed: "); Serial.println(motorCurrentA()); // "motorCurrentA(); will return the motor current value
  Serial.print("MotorB Current at 0 Speed: "); Serial.println(motorCurrentA()); // "motorCurrentB(); will return the motor current value
  
  delay(3000);
  Serial.println(" "); // Put a litte spcae in the terminal between operations

 
  //Reading the Motor Current at 100 speed
  motorDriveA(100); // Start driving the motors at 100 to allow us to read the current
  motorDriveB(100);
  delay(3000); // letting the motors speed up to 100 before reading current

  Serial.print("MotorA Current at 100 Speed: "); Serial.println(motorCurrentA()); // "motorCurrentA(); will return the motor current value
  Serial.print("MotorB Current at 100 Speed: "); Serial.println(motorCurrentA()); // "motorCurrentB(); will return the motor current value
  
  delay(3000);
  Serial.println(" "); // Put a litte spcae in the terminal between operations

  //Reading the Motor Current at 255 (full) speed
  motorDriveA(255); // Start driving the motors at 100 to allow us to read the current
  motorDriveB(255);
  delay(3000); // letting the motors speed up to 255 before reading current

  Serial.print("MotorA Current at 255 Speed: "); Serial.println(motorCurrentA()); // "motorCurrentA(); will return the motor current value
  Serial.print("MotorB Current at 255 Speed: "); Serial.println(motorCurrentA()); // "motorCurrentB(); will return the motor current value
  
  delay(3000);
  

  Serial.println("Stopping the motors by changing drive speed to 0");
  motorDriveA(0); // This is the same as "motorStopA();"
  motorDriveB(0); // This is the same as "motorStopB();"
   
  while(1);
   
}