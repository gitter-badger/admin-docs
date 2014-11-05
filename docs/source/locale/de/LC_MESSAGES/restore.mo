��          |       �       �   �   �   �   s     2  �   9     �  �   �  ^   �  �        �  u   �  <   -  �  j  }     
  �     �  �   �     l	  �   ~	  �   }
  �        �  y   �  <   3   As you can see, you have to fill in the credentials of the Effektif MongoDB user again. Furthermore, you need to specify where the backup is located. Backups can be restored using MongoDB’s mongorestore. Similar to mongodump it is executed on the command line. For more detailed information on mongorestore see the official documentation: Debian Replace the user credentials with the ones you have chosen during the setup and the directory with the one where you store your backups. Restore The mongorestore.exe can be found in your MongoDB installation directory: ``$MONGO_HOME\bin\mongorestore.exe``\ . If you followed the instructions in this guide to setup the database, you can execute the following command on the command line: :: Using Debian, the command to restore a backup stored in /path/to/dump would look like this: :: We recommend running mongorestore with the parameter --drop which will remove every collection (table) from the database before it is restored. Windows You will need to use the Effektif MongoDB user credentials again to overwrite the contents of the Effektif databases. http://docs.mongodb.org/v2.4/reference/program/mongorestore/ Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-31 11:18+0100
PO-Revision-Date: 2014-11-05 19:16+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: de
X-Generator: Poedit 1.6.9
X-Poedit-SourceCharset: UTF-8
 Der Parameter –u beschreibt den Nutzernamen, der Parameter –p das Passwort. Passen Sie zudem den Pfad zu Ihrem Backup an. Backups können über den MongoDB-Befehl mongorestore wiederhergestellt werden.mongorestore kann – vergleichbar zu mongodump – über die Kommandozeile ausgeführt werden. Weitere Informationen zu mongorestore können Sie der offiziellen Dokumentation entnehmen:  Debian Der Ort der MongoDB-Installation muss gegebenenfalls angepasst werden. Der Parameter –u beschreibt den Nutzernamen, der Parameter –p das Passwort. Passen Sie zudem den Pfad zu Ihrem Backup an. Wiederherstellung Die Datei mongorestore.exe kann im MongoDB Installationsverzeichnis, also unter ``$MONGO_HOME\bin\mongorestore.exe`` gefunden werden. Falls Sie der Installationsbeschreibung in diesem Handbuch gefolgt sind, lässt sich das Backup wie folgt einspielen: :: Unter Debian kann das Wiederherstellungskommando, um ein Backup aus dem Pfad /path/to/dump wieder herzustellen, wie folgt ausgeführt werden: :: Wir empfehlen mongorestore mit dem Paremeter --drop auszuführen, der alle Collections (Tabellen) aus der Datenbank entfernt, bevor die Wiederherstellung beginnt. Windows Zum Überschreiben des Inhalts der Effektif-Datenbank benötigen Sie wieder die Nutzerdaten des Effektif MongoDB-Nutzers. http://docs.mongodb.org/v2.4/reference/program/mongorestore/ 