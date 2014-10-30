Installation
============
This section will guide you through the setup of Effektif. Simply follow the subsections step by step.

System requirements
-------------------

Operating system
````````````````
The Effektif system can be deployed on different operating systems. Officially supported are the following operating systems:

* Debian Stable Release 64Bit
* Microsoft Windows Server 64Bit

You are advised to use a 64Bit operating system in order to be able to assign more than 1.5GB of heap space to the Java VM. Furthermore, MongoDB is limited to 2GB of content on 32Bit operating systems.

Hardware requirements
`````````````````````
The described installation in this adminstration guide will setup the database and the application server on the same system. However, it is also possible to setup the database and application server on separate systems. For instance, if you have already an infrastructure that provides MongoDB instances for different applications, you can simply reuse your infrastructure and just create another database for Effektif.

The minimal hardware requirements for the combined system of application and database server are:

* 4 GB RAM
* 4 core CPU
* 50 GB disk space

The mentioned amount of RAM will be sufficient to execute the Effektif system. Nevertheless, if you can provide the system with more memory, you are advised to do so. Especially MongoDB will benefit from additional system memory.

The required disk space depends on how you will use Effektif. 50 GB should be sufficient disk space for most scenarios. However, if you plan on using a lot of file uploads in your processes the required disk space depends largely on the number and size of the uploaded files. Be aware, the required disk space does not include the space necessary for backups. If you plan on storing the backups on the same server, you should add more.

Other systems
`````````````
The Effektif system relies on a SMTP mail server to send notifications and invite users. You can simply reuse any existing mail server in your organization that supports access via SMTP. 

Software requirements
`````````````````````
In order to run Effektif on your server, you will need to install some additional software. Depending on your deployment strategy (combined or separate system for application and database), you have to install the following software requirements either on the same server or the respective separate servers. The next sections will contain additional instructions on how to install and configure the additional software components.

The application server requires the following additional software:

* Java: Oracle JSE version 7 (1.7.0_67+)
* Apache Tomcat 7

The database server requires the following additional software:

* MongoDB version 2.4.x

Be aware, MongoDB version 2.6.x is not yet officially supported by Effektif. Please, make sure to install version 2.4.x.

Web browser
```````````
A current web browser is necessary on every client that shall display the Effektif user interface. The following list shows the supported web browsers and versions:

* Google Chrome 23 or newer
* Mozilla Firefox 10 or newer
* Microsoft Internet Explorer 9 or newer
* Apple Safari 5 or newer

Unpack Effektif
---------------
Unzip the effektif-{version}.zip to a directory of your choice, e.g. ``/yourlocation/effektif-{version}``
In the rest of this guide, we'll refer to the effektif home directory as ``$EFFEKTIF_HOME``\ .
The directory will contain the following files:

* \*.sh - Linux shell scripts 
* db - directory that contains MongoDB configuration files

    * mongodb.conf - configuration file for Linux
    * mongod.cfg - configuration file for Windows

* effektif - directory 

    * ROOT - this directory contains the web application

On Linux systems you need to make the scripts executable with the chmod command like this:

``chmod a+x $EFFEKTIF_HOME/*.sh``

Install Java
------------
The application server requires a Java runtime environment in order to execute the Java backend of Effektif. Therefore, you have to install Java 7 64Bit on the application server. You can download a respective installation package for your operating system here: 

https://www.java.com/en/download/manual.jsp

Install Tomcat
--------------
The Java backend of the Effektif system is executed using Apache Tomcat 7. Effektif does not support any older or younger versions of Tomcat than version 7. 

You can download the latest installation files for different operating systems from the following site:

http://tomcat.apache.org/download-70.cgi

In general, please make sure the user executing the Tomcat has read / write permissions for the folder ``$TOMCAT_HOME/webapps`` and the containing subfolders.

Windows
```````
If you are using a Windows system, the download site offers a Windows Service Installer (“32-bit/64-bit Windows Service Installer”). This installer will install the Apache Tomcat as a Windows service which can be started, stopped and configured over a graphical user interface. The service installer is the recommended way for Windows users to install the Tomcat server. Please, make sure you execute the installer with administrator privileges.

Furthermore, it is recommended to install the Apache Tomcat into a root folder on ``C:\``\ .

Debian
``````
If you are using Linux, you might consider installing Apache Tomcat using a packet manager. In case of Debian, you can use the Advanced Packaging Tool (APT) and execute the following command:

``apt-get install tomcat7``

Configure Tomcat
----------------
This section will point the configuration options that are required to run Effektif. However, Tomcat offers more configuration options that can be found in the official documentation:

http://tomcat.apache.org/tomcat-7.0-doc/

Java options
````````````
There are some Java options that need to be configured before starting the Tomcat server. These options are configured using the ``JAVA_OPTS`` environment variable. It should contain the following values:

* ``-Xms1536m`` - minimum RAM, should be at least 1.5GB  
* ``-Xmx2048m`` - maximum RAM, should be at least 2GB but more is recommended

    * with a maximum RAM of 4GB the option would be ``-Xmx4096m``

* ``-Dfile.encoding=UTF-8``
* ``-XX:PermSize=128m``
* ``-XX:MaxPermSize=256m``

-Xms1536m               minimum RAM, should be at least 1.5GB  
-Xmx2048m               maximum RAM, should be at least 2GB but more is recommended
-Dfile.encoding=UTF-8   sets UTF-8 as Apache Tomcats default encoding mechanism
-XX:PermSize=128m       blub
-XX:MaxPermSize=256m    blub

In order to allocate sufficient RAM to the Tomcat server you have to set the options Xms and Xmx followed by the number of MB allocated and a literal ‘m’. ``Xms`` defines the initial / minimum amount of RAM that is used and ``Xmx`` the allowed maximum. You are advised to allocate at least 2GB of RAM to the Tomcat. However, it is recommended to use more RAM. For example, if you want to assign 4GB of maximum RAM the option would be ``-Xmx4096m``\ .

The option ``-Dfile.encoding=UTF-8`` sets UTF-8 as Apache Tomcats default encoding mechanism.

The values for the permanent generation space have to be increased as well, these are defined by the values ``-XX:PermSize=128m`` and ``-XX:MaxPermSize=256m``\ .