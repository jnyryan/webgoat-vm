vagrant-webgoat
=================

A Virtual Machine setup for WebGoat.

This is a vagrant vm that downloads Ubuntu and installs Tomcat Server and the WebGoat application. It's ready for practicing penetration testing once booted.


Installation

Install VagrantUp on your system.



``` bash
vagrant box add base http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box
vagrant init
vagrant up

```



### References
http://webappsecmovies.sourceforge.net/webgoat/