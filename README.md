# Parachute Release Mechanism
 
## Problem Statement:

Our team was tasked with designing and building a dropping/release mechanism for the ENGR 101 parachute project. Our team integrated MATLAB and Arduino software to control an Arduino RedBoard, and solenoid to release a parachute by activation through MATLAB’s command window prompts.
 
## Hardware Setup:
 
### Bill of Materials:
![Alt Name](/doc/Bill_of_Materials_1.PNG)
![Alt Name](/doc/Bill_of_Materials_2.PNG)

## Hardware Schematic:
![Alt Name](/doc/Fritzing_Diagram.png)
 
## Hookup Guide:
 
### Step 1- Powering the breadboard
Start by connecting one of the jumper wires to the “VIN” pin located next to the GND (ground) on the RedBoard and running it over to the positive side of breadboard. Then run a wire from the GND pin on RedBoard over to negative rail on the breadboard.

![Alt Name](/doc/Picture1.png)

### Step 2 - Wire Solenoid to Breadboard
Connect the solenoid jumper wires to the breadboard leaving some space between for the diode to be added. (Positive red PIN 22B, negative black PIN 22H) 

![Alt Name](/doc/Picture2.png)

### Step 3 - Place the diode on the breadboard
The diode is placed from the negative side of the coil to the positive side.  Be careful when you connect the diode, it allows current to flow in one direction. Correct installation is crucial, otherwise there will be a short between the power and ground. Make sure the side with the silver stripe is connected to the positive side of power and the other side connected to the negative. (Silver stripe of diode to 22C remaining side to 22G) 

![Alt Name](/doc/Picture3.png)

### Step 4 - Power for the solenoid
On this step we run a jumper wire from the positive power side of the board to the positive solenoid wire. This will power the solenoid and we will be used as the low side to turn the solenoid on or off. (Positive rail to PIN 22A) 

![Alt Name](/doc/Picture4.png)

### Step 5 - Placing the transistor on the breadboard
The current draw of the solenoid is higher than a standard transistor can handle, therefore we will be using a transistor, P/N FQP30N06L. (PIN’s B13-B15, metal tab facing outside of board towards A PIN’s)  

![Alt Name](/doc/Picture5.png)

### Step 6 - Resistor connection
Connect the resistors (3 - 330 Ohm resistors in a series) from the base of the resistor to the other side of the board. (PIN 15D to 15F)

![Alt Name](/doc/Picture6.png)

### Step 7- Connecting resistor to the breadboard
Now that the current limiting resistors are in place, we can connect the it to pin 4 on digital line of RedBoard. (Jumper wire from PIN 15H to PIN 4 digital line of RedBoard)

![Alt Name](/doc/Picture7.png)
 
### Step 8 - Connect negative wire to solenoid 
Next, we connect the negative wire of the solenoid to middle of the transistor with a jumper wire. (PIN 14C to 22I)

![Alt Name](/doc/Picture8.png)

### Step 9 - Connecting the transistor to the ground
This step we connect the negative power on breadboard to PIN 13B of the transistor. (PIN 13B to negative rail)

![Alt Name](/doc/Picture9.png)

### Step 10 - Connecting solenoid and external power
Now we can connect solenoid to the solenoid wires that come from the board, verifying strong connections are made to the jumper wires. (Positive red from solenoid to jumper wire PIN 22B, negative black from solenoid to 22H) 

![Alt Name](/doc/Picture10.png)

### Step 11 – Installing hardware into job box
Place the whole board inside of the job box, holes were made for solenoid wires, USB cable, and external power. At this time, hardware setup is complete.

![Alt Name](/doc/Picture11.png)

## Code:
### MATLAB Code:
[solenoid_MATLAB.m](solenoid_MATLAB.m)

### Arduino Code:
[solenoid_ARDUINO.ino](solenoid_ARDUINO.ino)
 
## Results:
![Alt Name](/doc/Results1.jpg)
![Alt Name](/doc/Results2.jpg)
![Alt Name](/doc/Results3.jpg)
![Alt Name](/doc/Results4.jpg)
![Alt Name](/doc/Results5.jpg)

## Future Work:
 
Unfortunately, we did not integrate the red button to open/close the solenoid as there was a time delay with the solenoid when the button was pressed. In the future this could be something that could be integrated and perhaps the delay could be removed with MATLAB and/or Arduino coding.
 
# License
GNU General Public License v3.0

