Lauffähige WLED binary inkl. Bootloader für den Arduino Nano-ESP32. 
Matrix kann an GPIO 5 (D2) angeschlossen werden.
Die interne RGB-LED kann zum Testen angesteuert werden.
 
Kommandos für das ESP-Tool:
.bin auf ESP schreiben:

./esptool -b 921600 write_flash 0 wled_0.15.1_s3_8mb_w_bootloader_setup.bin
 
Aktuelle Bin vom ESP-Flash lesen:
./esptool -b 921600 read_flash 0 ALL wled_flashread.bin
