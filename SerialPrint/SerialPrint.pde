import processing.serial.*;

Serial MySerial;
boolean state = false;
void setup() {
  size(400, 600);
 
 // Open the port you are using at the rate you want:
  MySerial = new Serial(this, Serial.list()[0], 9600);
  
  
// List all the available serial ports:
printArray(Serial.list());



}

void draw() {
  if (state) {
    background(255, 0, 0);
    fill(0, 100, 100);
  } else {
    background(0, 255, 0);
    fill(0, 0, 0);
  }
  ellipse(200, 200, 300, 300);
}

void mouseClicked() {
  float D = dist(mouseX, mouseY, 200, 200);
  if (D < 150) {
    MySerial.write('a');
    state = !state;
  }
}
