#!/bin/bash
export TENANT=$1
export PROJECT_NAME=${TENANT,,}

SPIRE_WEB_PATH=./qa_installer/iTomcat
ADJUDICATION_UI_PATH=./qa_installer/iAdjudicationTomcat
SPIRE_REST_PATH=./qa_installer/iRestTomcat
ELASTICSEARCH_PATH=./qa_installer/elasticsearch
DATABASE_PATH=./qa_installer/database_setup
GENKEY_INTERNAL_PATH=./qa_installer/iGenkeyInternal
PREREQUISITE_PATH=./qa_installer/prerequisite
GENKEY_INTERNAL_PATH_VAR=$GENKEY_INTERNAL_PATH/vars/main.yml
SPIRE_WEB_VAR_PATH=$SPIRE_WEB_PATH/vars/main.yml
SPIRE_REST_VAR_PATH=$SPIRE_REST_PATH/vars/main.yml
ADJUDICATION_VAR_PATH=$ADJUDICATION_UI_PATH/vars/main.yml
DATABASE_VAR_PATH=$DATABASE_PATH/vars/main.yml
GENKEY_ENVIRONMENT_VAR=./qa_installer/config_files/prerequisite/genkey_env_var.sh
COMMON_VARIABLE_FILE=./qa_installer/config_files/common_vars
PREREQUISITE_VAR_PATH=$PREREQUISITE_PATH/vars/main.yml
echo "======> Setting up Environment"
#SPIRE_WAR_FILE=$(ls config_files/genkey_services/war_files/spire-*.war)
#ADJUDICATION_WAR_FILE=$(ls config_files/genkey_services/war_files/adjudication-web-${PROJECT_NAME}*.war)
#SPIRE_REST_WAR_FILE=$(ls config_files/genkey_services/war_files/${PROJECT_NAME}-rest-server-*.war)
APACHE_VERSION=$(ls -1 ./qa_installer/config_files/genkey_services/tomcat/apache-* | sed -e 's/\.tar.gz$//')
#SPIRE_WAR_VALUE=$(basename $SPIRE_WAR_FILE)
#ADJUDICATION_WAR_VALUE=$(basename $ADJUDICATION_WAR_FILE)
#SPIRE_REST_WAR_VALUE=$(basename $SPIRE_REST_WAR_FILE)
APACHE_VERSION_VALUE=$(basename $APACHE_VERSION)

function _iDatabase_pre_setup(){
echo "===> Setting up configuration files for database"
rm -rf ${DATABASE_PATH}/files/*
cp -r ./qa_installer/config_files/db_files/* ${DATABASE_PATH}/files
}

function _iGenkey_internal_pre_setup(){
echo "==> Setting up Genkey_internal file"
#if [ -f ${GENKEY_INTERNAL_PATH}/files/* ]; then

rm -rf ${GENKEY_INTERNAL_PATH}/files/*

#fi

cp -r ./qa_installer/config_files/genkey_internal_files/* ${GENKEY_INTERNAL_PATH}/files

}

function _iElasticsearch_pre-setup(){
echo "===> Pre-Setting up Elasticsearch"
#if [ -f ${ELASTICSEARCH_PATH}/files/* ]; then

rm -rf ${ELASTICSEARCH_PATH}/files/*

#fi

cp -r ./qa_installer/config_files/elasticsearch ${ELASTICSEARCH_PATH}/files

}

function _prerequisite(){
echo "==> transferring prerequiste files"
#if [ -f ${PREREQUISITE_PATH}/files/* ]; then

rm -rf ${PREREQUISITE_PATH}/files/*

#fi

cp -r ./qa_installer/config_files/prerequisite/* ${PREREQUISITE_PATH}/files
}

function _pre-setup_genkey_service(){
echo "==> transferring tomcat files"
rm -rf ${SPIRE_WEB_PATH}/files/*
rm -rf ${SPIRE_REST_PATH}/files/*
rm -rf ${ADJUDICATION_UI_PATH}/files/*
GENKEY_SERVICES=./qa_installer/config_files/genkey_services
cp -r ${GENKEY_SERVICES}/* ${SPIRE_WEB_PATH}/files
cp -r ${GENKEY_SERVICES}/* ${SPIRE_REST_PATH}/files
cp -r ${GENKEY_SERVICES}/* ${ADJUDICATION_UI_PATH}/files
}

function _replacing_place_holder(){

if [ -f $COMMON_VARIABLE_FILE ]; then
   
   rm -rf $COMMON_VARIABLE_FILE

fi
 
cp ${COMMON_VARIABLE_FILE}.tpl $COMMON_VARIABLE_FILE 

sed -i -e 's/'"TENANT_NAME"'/'"$TENANT"'/g' $COMMON_VARIABLE_FILE
sed -i -e 's/'"LC_TENANT"'/'"${PROJECT_NAME}"'/g' $COMMON_VARIABLE_FILE
sed -i -e 's/'"TENANT_NAME"'/'"$TENANT"'/g' $GENKEY_ENVIRONMENT_VAR
cp $GENKEY_ENVIRONMENT_VAR ${PREREQUISITE_PATH}/files/

#Replacing apache tomcat
 sed -i -e 's/'"APACHE_TOMCAT_VERSION"'/'"$APACHE_VERSION_VALUE"'/g' $COMMON_VARIABLE_FILE

#Replace Spire_war_file
 #sed -i -e 's/'"SPIRE_WEB_WAR_FILE"'/'"$SPIRE_WAR_VALUE"'/g' $COMMON_VARIABLE_FILE

#Replacing Spire_rest_file
 #sed -i -e 's/'"SPIRE_REST_WAR_FILE"'/'"$SPIRE_REST_WAR_VALUE"'/g' $COMMON_VARIABLE_FILE

#Replacing Adjudication_war_file
 #sed -i -e 's/'"ADJUDICATION_WAR_FILE"'/'"$ADJUDICATION_WAR_VALUE"'/g' $COMMON_VARIABLE_FILE

cat $COMMON_VARIABLE_FILE | tee $GENKEY_INTERNAL_PATH_VAR $SPIRE_WEB_VAR_PATH $SPIRE_REST_VAR_PATH $ADJUDICATION_VAR_PATH $PREREQUISITE_VAR_PATH > /dev/null
}

_iDatabase_pre_setup
_iGenkey_internal_pre_setup
_iElasticsearch_pre-setup
_prerequisite
_pre-setup_genkey_service
_replacing_place_holder
