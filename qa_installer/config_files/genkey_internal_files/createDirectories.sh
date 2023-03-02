#!/bin/sh
# Creating Folder Structures
DATA_DIR=/data
LOGS_DIR=/home/logFiles
echo "data location ${DATA_DIR}"
if [ ! -d ${DATA_DIR} ]; then
        mkdir ${DATA_DIR}
fi
cd ${DATA_DIR}
echo "Creating GENKEY_INTERNAL Folder"
if [ ! -d GENKEY_INTERNAL ]; then
        mkdir GENKEY_INTERNAL
fi
if [ ! -d elasticSearchData ]; then
        mkdir elasticSearchData
fi
echo "Creating Log Folders"
if [ ! -d ${LOGS_DIR} ]; then
   mkdir ${LOGS_DIR}
fi
cd ${LOGS_DIR}
if [ ! -d spire_web ]; then
   mkdir spire_web
fi
if [ ! -d adjudication_web ]; then
   mkdir adjudication_web
fi
if [ ! -d adjudication_gateway ]; then
   mkdir adjudication_gateway
fi
if [ ! -d spire_rest ]; then
   mkdir spire_rest
fi
if [ ! -d spire_selfservice ]; then
   mkdir spire_selfservice
fi
if [ ! -d spire_selfserviceAdmin ]; then
   mkdir spire_selfserviceAdmin
fi
if [ ! -d spire_demarcation ]; then
   mkdir spire_demarcation
fi
if [ ! -d ext_sync ]; then
   mkdir ext_sync
fi
if [ ! -d spire_consumer ]; then
   mkdir spire_consumer
fi
if [ ! -d elasticSearchLogs ]; then
   mkdir elasticSearchLogs
   chmod 777 elasticSearchLogs
fi

if [ ! -d otherLogs ]; then
   mkdir otherLogs
fi

echo "Set Directory Permissions"
cd ..
#chmod -R +x ${LOGS_DIR}

chown -R spire:spire ${DATA_DIR}/GENKEY_INTERNAL
chown -R spire:spire ${LOGS_DIR}/spire_web
chown -R spire:spire ${LOGS_DIR}/adjudication_web
chown -R spire:spire ${LOGS_DIR}/spire_rest
chown -R spire:spire ${LOGS_DIR}/spire_selfservice
chown -R spire:spire ${LOGS_DIR}/spire_selfserviceAdmin
chown -R spire:spire ${LOGS_DIR}/spire_demarcation
chown -R spire:spire ${LOGS_DIR}/otherLogs
chown -R spire:spire ${LOGS_DIR}/adjudication_gateway
chown -R spire:spire ${LOGS_DIR}/ext_sync
chown -R spire:spire ${LOGS_DIR}/spire_consumer
chown -R elasticsearch:elasticsearch ${LOGS_DIR}/elasticSearchLogs
chown -R elasticsearch:elasticsearch ${DATA_DIR}/elasticSearchData

#TODO: delete following lines after testing
#chown -R spire:spire ${DATA_DIR}/${LOGS_DIR}/spire_rest/
#chown -R spire:spire ${DATA_DIR}/${LOGS_DIR}/spire_web/
#chown -R spire:spire ${DATA_DIR}/${LOGS_DIR}/adjudication_web/
#chown -R spire:spire ${DATA_DIR}/${LOGS_DIR}/adjudication_gateway/
#chown -R spire:spire ${DATA_DIR}/${LOGS_DIR}/ext_sync/
#chown -R spire:spire ${DATA_DIR}/${LOGS_DIR}/spire_consumer/
#chown -R elasticsearch:elasticsearch ${DATA_DIR}/${LOGS_DIR}/elasticSearchLogs/
#chown -R spire:spire ${DATA_DIR}/${LOGS_DIR}/otherLogs/
#chown -R elasticsearch:elasticsearch ${DATA_DIR}/elasticSearchData/
#chown -R spire:spire ${DATA_DIR}/GENKEY_INTERNAL/

