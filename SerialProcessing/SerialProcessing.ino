int PinLed = 13;
boolean state = false;
void setup() {
  pinMode(PinLed, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available() > 0) {
    char Data = Serial.read();
    state = !state;
    if (Data=='a') {
      digitalWrite(PinLed, !state);
    }
  
  }
}
