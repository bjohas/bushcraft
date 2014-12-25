bushcraft
=========

A set of tools for remote support of linux computers, with some special bits for Raspberry Pi.

You install bushcraft by retrieving http://tiny.cc/bush, e.g.

    wget tiny.cc/bush
or

    curl tiny.cc/bush

(omitted http:// in order to type as little as possible) and then running:

    perl bush
    
which fetches the rest of the tools installation, and tells you what to do next. If you want to use the tools to enable user feedback, remote logins etc, you need to provide further config; again, the script tells you what to do.

If you are setting up an installation for somebody else, you can do a more comprehensive install (with configuration) like this:

   perl bush -i yourserver/directory/
   
This directory should have one or more of the files found in the bushcraft/config directory, but with configuration data filled in.

NOTE: THIS IS UNDER DEVELOPMENT - USE AT YOUR OWN RISK!!
