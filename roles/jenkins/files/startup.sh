#!/bin/bash
java -Duser.home=/opt/jenkins \
-Djenkins.install.runSetupWizard=false \
-Djava.awt.headless=true -Dhudson.plugins.git.GitSCM.verbose=true \
-Dorg.apache.commons.jelly.tags.fmt.timeZone=Europe/London \
-Duser.timezone=Europe/London -Dhttps.protocols=TLSv1.2 \
-Dorg.eclipse.jetty.server.Request.maxFormContentSize=5000000 \
-Dhudson.plugins.parameterizedtrigger.ProjectSpecificParametersActionFactory.compatibility_mode=true \
-Dpermissive-script-security.enabled=true -XX:MaxMetaspaceSize=1g \
-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -XX:+DisableExplicitGC \
-Xms1000m -Xmx3000m -Dcom.sun.management.jmxremote.ssl=false \
-jar /opt/jenkins/jenkins.war
