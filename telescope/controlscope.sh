#!/bin/bash
#
# https://svn.code.sf.net/p/stellarium/code/trunk/telescope_server
#
# Instructions at http://www.vhersey.com/2015/07/raspberry-pi-telescope-control/
#

# change directory to location of Telescope Server program
cd /home/pi/telescope

# Start telescope server
# Listen on port 5000 telescope connected to USB to Serial on /dev/ttyUSB0
./TelescopeServerNexStar 5000 /dev/ttyUSB0

# Configure Stellarium to connect to astropiaddress on port 5000
# Ctrl+0 to open connection configuration in Stellarium
# Select object and Ctrl+1 to slew telescope to object
