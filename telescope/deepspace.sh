#!/bin/bash
#
# Long exposure imaging with Raspberry Pi Camera
# Use focus.sh to focus camera and telescope
# Start streamdeepspace.sh and access stream at http://astropiaddress:8080
#
imagefile=/home/pi/telescope/capture/deepspace.jpg
shutter=5000000
iso=800

echo $imagefile $shutter $iso

#take 5 second exposure
raspistill -w 800 -h 600 -hf -vf -ss $shutter -ISO $iso -sh 50 -br 50 -sa -75 -o $imagefile -tl 100 -t 999999999 -th 0:0:0

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
