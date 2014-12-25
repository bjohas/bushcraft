bin
===

The bin directory contains scripts that are useful for any architecture:

- bin/bush: Updates bushcraft
- bin/bushcraft-config: Updates the bushcraft configuration
- bin/tunnel: Sets up a tunnel

These are also useful:
- bin/ping3
- bin/restart
- bin/stop
- bin/rsyncppi

bin_connect_to_headless_pi
==========================

The bin_connect_to_headless_pi directory helps to connect from a linux laptop to a raspberry pi 
that is connected via ethernet or serial/UART. You can set up internet sharing on the laptop, and then use
sshpi, vncpi to connect to the Pi, or screenpi to use the screen command to connect.

- bin_connect_to_headless_pi/ippi
- bin_connect_to_headless_pi/leases
- bin_connect_to_headless_pi/loginwithkey
- bin_connect_to_headless_pi/screenpi
- bin_connect_to_headless_pi/share-connection
- bin_connect_to_headless_pi/sshpi
- bin_connect_to_headless_pi/vncpi

bin_pi
======

The bin_pi directory contains commands that are useful for Raspberry Pi, that serve a variety of different purposes:

These commands provide information about the Raspberry Pi:
- bin_pi/sysinfo
- bin_pi/ipaddress
- bin_pi/serialnumber
- bin_pi/speak_ifconfig

This command reads certain system settings from /boot/config:
- bin_pi/readsystemsettings

These commands send information via email, which enables the 
Raspberry Pi user to send information relevant for remote support to somebody else:
- bin_pi/sendlogs
- bin_pi/sendfile
- bin_pi/sendshot
- bin_pi/sendtext

There are also some commands that help with gettings started with the Raspberry Pi, e.g. for sensing.
The following two commands display temperature is a ds18b20 sensor is connected:
- bin_pi/tempds
- bin_pi/tempds2

bin_pi_autorun
==============

The bin_pi_autorun directory contains commands that are useful mainly for automated execuation:

- bin_pi_autorun/cron_commands
- bin_pi_autorun/firststart

config
======

The config directory has got sample configuration files available. These can be updated by using

     bin/bushcraft-config url

The following config files are available:

- config/email.cfg
- config/feedback.cfg
- config/source.cfg
- config/tunnel.cfg

init
====

The init directory has various initialisation scripts in it, that would typically only need to be run once. 
Ideally you would run these when you have good connectivity, i.e. to prepare a laptop or a Raspberry Pi
for running in less favourable environments.

- init/add-path-to-profile
- init/bushcraft-init
- init/bushcraft-init-pi
- init/initreq
- init/cron-init
- init/email-init
- init/firststart-init-autostart
- init/vnc-init-autostart
- init/vnc-init-password
- init/write-sysinfo-init-autostart
- init/pi-init-education
