# Raspberry Pi Blinking Lights
# Learning using Python and the Raspberry Pi GPIO
#
import RPi.GPIO
import time

RPi.GPIO.setmode(RPi.GPIO.BCM)

# LED 1 attached to GPIO18
RPi.GPIO.setup(18, RPi.GPIO.OUT)
# LED 2 attached to GPIO23
RPi.GPIO.setup(23, RPi.GPIO.OUT)
# LED 3 attached to GPIO12
RPi.GPIO.setup(12, RPi.GPIO.OUT)
# LED 4 attached to GPIO16
RPi.GPIO.setup(16, RPi.GPIO.OUT)
# LED 5 attached to GPIO21
RPi.GPIO.setup(21, RPi.GPIO.OUT)

print 'Blinking the lights'
# Number of times to run through cycle
x = 100

y = 0
while  y < x:
   # Turn the LEDs on in sequence
   RPi.GPIO.output(18, True)
   time.sleep(0.05)
   RPi.GPIO.output(23, True)
   time.sleep(0.05)
   RPi.GPIO.output(12, True)
   time.sleep(0.05)
   RPi.GPIO.output(16, True)
   time.sleep(0.05)
   RPi.GPIO.output(21, True)
   time.sleep(1)
   # Turn the LEDs off in reverse sequence
   RPi.GPIO.output(21, False)
   time.sleep(0.05)
   RPi.GPIO.output(16, False)
   time.sleep(0.05)
   RPi.GPIO.output(12, False)
   time.sleep(0.05)
   RPi.GPIO.output(23, False)
   time.sleep(0.05)
   RPi.GPIO.output(18, False)
   time.sleep(2)
   y += 1


print 'Done, cleaning up'
# Clean up the GPIO
RPi.GPIO.cleanup()
