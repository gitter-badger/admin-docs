Restore
=======
Backups can be restored using MongoDB’s mongorestore. Similar to mongodump it is executed on the command line. For more detailed information on mongorestore see the official documentation:

http://docs.mongodb.org/v2.4/reference/program/mongorestore/

You will need to use the Effektif MongoDB user credentials again to overwrite the contents of the Effektif databases.

We recommend running mongorestore with the parameter --drop which will remove every collection (table) from the database before it is restored.

Windows
```````
The mongorestore.exe can be found in your MongoDB installation directory: ``$MONGO_HOME\bin\mongorestore.exe``\ . If you followed the instructions in this guide to setup the database, you can execute the following command on the command line: ::

    C:\MongoDB\bin\mongorestore.exe --drop -u effektif -p <EffektifUserPassword> C:\path\to\dumps

Replace the user credentials with the ones you have chosen during the setup and the directory with the one where you store your backups.

Debian
``````
Using Debian, the command to restore a backup stored in /path/to/dump would look like this: ::

    mongorestore --drop -u effektif -p <EffektifUserPassword> /path/to/dump

As you can see, you have to fill in the credentials of the Effektif MongoDB user again. Furthermore, you need to specify where the backup is located.