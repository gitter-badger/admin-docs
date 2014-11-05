Introduction
============
This is the Effektif administration manual. It will provide you with information to setup the Effektif system on your own server infrastructure. Effektif officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. 

It is possible to setup Effektif also on other Linux distributions. However, the instructions in this manual are only tested for Debian. Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions.

Software components
-------------------
In order to setup and work with Effektif, several software components are necessary.

Effektif system
```````````````
The Effektif system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database.

Apache Tomcat
`````````````
The Apache Tomcat is an application server that hosts the Effektif web application.  The Effektif web application serves the Effektif application to the users’ browser and it also includes the backend of the Effektif system.

MongoDB
```````
MongoDB is a document-oriented database system. It is the only database system that is supported by Effektif. More detailed information about MongoDB can be found in the MongoDB documentation: http://docs.mongodb.org/v2.4/

Mail server (SMTP)
``````````````````
The mail server is necessary to send notifications and invitation requests to users. Any server that is accessible via SMTP can be used.

Web browser
```````````
Effektif runs as a web application. The user interface can be accessed using a modern web browser. More details about the supported browsers can be found in the system requirements section.

Naming conventions
------------------
Within this adminstrators guide several placeholders are used to increase the readability. 


.. tabularcolumns:: |p{4cm}|p{11cm}|

==================  ==================
``$EFFEKTIF_HOME``  Refers to the directory that contains the unzipped content of the downloaded effektif-{version}.zip.
``$TOMCAT_HOME``    Refers to the directory where your Apache Tomcat is installed. This directory contains the folders ``webapps`` and ``conf``\ . On Linux for example the directory might be located in ``/var/lib/tomcat7``\ .
``$MONGO_HOME``     Refers to the directory where your MongoDB is installed.
==================  ==================

Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system.
