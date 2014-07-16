MongoDB Vagrant
===============

This is a vagrant VM to play around with a recent version of MongoDB.

Prerequisite
------------

 * Vagrant installed (http://www.vagrantup.com/downloads.html)
 * VirtualBox or VMWare installed

How to use
----------

 * Type `vagrant up` in the directory .. and wait some minutes.
 * Type `./mongo ` to enter the MongoDB shell.

Also the MongoDB inside the vagrant VM will now listen to your localhost:27017,
so you can use any other preferred tool to access it (beside the provided mongo shell).

If you want to have access to other MongoDB executables hit `vagrant ssh` to access the
shell of the VM.
