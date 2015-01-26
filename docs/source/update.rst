Update
======
This section will guide you through an update of your Effektif system. It assumes you have successfully installed an early version of Effektif. If you are installing Effektif for the first time, you can skip this chapter.

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

Stop Effektif
-------------
Before you can start with the update process you have to shutdown the Effektif system. It is sufficient when you shutdown the Tomcat server Effektif is running on. You don't have to shutdown the MongoDB server. Refer to chapter :ref:`stopping` for information on how to stop Effektif.

Backup MongoDB
--------------
Updating Effektif to a newer version might involve changes in the database schema. Therefore, you are requested to backup the database before you go on. See chapter :ref:`backup` for more information on how to create a backup.

.. _backup-configuration:

Backup the configuration files
------------------------------
During the first setup you have modified some configuration files and added the Effektif license file. In order to preserve those changes, you have to copy those files to another location before updating the Effektif system. You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .

=============================   ====================================
effektif-onpremise.properties   Effektif configuration file
logback.xml                     configuration file for Effektif logs
license.xml                     Effektif license file
=============================   ====================================

Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ .

Install a new version
---------------------
In order to update the Effektif, system you have to replace the ``ROOT`` folder in ``$TOMCAT_HOME/webapps`` with the newer version you can find in the extracted directory ``$EFFEKTIF_HOME/effektif``\ . 

#. Delete the folder ``$TOMCAT_HOME/webapps/ROOT`` completely. 
#. Copy the folder ``$EFFEKTIF_HOME/effektif/ROOT`` to ``$TOMCAT_HOME/webapps``\ .
#. Copy the configuration files you have backed up in subsection :ref:`backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .
#. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ .

Revisit the configuration files
-------------------------------
Upon upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values. Therefore, it necessary that you refer to section :ref:`configure-effektif` and make sure your Effektif configuration file is up-to-date before starting the system again.

Start Effektif
--------------
When you have successfully installed the new Effektif version and verified that the configuration files are up-to-date, you can restart the Effektif system. Refer to chapter :ref:`starting-effektif` for more information on how to start Effektif.

Restore an older version
------------------------
