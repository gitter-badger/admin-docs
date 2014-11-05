Signavio integration
====================
The Signavio integration with Effektif enables Signavio users to execute approval workflows for their process models using Effektif. In order to setup the integration properly, both systems, Signavio and Effektif, have to be installed. For information about installing Signavio refer to Signavio's adminstration manual. In case both systems run on the same server, you need to set up two Tomcat instances.

Setup
-----
1. Make sure both systems are NOT running.
2. Edit the Signavio configuration file ``ROOT/WEB-INF/classes/configuration.xml`` which can be found in the Tomcat that hosts the Signavio system. ::
    
    <effektif>  
      <effektifServerUrl>http://your.effektif.domain:port</effektifServerUrl>
      <effektifUserName>system@signavio.com</effektifUserName>
      <effektifUserPw>yourpassword</effektifUserPw>
    </effektif>

.. tabularcolumns:: |p{4cm}|p{11cm}|
=====================   =====================
``effektifServerUrl``   Defines the URL under which your Effektif system is available.
``effektifUserName``    Defines the mail of the system user that will access the Effektif system. Make sure to use ``system@signavio.com`` to ensure the integration to work properly. The value is already preconfigured. You do NOT have to create an account for this user in any of the systems.
``effektifUserPw``      Defines the password of the system user. Remember this password, you will need to set the exact same password in the Effektif configuration file.
=====================   =====================

3. Edit the Effektif configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` and add / update the following entries. ::

    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
        serviceBaseUrl=http://your.signavio.domain:port
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
       clientId=com.effektif.oem
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
       clientSecret=yourpassword

If you add any of the following properties to the configuration file, make sure to add the required prefix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` in front of the property key:

.. tabularcolumns:: |p{4cm}|p{11cm}|
==================  ==================
``serviceBaseUrl``  Defines the URL under which your Signavio system is available.
``clientId``        Defines the ID the Effektif system uses to identify itself to the Signavio system. Make sure to use ``com.effektif.oem`` to ensure the integration to work properly. This value is already preconfigured.
``clientSecret``    Defines the password the Effektif system uses to identify itself to the Signavio system. Reuse the same password that you have set in the Signavio configuration file.
==================  ==================

4. Start both systems.
5. Activate the approval workflow feature within your Signavio workspace. Your Effektif organization will be setup automatically. For more information on how to activate the approval workflow, refer to Signavio's user manual.

User management
---------------
In case you use the Effektif OEM version that is shipped with Signavio, the user management is handled by the Signavio system. The Signavio system will synchronise all Signavio users to Effektif. Within Effektif you will not be able to register any initial user nor invite more users. 

If you have purchased a standalone version of Effektif, you will be able to create an initial user and invite more users to Effektif. However, it is advised to create your Effektif organization by activating the approval workflow feature in Signavio. This way your Signavio workspace and the Effektif organization will be linked automatically.