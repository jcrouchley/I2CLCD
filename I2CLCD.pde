#include <Wire.h>
#include <I2CLCD.h>

I2CLCD lcd = I2CLCD(0x12, 20, 4);

void setup(){
  lcd.init();
}


void loop(){
  //turn backlight off
  lcd.backlight(1);
  delay(2000);
  
  //turn backlight on
  lcd.backlight(0);
  delay(2000);
  
  //turn the cursor off
  lcd.cursorOff();
  lcd.write("Cursor Off");
  delay(2000);
  lcd.clear();
  
  //turn the cursor back on
  lcd.cursorOn();
  lcd.write("Cursor On");
  delay(2000);
  lcd.clear();
  
  //turn the blinking cursor on
  lcd.blinkOn();
  lcd.write("Blink On");
  delay(2000);
  lcd.clear();
  
  //turn the blinking cursor off
  lcd.blinkOff();
  lcd.write("Blink Off");
  delay(2000);
  lcd.clear();
  
  //move the cursor on the screen. First # is row second is column
  lcd.setCursor(2, 8);
  lcd.write("Move Cursor");
  delay(2000);
  lcd.clear();
  
  //turn the display off (but not the backlight! that has to be done separately
  lcd.setCursor(0, 0);
  lcd.write("Turn Display Off");
  delay(2000);
  lcd.displayOff();
  delay(3000);
  lcd.clear();
  
  //turn the display back on
  lcd.displayOn();
  lcd.write("Turn Display On");
  delay(2000);
  lcd.clear();
  
  //key the keypad push
  lcd.write("Keypad Push: ");
  lcd.write(lcd.getKey());
  delay(2000);
  lcd.clear();
  
  //clear the keypad buffer
  lcd.write("Clear Keypad Buffer");
  lcd.clearBuffer();
  delay(2000);
  lcd.clear();
  
}


