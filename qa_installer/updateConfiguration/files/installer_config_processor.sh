touch installer_config.rawg
echo -n $1 >> installer_config.rawg
echo -n ' ' >> installer_config.rawg
echo -n $2 | sed 's/\//\\\\\//g' >> installer_config.rawg
echo -n ' ' >> installer_config.rawg
echo $3  >> installer_config.rawg

