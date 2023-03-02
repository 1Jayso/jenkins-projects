#!/bin/bash

echo "Mounting GENKEY_INTERNAL Folder"
mount nfsServerIP:/home/genkey_installer/iGenkeyInternal/files/genkey_internal/ /data/GENKEY_INTERNAL/

## add exports entries
echo "Adding exports entries"
cat << EOF >> /etc/fstab

nfsServerIP:/home/genkey_installer/iGenkeyInternal/files/genkey_internal/ /data/GENKEY_INTERNAL/					nfs defaults 0 0
EOF
echo "Export Entries Added"

