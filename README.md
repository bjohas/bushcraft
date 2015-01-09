bushcraft
=========

A set of tools for remote support of linux computers, with some special bits for Raspberry Pi.

You install bushcraft by retrieving http://tiny.cc/bush, e.g.

    curl -L -o bush tiny.cc/bush
or
    wget --no-check-certificate -O bush tiny.cc/bush
    
(omitted http:// in order to type as little as possible). (There may be cases where you don't have wget or curl, see the help directory if the above doesn't work.)
Then run:

    perl bush
    
which fetches the rest of the tools installation, and tells you what to do next. If you want to use the tools to enable user feedback, remote logins etc, you need to provide further config; again, the script tells you what to do.

If you are setting up an installation for somebody else, you can do a more comprehensive install (with configuration) like this:

    perl bush -i yourserver/directory/
   
This directory should have one or more of the files found in the bushcraft/config directory, but with configuration data filled in.

NOTE: THIS IS UNDER DEVELOPMENT - USE AT YOUR OWN RISK!!
