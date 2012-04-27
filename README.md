mcollective-docs
================

The docs I could not find for Marionette Collective

Getting the thing installed
===========================

You need three things:

- **Middleware** - A queue (ActiveMQ or RabbitMQ both works!)
- **Servers** Any number of servers listening to that queue
- **Client** A client to send commands with


Ubuntu middleware/server/client
-------------------------------

Packages needed:
- Middleware ``mcollective-middleware``
- Regular servers ``mcollective-server``
- Client pc's: ``mcollective-client``

Go to every server and install the above packages. 

On clients, edit /etc/mcollective/client.cfg and on servers edit /etc/mcollective/server.cfg. Start by editing the server.cfg on the *middleware* server and adjust security settings. Then use this server.cfg as a template for the others.

**Caution: There is a bug in the init script for debian/ubuntu, you have to replace it: http://projects.puppetlabs.com/issues/13043**

Mac OS X client
---------------

Just want it to work? Run this (without sudo! We will ask for password when needed):

  **Caution: We assume you are not using RVM or other gem managers, so we install "stomp" system-wide**

``curl -L https://raw.github.com/KristianOellegaard/mcollective-docs/master/install-scripts/osx/1.2.1.sh | sh``

This installs the current stable version (1.2.1) on your mac.

Thanks to
=========

The guys at IRC for helping me find the above solutions, in specific R.I. Pienaar.