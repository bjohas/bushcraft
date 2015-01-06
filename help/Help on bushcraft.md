Getting started
===============

Bushcraft is a set of tools for remote support of linux computers, with some special bits for Raspberry Pi.

If you are unsure whether you have wget or curl, open a terminal, and type

 curl
 
You should see
 curl: try 'curl --help' or 'curl --manual' for more information

To see whether you have wget, type

 wget

You should see
 wget: missing URL

If you have wget or curl, you install bushcraft by retrieving http://tiny.cc/bush, e.g.

    wget tiny.cc/bush
or

    curl tiny.cc/bush

(omitted http:// in order to type as little as possible) and then running:

    perl bush
    
which fetches the rest of the tools installation, and tells you what to do next. If you want to use the tools to enable user feedback, remote logins etc, you need to provide further config; again, the script tells you what to do.

See below, if you do not have wget, curl, or perl.

If you are setting up an installation for somebody else, you can do a more comprehensive install (with configuration, and running bushcraft-init-pi) like this:

    perl bush -i yourserver/directory/
   
This directory should have one or more of the files found in the bushcraft/config directory, but with configuration data filled in. Assuming that everything installed ok, then if you want to update bushcraft at any time (using git), you can just say

    bush
    
Which will do a git pull, or

    bush -c
    
which will update bushcraft, and then fetch a new configuration (and is equivalent to "bush; bushcraft-config").
    
If you don't have wget or curl, you can visit http://tiny.cc/bush in a webbrowser, and save the resulting file. Or you can try to get wget/curl, by typing

  sudo apt-get install wget
  sudo apt-get install curl

If you need to install perl, you can type

  sudo apt-get install perl
  
bin
===

The bin directory contains scripts that are useful for any architecture:

- bin/bush: Installs/updates bushcraft
- bin/bushcraft-config: Updates the bushcraft configuration
- bin/tunnel: Sets up a tunnel

In particular, you can use bush as described above to install bushcraft.

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

Also see 'Help on finding the IP address on a Raspberry Pi.md' for help with this. The 'firststart' command is also useful - of course, you only have that if you previously managed to connect to your Raspberry Pi, or if your installation came with bushcraft already (and firststart has been enabled). But if it has, the Raspberry Pi will speak its IP after boot, and you just need to connect a headset or speaker to figure out whether it got an IP address, and what it is.

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

     bin/bushcraft-config <url>

The following config files are available:

- config/email.cfg (credentials for sending email, i.e. a gmail user name and password)
- config/feedback.cfg (who emails should be sent to) 
- config/source.cfg (the url to use for config updates, is updated with <url> by bushcraft-config)
- config/tunnel.cfg (configuration files for setting up a tunnel)

By running 'bin/bushcraft-config <url>', the script will look for 

- <url>/email.cfg
- <url>/feedback.cfg
- <url>/source.cfg
- <url>/tunnel.cfg

and if those files are available, update corresponding files in ~/.config/bushcraft/.

init
====

The init directory has various initialisation scripts in it, that would typically only need to be run once. 
Ideally you would run these when you have good connectivity, i.e. to prepare a laptop or a Raspberry Pi
for running in less favourable environments.

These files do basic initialisation:
- init/bushcraft-init
- init/bushcraft-init-pi 

If bushcraft-init-pi is run as 

   bushcraft-init-pi -i <url>
   
then "bushcraft-config <url>" is invoked. There after, bushcraft-init-pi runs these scripts:

- init/add-path-to-profile
- init/initreq (installs various packages)
- init/cron-init (adds a line to the crontab, to run cron_commands every 10 mins)
- init/email-init (uses email.cfg)
- init/vnc-init-autostart (sets up vnc to start automatically after boot)
- init/vnc-init-password (sets up a default password for vnc)
- init/firststart-init-autostart (sets up firststart to run automatically after boot)
- init/write-sysinfo-init-autostart (set up sysinfo to run automatically after boot)

To install education packages, use:
- init/pi-init-education (installs various education packages)
