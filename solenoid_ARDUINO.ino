const int ledPin = 13; // the pin that the LED is attached to
int incomingByte;      // a variable to read incoming serial data into

void setup() {
  // initialize serial communication:
  Serial.begin(9600);
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);
  // initialize the solenoid as an output through port 4
  pinMode(4, OUTPUT);
}

void loop() {
  // see if there's incoming serial data:
  if (Serial.available() > 0) {
    // read the oldest byte in the serial buffer:
    incomingByte = Serial.read();
    // if it's a D (ASCII 72), open the solenoid:
    if (incomingByte == 'D') {
      // turns the LED on red board on
      digitalWrite(ledPin, HIGH);
      sets  the digital pin 4 on
      digitalWrite(4, HIGH);
    }
    // if it's a C (ASCII 76) close the solenoid:
    if (incomingByte == 'C') {
      // turns the LED on red board off
      digitalWrite(ledPin, LOW);
      // sets the digital pin 4 off
      digitalWrite(4, LOW);
    }
  }
}
