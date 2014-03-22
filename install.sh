#!/bin/bash

echo Update and install Tomcat
apt-get update
apt-get install -y build-essential libncurses5-dev curl
tasksel install tomcat-server

#echo from http://samiux.blogspot.ie/2013/07/howto-webgoat-54-on-ubuntu-server-1204.html
echo 'Downloading and installing WebGoat'
wget http://webgoat.googlecode.com/files/WebGoat-5.4.war
mv WebGoat-5.4.war WebGoat.war
cp WebGoat.war /var/lib/tomcat6/webapps/

echo 'Edit Webgoat configuration /etc/tomcat6/tomcat-users.xml'

if [[ -z `grep "WebGoat Users" /etc/tomcat6/tomcat-users.xml` ]]; then

	echo 'Removing previous tags'
	sed -i '/tomcat\-users/d' /etc/tomcat6/tomcat-users.xml

	echo '	<!--WebGoat Users-->
	<tomcat-users>
	<role rolename="webgoat_basic"/> \
	<role rolename="webgoat_admin"/> \
	<role rolename="webgoat_user"/> \
	<role rolename="tomcat"/> \ 
	<user password="webgoat" roles="webgoat_admin" username="webgoat"/> \
	<user password="basic" roles="webgoat_user,webgoat_basic" username="basic"/> \
	<user password="tomcat" roles="tomcat" username="tomcat"/> \
	<user password="guest" roles="webgoat_user" username="guest"/> \
	</tomcat-users>' >> /etc/tomcat6/tomcat-users.xml
	
fi

echo Restart Tomcat.
/etc/init.d/tomcat6 restart

