#!/bin/bash

#WORKINGFOLDER=`pwd`
#echo at start
#pwd
DEPLOYMENT_TYPE=$2
TENANT=$1

_Usage()
{
    echo "Usage: $0 [options] <deployment type>"
    echo "Options can be one or more of the following :"
        echo ""
        echo "<deployment type>      : 'multinode' or 'standalone'"
        echo "<display menu>         : 'menu"
        echo ""
        echo
    exit 1
}


_standlone_installation()
{
 echo " Getting Files Ready for Installation"
 ansible-playbook installation_play.yml --tags "standalone" -i ./ansible/inventory.txt  --private-key private_keys -vvv 
  #ansible-playbook installation_play.yml --tags "standalone"
}

_multi_node_installation(){

 echo " Getting Files Ready for Installation On Multinode system"
 ansible-playbook installation_play.yml -i ./ansible/inventory.txt --tags "spire,database,configuration" 

}

_spire_web_installation()
{
ansible-playbook installation_play.yml -i ./ansible/inventory.txt --tags "SpireWeb"
}

_adjudication_ui_installation()
{
ansible-playbook installation_play.yml -i ./ansible/inventory.txt --tags "adjudicationUI"
}

_spire_rest_installation()
{
ansible-playbook installation_play.yml -i ./ansible/inventory.txt  --tags "spirerest"
}

_installing_database()
{
ansible-playbook installation_play.yml --tags "database"
}

_genkey_product_setup()
{

while true
do
PS3="Please Select Install Option: "
options=("Install SPiRE Web" "Install ADJUDICATION UI" "Install SPiRE Rest" "Install PostgreSQL Database" "Quit")

echo "#############################################################################"
echo "########################     INSTALLATION MENU     ##########################"
echo "#############################################################################"
select opt in "${options[@]}"
do
  case $opt in 
	"Install SPiRE Web")
        _spire_web_installation
        break
               ;;
        "Install ADJUDICATION UI")
        _adjudication_ui_installation
        break
              ;;
        "Install SPiRE Rest")
        _spire_rest_installation
        break
             ;;
        "Install PostgreSQL Database")
        _installing_database
        break
             ;;
        "Quit")
           exit
             ;;
        *)
   echo "Invalid Option Selected."
             ;;
  esac
  done       
done
}


_starting_up_project()
{

case "${DEPLOYMENT_TYPE}" in
  "standalone")
 echo "Deploying Standalone Installer Setup"
_standlone_installation
;;
  "multinode")
 echo "Deploying Multinode Installer setup"
_multi_node_installation
;;

 "menu")
_genkey_product_setup
;;
	*)
echo "ERROR: Current deployment type (${DEPLOYMENT_TYPE}) unknown!"
_Usage
;;
esac

}

./pre_req.sh ${TENANT}
_starting_up_project

