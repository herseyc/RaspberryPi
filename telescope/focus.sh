#!/bin/bash
#
# Used to focus telescope with Pi Cam
# Center bright object in eyepiece
# Repeated one second exposures
# Start streamfocus.sh and access stream at http://astropiaddress:8080
# Slowly adjust focus until object is sharp
#
imagefile=/home/pi/telescope/capture/focus.jpg
shutter=1000000
iso=800

echo $imagefile $shutter $iso

#take exposure
raspistill -w 800 -h 600 -hf -vf -ss $shutter -ISO $iso -sh 50 -br 50 -sa -15 -o $imagefile -tl 10 -t 999999999 -th 0:0:0

# -w width of image
# -h height of image
# -hf horizontil flip
# -vf verfical flip
# -ss exposure time 1000000 = 1 second
# -ISO ISO
# -sh sharpness
# -br brightness
# -sa Saturation
# -o output file
# -tl time between exposures
# -t time (set very high)
# -th 0:0:0 no thumbnail
