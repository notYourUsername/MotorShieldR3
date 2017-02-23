# MotorShieldR3

by dan

This is a simple Library for the Arduino Motor Shield R3 https://www.arduino.cc/en/Main/ArduinoMotorShieldR3

It give you controls for Motor Outputs A & B.


// Motor A

⋅⋅*motorEnableA(); // Put in the setup() if you want to use this motor
⋅⋅*motorDriveA(int mSpeed); // Range -255 to 255, 0 = Stop. When motorDrive is set, the Brake is released. 
⋅⋅*motorBrakeOnA(); // Stops the motor, then holds it
⋅⋅*motorBrakeOffA(); // The Motor is free to spin
⋅⋅*motorStopA(); // The Motor is stopped and put into free to spin 
⋅⋅*motorCurrentA(); // Gives the motors current, great for checking if stalled


// Motor B

⋅⋅*motorEnableB();
⋅⋅*motorDriveB(int mSpeed);
⋅⋅*motorBrakeOnB();
⋅⋅*motorBrakeOffB();
⋅⋅*motorStopB();
⋅⋅*motorCurrentB();

![Screenshot](https://www.arduino.cc/en/uploads/Main/MotorShield.jpg "Motor Shield R3")