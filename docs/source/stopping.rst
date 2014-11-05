Stopping Effektif
=================
In order to stop the Effektif system completely, you have to stop the Tomcat application server and the MongoDB database. However, if you need to restart the Effektif system, it is sufficient to restart only the Tomcat server.

Windows
```````

Tomcat
^^^^^^
As already mentioned in the section Starting Effektif, the Tomcat configuration dialog offers a simple way to stop the Tomcat server. Simply open the Windows start menu, select ``Program Files\Apache Tomcat\Configure Tomcat``\ , open the tab *General* and click the button *Stop*\ .

MongoDB
^^^^^^^
If you have registered MongoDB as a Windows service, you can stop the database in two ways. Either you open the command line with adminstrator privileges and execute: ::

    net stop MongoDB

Or you run ``services.msc``\ , select MongoDB in the list of services and click on *Stop*\ .

Debian
``````

Tomcat
^^^^^^
If you installed Tomcat using a packet manager, you can simply run the following command. Be aware, the execution might require root privileges. ::
    
    /etc/init.d/tomcat7 stop

MongoDB
^^^^^^^
If MongoDB was setup following the instructions in this guide, you can simply stop the MongoDB server by executing the following command. Be aware, the execution might require root privileges. ::

    /etc/init.d/mongodb stop