import machine
import time


led = machine.Pin(16, machine.Pin.OUT)
led.on() # pin is active low - on is high

while True:
    led.on()
    time.sleep(0.5)
    led.off()
    time.sleep(0.5)
