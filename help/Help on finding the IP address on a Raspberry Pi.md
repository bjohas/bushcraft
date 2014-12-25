Help

General things that are useful to know
======================================

In Ubuntu / Linux GUI, you can type ctrl-alt-t to get a terminal.



Finding the IP address of the Raspberry Pi
==========================================

There are a number of ways to find the IP address of the Pi. All of these
presume that the Pi is able to configure an IP for itself using the DHCP
service (for example, the DHCP service can be abled by configuring 'Connection
Sharing' in Network Manager.

0. If you are lucky
-------------------

ssh pi@raspberrypi


1. Use the 'ippi' command from bushcraft.
-----------------------------------------

This applies to a Pi connected to the Ethernet port of the computer 'workstation', with internet sharing.

user@workstation:~$ ippi
10.42.0.97

The output of this command can be used in scripts, eg:

user@workstation:~$ ssh pi@`ippi`

to login to the rpi with SSH.


2. Listen to the IP address on the headphone socket
---------------------------------------------------

If the Raspberry Pi has bushcraft installed: If the Pi is booted but no user is logged in, it's IP address can be heard read out on the headphone socket.  This is done by the 'firststart' command - of course, you only have that if you previously managed to connect to your Raspberry Pi, or if your installation came with bushcraft already (and firststart has been enabled). But if it has, the Raspberry Pi will speak its IP after boot, and you just need to connect a headset or speaker to figure out whether it got an IP address, and what it is.

Listen to the address being read out and write it down. The IP address is read out in four groups separated by a dot, each group consists of a three digit number. The number in each group must be between 0 and 254. 

If a user is logged into the device the IP Address is no longer read out. See firstrun and firstrun-init-autostart.


3. Install mDNS service (Avahi)
-------------------------------

The mDNS service can allow automatic discovery and DNS resolution of domains on a local network.

On the Rasbperry Pi:
	sudo apt-get update
	sudo apt-get install libnss-mdns

On the computer from which we want to determine the IP address of the Pi:
	sudo apt-get install avahi-discover

If the hostname of the Pi is 'raspberrypi' it should be possible to resolve
the IP address of the Pi from the workstation.

Use the GUI tool 'Avahi Zeroconf Browser' or the following command to find the IP address:

user@workstation: getent hosts raspberrypi.local
10.42.0.97      raspberrypi.local

or SSH into it directly using the DNS name:

user@workstation: ssh pi@raspberry.local

Note that mDNS resoltion will only work when both devices are on the same local
network (it might not work if the Pi is plugged into the ethernet port of a
wireless access point you are connected to).
