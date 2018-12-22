import machine
import time


led = machine.Pin(16, machine.Pin.OUT)
led.on() # pin is active low - on is high
