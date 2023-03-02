#!/bin/bash

PROJECT_NAME=$1

function _iSpireWeb
{

echo "======> Installing SPiRE Web"
echo " "
SPIRE_WAR_PATH=`ls /tmp/installer_files/spire-${PROJECT_NAME}-web-*.war`
SPIRE_WAR=spire-${PROJECT_NAME}-web-*.war
  if [ -n "SPIRE_WAR_PATH" ]; then

echo "War file found at SPIRE_WAR"
cp ${SPIRE_WAR_PATH} /usr/share/tomcat_spire/webapps/
mv /usr/share/tomcat_spire/webapps/${SPIRE_WAR} /usr/share/tomcat_spire/webapps/web.war
chown -R spire:spire /usr/share/tomcat_spire/
echo "======> Done Installing Spire "	
#echo " Updating Spire Change Log File"
#updateChangeLog ${SPIRE_WEB_CHLOG_PATH} ${SPIRE_WAR_PATH} "Initial Install"
  else
    echo "SPIRE_WAR file not present, skipping"
  fi

}

function _iAdjudicationWeb
{

# Adjudication Web client setup
echo "======> Installing ADJUDiCATION Web"
echo " "
ADJ_WAR_PATH=`ls /tmp/installer_files/adjudication-web-${PROJECT_NAME}-*.war`
ADJ_WAR=adjudication-web-${PROJECT_NAME}-*.war
  if [ -n "ADJ_WAR_PATH" ]; then
cp ${ADJ_WAR_PATH} /usr/share/tomcat_adjudication/webapps/
mv /usr/share/tomcat_adjudication/webapps/${ADJ_WAR} /usr/share/tomcat_adjudication/webapps/adjudication.war
chown -R spire:spire /usr/share/tomcat_adjudication/
echo "======> Done"
#echo " Updating Adjudication Web Change Log File"
#updateChangeLog ${ADJUDiCATION_CHLOG_PATH} ${ADJ_WAR_PATH} "Initial Install"
  else
    echo "ADJ_WAR file not present, skipping"		
  fi
}

function _iRestServer
{

# Rest service client setup
echo "======> Installing REST Server"
echo " "
SPIRE_REST_PATH=`ls /tmp/installer_files/${PROJECT_NAME}-rest-server-*.war`
SPIRE_REST_WAR=${PROJECT_NAME}-rest-server-*.war
  if [ -n "SPIRE_REST_PATH" ]; then
  
  cp ${SPIRE_REST_PATH} /usr/share/tomcat_rest/webapps/
  mv /usr/share/tomcat_rest/webapps/${SPIRE_REST_WAR} /usr/share/tomcat_rest/webapps/${PROJECT_NAME}-rest.war
  chown -R spire:spire /usr/share/tomcat_rest
  echo "======> Done"
  #echo " Updating SPIRE REST Change Log File"
#updateChangeLog ${SPIRE_REST_CHLOG_PATH} ${SPIRE_REST_PATH} "Initial Install"
  else
    echo "SPIRE_REST_WAR is not present, skipping" 
  fi
}

function _iSelfServiceAdmin
{

# SelfServiceAdmin client setup
echo "======> Installing Self Service Admin Server"
echo " "
SPIRE_SELFSERVICEADMIN_PATH=`ls /tmp/installer_files/spireselfservice-admin-*.war`
SPIRE_SELFSERVICEADMIN_WAR=spireselfservice-admin-*.war
  if [ -n "SPIRE_SELFSERVICEADMIN_PATH" ]; then
   cp ${SPIRE_SELFSERVICEADMIN_PATH} /usr/share/tomcat_selfserviceAdmin/webapps/
   mv /usr/share/tomcat_selfserviceAdmin/webapps/${SPIRE_SELFSERVICEADMIN_WAR} /usr/share/tomcat_selfserviceAdmin/webapps/admin-${PROJECT_NAME}-web.war
   chown -R spire:spire /usr/share/tomcat_selfserviceAdmin
   echo "======> Done"
   #echo " Updating SPIRE SELF SERVICE ADMIN Change Log File"
#updateChangeLog ${SPIRE_SELFSERVICE_ADMIN_CHLOG_PATH} ${SPIRE_SELFSERVICEADMIN_PATH} "Initial Install"
  else
    echo "SPIRE_SELFSERVICEADMIN_WAR is not present, skipping"
  fi		
}

