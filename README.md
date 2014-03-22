#vagrant-webgoat
=================

A Virtual Machine setup for WebGoat.

This is a vagrant vm that downloads Ubuntu and installs Tomcat Server and the WebGoat application. It's ready for practicing penetration testing once booted.

##Introduction

WebGoat is a deliberately insecure web application maintained by OWASP designed to teach web application security lessons. You can install and practice with WebGoat in either J2EE (this page) or [WebGoat for .Net] in ASP.NET. In each lesson, users must demonstrate their understanding of a security issue by exploiting a real vulnerability in the WebGoat applications. For example, in one of the lessons the user must use SQL injection to steal fake credit card numbers. The application is a realistic teaching environment, providing users with hints and code to further explain the lesson.

##Installation

Install VagrantUp on your system, see [VagrantUp](https://docs.vagrantup.com/v2/installation/)

``` bash
git clone 
cd vagrant-webgoat
vagrant up

```

##Access WebGoat Website

Goto the following URL to 
Username: guest
Password: guest

	http://127.0.0.1:50000/WebGoat/attack


## Try to Pen Test it

After logging in, read the introduction and have a go at hacking the system


### References
[OWASP WebGoat](https://www.owasp.org/index.php/Category:OWASP_WebGoat_Project)
[WebGoat install help](http://webappsecmovies.sourceforge.net/webgoat/