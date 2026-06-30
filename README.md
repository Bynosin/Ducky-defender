# Ducky-Defender (duckyDefense.sh) v0.1.0

## Description
 This is a very basic linux .sh program made to defend computers against the common "Rubber Ducky" USB attack. It does not at this time run through the entire computer, only the console window it had been run in.
## How it runs
  The way it is designed to work is by constantly scanning the program it is defending for times between key-presses. If it detects the time between key-presses is less than 20 milliseconds 5 times in a row, it automatically locks your computer so as to prevent the device from continuing to run the code it is attempting to run, and you can remove the device before it causes severe harm to the computer.
## Usage
### Screen Lock Command
  On line 20, replace **"xdg-screensaver"** lock with your local lock command, unless **"xdg-screensaver lock"** is your local lock command.
### Locate File
  Do the **cd** command for your folder where you keep the file in your console.
### Grant Permissions
  In order to allow the program to be used, type in your console:
* **chmod +x duckyDefense.sh**
### Start Program
  To start the program, type:
* **./duckyDefense.sh &**
### Kill Program
  To kill the program, type
* **pkill -f duckyDefense.sh**
## Future
  Soon in the future it is planned to add better systems to detect other rubber-ducky traits, and ways to remedy them.
