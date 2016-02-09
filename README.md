#webgoat-vm

Play around with hacking a deliberately insecure web application.

This Virtual Machine setup for WebGoat 7.0 uses  ***VagrantUP Virtual Machine*** to download Ubuntu and install Tomcat Server and the WebGoat application. It's ready for practicing penetration testing once booted within minutes!

When the virtual machine boots, WebGoat and it's dependancies are installed and ready to play with on:

http://127.0.0.1:50000/WebGoat

##Introduction

### What is WebGoat?

[WebGoat](https://www.owasp.org/index.php/Category:OWASP_WebGoat_Project) is a deliberately insecure web application maintained by OWASP designed to teach web application security lessons. You can install and practice with WebGoat in either J2EE (this page) or [WebGoat for .Net] in ASP.NET. In each lesson, users must demonstrate their understanding of a security issue by exploiting a real vulnerability in the WebGoat applications. For example, in one of the lessons the user must use SQL injection to steal fake credit card numbers. The application is a realistic teaching environment, providing users with hints and code to further explain the lesson.

### What is VagrantUP

[VagrantUp](https://www.vagrantup.com/) is a pretty cool piece of virtualization software that allows you to spin up virtual machines from a command line and install software on them from a configuration file.

##Installation

### Prerequisites

You will need to install the following software:

- Install [git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git) to allow you to pull down the code from GitHub Code Repository
- Install VagrantUp on your system, see [VagrantUp](https://docs.vagrantup.com/v2/installation/)
- Install  VirtualBox, a free, cross-platform consumer virtualization product.
[Virtualbox](https://www.virtualbox.org/)

### Install WebGoat on a Virtual Machine

``` bash
git clone https://github.com/jnyryan/webgoat-vm.git
cd webgoat-vm
vagrant up

```

##Usage

When Vagrant has run, WebGoat will be installed on a virtual machine and accessible through port 50000

Goto the following URL to

```
http://127.0.0.1:50000/WebGoat
- Username: guest
- Password: guest
```

### Reset the Virtual Machine

The great thing about VagrantUP is that if you mess up, you can start again. Use the commands below to destroy the VM instance and re-provison it.

```bash
vagrant destroy
vagrant up
```

## Get Penetration Testing

All the instructions are there on the website, so after logging in, read the introduction and have a go at hacking the system. ***Happy Hacking***

### References

- [OWASP WebGoat](https://www.owasp.org/index.php/Category:OWASP_WebGoat_Project)
- [WebGoat install help](http://webappsecmovies.sourceforge.net/webgoat/)
