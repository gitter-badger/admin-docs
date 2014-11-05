��          �       �      �     �  �   �     �  T   �     �    �     �       �        �  d     �   j  8   8     q  �   �  �   h  �     �   �  �   �	     
  Z   #
     ~
     �
     �
  �  �
     _    m     |  h   �  
   �  �         �     �  �         �  t   �  �   T  H   +     t  /  �  U   �  �     X  �  �     
   �  v   �     V     i     y   Apache Tomcat Effektif runs as a web application. The user interface can be accessed using a modern web browser. More details about the supported browsers can be found in the section :ref:`supported-browsers`\ . Effektif system In order to setup and work with Effektif, several software components are necessary. Introduction It is possible to setup Effektif also on other Linux distributions. However, the instructions in this manual are only tested for Debian. Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions. Mail server (SMTP) MongoDB MongoDB is a document-oriented database system. It is the only database system that is supported by Effektif. More detailed information about MongoDB can be found in the MongoDB documentation: http://docs.mongodb.org/v2.4/ Naming conventions Refers to the directory that contains the unzipped content of the downloaded effektif-{version}.zip. Refers to the directory where your Apache Tomcat is installed. This directory contains the folders ``webapps`` and ``conf``\ . On Linux for example the directory might be located in ``/var/lib/tomcat7``\ . Refers to the directory where your MongoDB is installed. Software components The Apache Tomcat is an application server that hosts the Effektif web application.  The Effektif web application serves the Effektif application to the users’ browser and it also includes the backend of the Effektif system. The Effektif system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database. The mail server is necessary to send notifications and invitation requests to users. Any server that is accessible via SMTP can be used. This is the Effektif administration manual. It will provide you with information to setup the Effektif system on your own server infrastructure. Effektif officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system. Web browser Within this adminstrators guide several placeholders are used to increase the readability. ``$EFFEKTIF_HOME`` ``$MONGO_HOME`` ``$TOMCAT_HOME`` Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-30 13:50+0100
PO-Revision-Date: 2014-11-05 19:11+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: de
X-Generator: Poedit 1.6.9
X-Poedit-SourceCharset: UTF-8
 Apache Tomcat Da es sich bei Effektif um eine Webanwendung handelt, wird die Nutzeroberfläche über einen Webbrowser aufgerufen. Hierfür können gängige moderne Webbrowser verwendet werden. Details zu den unterstützten Browsern finden Sie im Abschnitt :ref:`supported-browsers`\ . Effektif System Um Effektif zu installieren und mit Effektif zu arbeiten, werden mehrere Software-Komponenten benötigt. Einleitung Es ist jedoch möglich, Effektif auf weiteren Linux-Distributionen zu installieren. Die Linux-Beispiele in den Installationsanweisungen sind jedoch auf Debian zugeschnitten und können bei anderen Linux-Distributionen abweichen. Mail server (SMTP) MongoDB MongoDB ist ein Dokument-basiertes Datenbanksystem, das notwendig ist um Effektif auf dem Server erfolgreich auszuführen. Detaillierte Information über MongoDB erhalten Sie hier: http://docs.mongodb.org/v2.4/ Platzhalter Bezeichnet das Verzeichnis, das den entpackten Inhalt des bereitgestellten effektif-{version}.zip-Archives enthält.  Bezeichnet das Verzeichnis, in dem Ihre Apache Tomcat Instanz installiert ist. Das Verzeichnis enthält die Ordner ``webapps`` und ``conf``\ . Unter Linux findet man das Verzeichnis z.B. in ``/var/lib/tomcat7``\ . Bezeichnet das Verzeichnis, in dem Ihre MongoDB Instanz installiert ist. Software-Komponenten Apache Tomcat ist ein Applikationsserver, in dem die Effektif Webanwendung bereitgestellt wird. Durch die Effektif Webanwendung werden die Front End-Applikationsdateien für die Browser der Nutzer verfügbar gemacht und über Request Handler mit der im Tomcat ausgeführten Back End-Anwendung verbunden. Das Effektif System bezeichnet die Anwendung, die Sie auf Ihrem Server ausführen…. Um Benachrichtungen und Einladungen zu versenden, muss Effektif mit einem Email-Server verbunden werden. Hierfür kann ein beliebiger Server verwendet werden, der SMTP unterstützt. Dieses Dokument beinhaltet das Effektif Administratorenhandbuch. Es enthält detaillierte Informationen und Anweisungen für die Installation von Effektif auf Ihren hauseigenen Server (oder auf der Infrastruktur eines Cloudanbieters Ihrer Wahl). Effektif unterstützt offiziell die Betriebssysteme Windows Server 64 Bit und Debian Stable 64 Bit Diese Platzhalter werden in den Kommandozeilen-Beispielen verwendet. Um die Kommandos auszuführen, müssen die Platzhalter durch die entsprechenden Verzeichnispfade ersetzt werden. Webbrowser Um die Verständlichkeit zu verbessern, werden in diesem Administratorenhandbuch die folgenden Platzhalter verwendet:  ``$EFFEKTIF_HOME`` ``$MONGO_HOME`` ``$TOMCAT_HOME`` 