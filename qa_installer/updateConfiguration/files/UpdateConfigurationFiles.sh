#!/bin/bash

sed 's/---,,,---,,,---,,,---//g' installer_config.csv > installer_config.raw
echo "" > installer_config.rawg
sed -i 's/Place Holder,,,Installation Value,,,File Location,,,Comments//g' installer_config.raw
sed -i 's/\ /___c____v_____b____/g' installer_config.raw
#sed -i 's/\//\\\//g' installer_config.raw
sed -i 's/,,,/ /g' installer_config.raw
cat installer_config.raw | xargs -l bash -c '`pwd`/installer_config_processor.sh $0 $1 $2 $3'
#sed -i 's/,,, ,,,/,,,/g' installer_config.rawg
sed -i 's/___c____v_____b____/\\\ /g' installer_config.rawg
#sed -i 's/,,,/ /g' installer_config.rawg


#cat installer_config.rawg | grep -v SSL | xargs -l bash -c 'mv $2 $2.as_at_$(date +%Y-%m-%d.%H_%M)'
cat installer_config.rawg | grep -v SSL | xargs -l bash -c 'cp $2.template $2'
cat installer_config.rawg | grep -v SSL | xargs -l bash -c 'sed -i "s/$0/$1/g" $2'
