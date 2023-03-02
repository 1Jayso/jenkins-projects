#!/bin/sh
# Creating Symlinks for Logs

DATA_DIR=/data
LOGS_DIR=/home/logFiles

echo "Set Directory Ownership"

echo "Creating symlinks for Spire Web"
cd /usr/share/tomcat_spire
if [ -d logs ]; then
  cd logs
  cp * ${LOGS_DIR}/spire_web
  cd ..
  rm -rf logs
fi
ln -sf ${LOGS_DIR}/spire_web/ logs
chown -R spire:spire logs
cd ..
echo "Done Creating symlinks for Spire Web"

echo "Creating symlinks for Spire REST"
cd /usr/share/tomcat_rest
if [ -d logs ]; then
  cd logs
  cp * ${LOGS_DIR}/spire_rest
  cd ..
  rm -rf logs
fi
ln -sf ${LOGS_DIR}/spire_rest/ logs
chown -R spire:spire logs
cd ..
echo "Done Creating symlinks for Spire Rest"

echo "Creating symlinks for Self Service"
cd /usr/share/tomcat_selfservice
if [ -d logs ]; then
  cd logs
  cp * ${LOGS_DIR}/spire_selfservice
  cd ..
  rm -rf logs
fi
ln -sf ${LOGS_DIR}/spire_selfservice/ logs
chown -R spire:spire logs
cd ..
echo "Done Creating symlinks for Self Service"

echo "Creating symlinks for Self Service Admin"
cd /usr/share/tomcat_selfserviceAdmin
if [ -d logs ]; then
  cd logs
  cp * ${LOGS_DIR}/spire_selfserviceAdmin
  cd ..
  rm -rf logs
fi
ln -sf ${LOGS_DIR}/spire_selfserviceAdmin/ logs
chown -R spire:spire logs
cd ..
echo "Done Creating symlinks for Self Service Admin"


echo "Creating symlinks for Spire Demarcation"
cd /usr/share/tomcat_demarcation
if [ -d logs ]; then
  cd logs
  cp * ${LOGS_DIR}/spire_demarcation
  cd ..
  rm -rf logs
fi
ln -sf ${LOGS_DIR}/spire_demarcation/ logs
chown -R spire:spire logs
cd ..
echo "Done Creating symlinks for Spire Demarcation"


echo "Creating symlinks for Adjudication Web"
cd /usr/share/tomcat_adjudication
if [ -d logs ]; then
  cd logs
  cp * ${LOGS_DIR}/adjudication_web
  cd ..
  rm -rf logs
fi
ln -sf ${LOGS_DIR}/adjudication_web/ logs
chown -R spire:spire logs
cd ..
echo "Done Creating symlinks for Adjudication Web"

cd /var/log
if [ -f adjudication_gateway.log ]; then
	echo "Moving Adjudication Gateway log from /var/log"
	mv adjudication_gateway.log ${LOGS_DIR}/adjudication_gateway/
fi

#if [ -f spire_consumer.log ]; then
#	echo "Moving Spire Consumer log from /var/log"
#	mv spire_consumer.log ${DATA_DIR}/${LOGS_DIR}/spire_consumer/
#fi

if [ -f spire_extsync.log ]; then 
	echo "Moving Spire ExtSync log from /var/log"
	mv spire_extsync.log ${LOGS_DIR}/ext_sync/
fi

echo "Done"

chown -R spire:spire ${LOGS_DIR}/



