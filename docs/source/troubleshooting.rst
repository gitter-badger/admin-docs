Troubleshooting
===============

Where are the log files?
------------------------
There are multiple different log files that yield information in case of an error scenario. The following subsections will assist you in finding the log files for every part of the Effektif application. The most important one, regarding the Effektif system is the ``effektif.log``\ . It will contain any application related log entries.

Effektif
````````
The Effektif log file effektif.log can be found in the location you configured in the logging configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/logback.xml``\ . This file contains the line: ::

    <property name="LOG_DIR" value="/path/to/log"/>

The value contains the directory of the log file. Besides the ``effektif.log`` the directory contains more log files for every day of the past 30 days the server was running. If you are looking for any information about incidents on a specific date, open the log file with the respective timestamp.

MongoDB 
```````
The MongoDB log file is configured by the logpath option. This is either defined in the MongoDB configuration file that you reference when starting MongoDB or directly as a start parameter of MongoDB. Anyway, the value of this parameter will tell you where to find the log file.

On Linux, one default location where the log file can be found is ``/var/log/mongodb/mongodb.log``\ . Whereas a default location for the configuration file is ``/etc/mongodb.conf``\ . Be aware, these locations can change depending on the distribution and depend on how you have installed MongoDB.

If you are using Windows and followed the instructions in this guide to setup MongoDB, you should find the log file in your MongoDB installation directory ``$MONGO_HOME\logs``\ .

Tomcat
``````
If not configured otherwise, the log files of the Apache Tomcat application server can be found either in the installation directory of the Tomcat ``$TOMCAT_HOME\logs`` (Windows) or a common log directory e.g. ``/var/log/tomcat7`` (Linux).

Common problems
---------------
This section lists some common problems that can arise during the setup of the Effektif system and gives instructions on how to solve them.

Problem:
    The Effektif site shows a HTTP Status 500 error including the message ``root cause java.lang.RuntimeException: Cannot find license.xml``\ . 

Solution: 
    You have not installed the Effektif license.xml at all or placed it in the wrong directory. Jump to section Configure Effektif > Install the license file to solve the issue.

Problem:
    Executing a MongoDB command yields the error message ``errmsg: “unauthorized”`` or  ``errmsg: “auth fails”``\ .

Solution:
    Either the username / password combination that is used to execute the command is wrong or the respective MongoDB user lacks some required roles.

    The first issue can be checked by executing:

    Windows: ``mongo.exe admin -u effektif -p <yourEffektifUserPassword>``
    
    Debian: ``mongo admin -u effektif -p <yourEffektifUserPassword>``
    
    If this command fails with the error message ``exception: login failed`` you know that your username / password combination is wrong. Please, make sure you spelled the username and password correctly.

    In order to check the second issue, jump to section Configure MongoDB > Add a database user for Effektif. This section lists all necessary roles and explains how to verify that the Effektif user has all the required roles. Especially the restore and backup commands require certain roles to work properly.