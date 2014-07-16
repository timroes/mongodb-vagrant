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

The MongoDB inside the vagrant VM will now listen to `localhost:27017`,
so you can use any other preferred tool to access it (beside the provided 
mongo shell), e.g. give [Robomongo](http://robomongo.org/) a try.

If you want to have access to other MongoDB executables enter `vagrant ssh` to access the
shell of the VM.

When you finished you can destroy the VM with `vagrant destroy` and start over again
with `vagrant up`.
