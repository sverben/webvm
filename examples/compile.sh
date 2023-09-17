avr-g++ -mmcu=atmega328p -DARDUINO=105 -DF_CPU=16000000L \
    -I/usr/share/arduino/hardware/arduino/avr/cores/arduino \
    -I/usr/share/arduino/hardware/arduino/avr/variants/standard \
    -Os -fno-exceptions -ffunction-sections -fdata-sections \
    -Wl,--gc-sections -g -Wall -Wextra \
    -x c++ -include Arduino.h \
    Blink.ino \
    -x none core.a -lm \
    -o Blink.elf
avr-objcopy -O ihex -R .eeprom Blink.elf Blink.hex