function _iSelfService
{

# SelfService client setup
echo "======> Installing Self Service Server"
echo " "
SPIRE_SELFSERVICE_PATH=`ls /tmp/installer_files/${PROJECT_NAME}-selfservice-*.war`
SPIRE_SELFSERVICE_WAR=${PROJECT_NAME}-selfservice-*.war

  if [ -n "SPIRE_SELFSERVICE_PATH" ]; then
   cp ${SPIRE_SELFSERVICE_PATH} /usr/share/tomcat_selfservice/webapps/
   mv /usr/share/tomcat_selfservice/webapps/${SPIRE_SELFSERVICE_WAR} /usr/share/tomcat_selfservice/webapps/spireselfservice.war
   chown -R spire:spire /usr/share/tomcat_selfservice
   echo "======> Done"
   #echo " Updating SPIRE SELF SERVICE Change Log File"
   #updateChangeLog ${SPIRE_SELFSERVICE_CHLOG_PATH} ${SPIRE_SELFSERVICE_PATH} "Initial Install"
  else 
    echo "SPIRE_SELFSERVICE_WAR is not present, skipping"
  fi		
}

function _iDemarcation
{

# Demarcation client setup
echo "======> Installing Demarcation Server"
echo " "
DEMARCATION_PATH=`ls /tmp/installer_files/spire-demarcation-*.war`
DEMARCATION_WAR=spire-demarcation-*.war

  if [ -n "DEMARCATION_PATH" ]; then
   cp ${DEMARCATION_PATH} /usr/share/tomcat_demarcation/webapps/
   mv /usr/share/tomcat_demarcation/webapps/${DEMARCATION_WAR} /usr/share/tomcat_demarcation/webapps/demarcation.war
   chown -R spire:spire /usr/share/tomcat_demarcation
   echo "======> Done"
  else
    echo "DEMARCATION_WAR is not present, skipping"
  fi
		
}

_iSpireWeb
_iAdjudicationWeb
_iRestServer
#_iSelfServiceAdmin
#_iSelfService
#_iDemarcation

 #function iDemarcationServer

 #{
 # Rest service client setup
 #echo "======> Installing REST Server"
 #echo " "
 #cp /tmp/installer_files/car-demarcation.war /usr/share/tomcat_demarcation/webapps/
 #chown -R spire:spire /usr/share/tomcat_demarction
 #systemctl start spire_rest.service
 #sleep 10
  #Waiting for Start-up of rest service
  #rm "start?path="*
 # /usr/bin/wget --http-user=spirescript --http-password=Sp1reAdm1n \
		# # http://127.0.0.1:8082/manager/text/start?path=/spirefw-service&org.apache.catalina.filters.CSRF_NONCE=5D0407DE788110B7D9746106CE106191 >/dev/null 2>&1
 # while [ ! -s "start?path=%2Fspirefw-service" ]
 # do
		# # sleep 1
 # done
 # echo $DATE"[war] spirefw-service.war deployed and started: `cat "start?path=%2Fspirefw-service"`" >>$UPDLOG
 #echo "Done"

# }

#function iAdjudicationGatewayStandalone
#{

#echo "======> Installing ADJUDiCATION Gateway Standalone"	
#echo " "
#ADJ_GW_PATH=`ls /tmp/installer_files/adjudication-gateway-${PROJECT_NAME}-*.jar`
#ADJ_JAR=adjudication-gateway-${PROJECT_NAME}-*.jar
# Adjudication Gateway Standalone setup
#mkdir -p /usr/share/gktools/adjudicationGateway/
#cp ${ADJ_GW_PATH}  /usr/share/gktools/adjudicationGateway/
#mv  /usr/share/gktools/adjudicationGateway/${ADJ_JAR} /usr/share/gktools/adjudicationGateway/adjudicationGateway.jar
#chown -R spire:spire /usr/share/gktools/
#cp ServiceScripts/adjudication_gateway.service /etc/systemd/system/
#cp ServiceScripts/adjudication_gateway /etc/systemd/system/
#chmod 755 /etc/systemd/system/adjudication_gateway.service
#chmod 755 /etc/systemd/system/adjudication_gateway
#systemctl start adjudication_gateway.service
#systemctl enable /etc/systemd/system/adjudication_gateway.service

#echo $DATE"[jar] adjudicationGateway.jar deployed: "
#echo "Done"
#echo " Updating Adjudication Gateway Change Log File"
#updateChangeLog ${ADJUDiCATION_GW_CHLOG_PATH} ${ADJ_GW_PATH} "Initial Install"
		
#}

#function iImportTool
#{
#
#echo "======> Installing Import tool"
#echo " "
# TZ import tool setup
#mkdir -p /usr/share/gktools/importTool/
#cp  /tmp/installer_files/${PROJECT_NAME}-importer-*.jar /usr/share/gktools/importTool/
#mv  /usr/share/gktools/importTool/${PROJECT_NAME}-importer-*.jar /usr/share/gktools/importTool/${PROJECT_NAME}-importer.jar
#chown -R spire:spire /usr/share/gktools/
#chmod +x /usr/share/gktools/importTool/${PROJECT_NAME}-importer.jar
#echo "Done"		
#}




