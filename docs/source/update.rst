Update
======
This section will guide you through an update of your Effektif system. It assumes you have successfully installed an early version of Effektif. If you are installing Effektif for the first time, you can skip this chapter.

.. _update-unpack-effektif:

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

.. _update-stop-effektif:

Stop Effektif
-------------
Before you can start with the update process you have to shutdown the Effektif system. It is sufficient when you shutdown the Tomcat server Effektif is running on. You don't have to shutdown the MongoDB server. Refer to chapter :ref:`stopping` for information on how to stop Effektif.

Backup MongoDB
--------------
Updating Effektif to a newer version might involve changes in the database schema. Therefore, you are requested to backup the database before you go on. See chapter :ref:`backup` for more information on how to create a backup. Furthermore, the backup is necessary in case you have to revert Effektif to an older version, because changes of the database schema are in general not backward compatible. This means you cannot run an older version of Effektif with a database that was already migrated to a newer version.

.. _update-backup-configuration:

Backup the configuration files
------------------------------
During the first setup you have modified some configuration files and added the Effektif license file. In order to preserve those changes, you have to copy those files to another location before updating the Effektif system. You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .

=================================   ====================================
``effektif-onpremise.properties``   Effektif configuration file
``logback.xml``                     configuration file for Effektif logs
``license.xml``                     Effektif license file
=================================   ====================================

Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ .

.. _update-install-version:

Install a new version
---------------------
In order to update the Effektif system, you have to replace the ``ROOT`` folder in ``$TOMCAT_HOME/webapps`` with the newer version you can find in the extracted directory ``$EFFEKTIF_HOME/effektif``\ . 

#. Delete the folder ``$TOMCAT_HOME/webapps/ROOT`` completely. 
#. Copy the folder ``$EFFEKTIF_HOME/effektif/ROOT`` to ``$TOMCAT_HOME/webapps``\ .
#. Copy the configuration files you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .
#. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ .

.. _update-revisit-configuration:

Revisit the configuration files
-------------------------------
Upon upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values. Therefore, it necessary that you refer to section :ref:`configure-effektif` and make sure your Effektif configuration file is up-to-date before starting the system again.

Start Effektif
--------------
When you have successfully installed the new Effektif version and verified that the configuration files are up-to-date, you can restart the Effektif system. Refer to chapter :ref:`starting-effektif` for more information on how to start Effektif. 

During the first startup the Effektif system will migrate the database if there are any outstanding schema changes. Therefore, the startup might take a short while depending on the size of your database. If the system doesn't become available again within minutes, please check the Effektif log file for any new error reports.

Restore an older version
------------------------
In case of exceptional problems you might want to restore an older version of Effektif. Be aware, if you revert Effektif to an older version, it is not guaranteed that you can keep on using your current database. The upgrade to a newer version can involve schema changes that render the database incompatible with older versions of Effektif. In this situation, the Effektif system will not start if it detects a newer version of the database schema which it doesn't support. This is the reason why you should create a backup before updating the system. 

In order to restore an older version, you can follow the instructions in this chapter again. However, instead of creating a backup you should restore an older backup.

#. Unpack the older version of Effektif, see :ref:`update-unpack-effektif`
#. Stop the Effektif system, see :ref:`update-stop-effektif`
#. Restore an earlier back up that was taken while the old Effektif version was deployed. See chapter :ref:`restore` for more information on how to restore a backup.
#. Backup the configuration files, see :ref:`update-backup-configuration`
#. Install the older version in ``$TOMCAT_HOME/webapps``\ , see :ref:`update-install-version`
#. Check the configuration files again, see :ref:`update-revisit-configuration`
#. Start the Effektif system, see :ref:`starting-effektif`

Now, the Effektif system should be running with the older version again.